/*
    Voice is an "instrument" or "part" of a piece that plays a monophonic melodic line.
*/

// Imports
@import "clock.ck"
@import "metadata.ck"
@import "notation.ck"
@import "tuning.ck"


public class Voice {
    // Pitch Handling
    Step @ voicePitchCV;
    -1 => int voiceIdx;
    -1 => int voiceNum;

    // Amp envelope
    Envelope @ voiceEnv;

    // Tempo sync
    Clock @ clock;

    // Score metadata
    ScoreMetadata @ metadata;

    // Tuning
    Tuning @ tuning;

    // Scenes
    Scene scenes[];

    fun @construct(int voiceIdx, Step voicePitchCV, Envelope voiceEnv) {
        voiceIdx => this.voiceIdx;
        voiceIdx + 1 => this.voiceNum;
        voicePitchCV @=> this.voicePitchCV;
        voiceEnv @=> this.voiceEnv;
    }

    fun void setClock(Clock clock) {
        clock @=> this.clock;
    }

    fun void setScoreMetadata(ScoreMetadata metadata) {
        metadata @=> this.metadata;
    }

    fun void setTuning(Tuning tuning) {
        tuning @=> this.tuning;
    }

    fun void setScenes(Scene scenes[]) {
        scenes @=> this.scenes;
    }

    fun void play() {
        if (this.clock == null || this.scenes == null) {
            cherr <= "ERROR: Need to set clock and scenes for Voice Num: " <= this.voiceNum <= IO.nl();
            cherr <= "Terminating early." <= IO.nl();
            return;
        }

        // Loop through scenes
        for (int sceneIdx; sceneIdx < this.scenes.size(); sceneIdx++) {
            // Check if scene is excluded
            if (this.metadata.sceneExcluded(sceneIdx + 1)) {
                chout <= "Skipping scene " <= sceneIdx + 1 <= "..." <= IO.nl();
                continue;
            }

            chout <= "Playing Voice " <= this.voiceNum <= " Scene " <= sceneIdx + 1 <= IO.nl();
            this.scenes[sceneIdx] @=> Scene activeScene;

            // Set tuning
            if (this.metadata.hasTuning(this.voiceNum, sceneIdx + 1)) {
                this.metadata.getTuning(this.voiceNum, sceneIdx + 1) @=> Tuning activeTuning;
                chout <= "    Changing tuning to " <= activeTuning.name <= IO.nl();
                this.setTuning(activeTuning);
            }

            if (this.tuning == null) {
                cherr <= "ERROR: Need to set Tuning for Voice Num: " <= this.voiceNum <= IO.nl();
                cherr <= "Terminating early." <= IO.nl();
                return;
            }

            // Loop through sequences
            for (Sequence activeSequence : activeScene.seqs) {

                repeat (activeSequence.repeats) {
                    // Set pitch and envelope values for active note
                    for (Note note : activeSequence.notes) {
                        this.tuning.cv(note.degree, note.octaveDiff) => float nextPitchCV;
                        nextPitchCV => this.voicePitchCV.next;

                        // Trigger Note
                        this.triggerEnv(note);
                    }
                }
            }
        }
    }

    fun void triggerEnv(Note note) {
        // Ramp up
        this.voiceEnv.ramp(note.attack, note.amp);
        note.attack => now;

        // Sustain
        (this.clock.quarterNote * note.beatValue) - note.attack - note.release => now;

        // Ramp down
        this.voiceEnv.ramp(note.release, 0.);
        note.release => now;
    }
}
