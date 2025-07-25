/*
    Voice is an "instrument" or "part" of a piece that plays a monophonic melodic line.
*/

// Imports
@import "clock.ck"
@import "notation.ck"
@import "tuning.ck"


public class Voice {
    // Pitch Handling
    Step @ voicePitchCV;
    -1 => int voiceIdx;

    // Amp envelope
    Envelope @ voiceEnv;

    // Tempo sync
    Clock @ clock;

    // Tuning
    Tuning @ tuning;

    // Scenes
    Scene scenes[];

    fun @construct(int voiceIdx, Step voicePitchCV, Envelope voiceEnv) {
        voiceIdx => this.voiceIdx;
        voicePitchCV @=> this.voicePitchCV;
        voiceEnv @=> this.voiceEnv;
    }

    fun void setClock(Clock clock) {
        clock @=> this.clock;
    }

    fun void setTuning(Tuning tuning) {
        tuning @=> this.tuning;
    }

    fun void setScenes(Scene scenes[]) {
        scenes @=> this.scenes;
    }

    fun void play() {
        if (this.clock == null || this.tuning == null || this.scenes == null) {
            cherr <= "ERROR: Need to set clock, tuning, and scenes for Voice Num: " <= this.voiceIdx + 1 <= IO.nl();
            cherr <= "Terminating early." <= IO.nl();
            return;
        }

        // Loop through scenes
        for (int sceneIdx; sceneIdx < this.scenes.size(); sceneIdx++) {
            chout <= "Voice " <= this.voiceIdx + 1 <= " Scene " <= sceneIdx <= IO.nl();
            this.scenes[sceneIdx] @=> Scene activeScene;

            // Loop through sequences
            for (Sequence activeSequence : activeScene.seqs) {

                repeat (activeSequence.repeats) {
                    // Set pitch and envelope values for active note
                    for (Note note : activeSequence.notes) {
                        this.tuning.cv(note.degree, note.octaveDiff) => float nextPitchCV;
                        nextPitchCV => this.voicePitchCV.next;

                        // Trigger Note
                        spork ~ this.triggerEnv(note);
                        clock.quarterNote * note.beatValue => now;
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
        (clock.quarterNote * note.beatValue) - note.attack - note.release => now;

        // Ramp down
        this.voiceEnv.ramp(note.release, 0.);
        note.release => now;
    }
}
