/*
    Orchestrator handles creation and syncing of voices
*/

// Imports
@import "clock.ck"
@import {"etune2/metadata.ck", "etune2/voice1score.ck", "etune2/voice2score.ck"}
@import "metadata.ck"
@import "notation.ck"
@import "tuning.ck"
@import "voice.ck"


public class Orchestrator {
    // CV handling
    Step voicePitchCV[];
    Step gateCV[];
    Envelope voiceEnv[];

    // Opus metadata
    ScoreMetadata @ metadata;

    // Run state
    int voiceDone[];

    fun static ScoreMetadata getScoreMetadata(int opusIdx) {
        ScoreMetadata @ metadata;

        if (opusIdx == 1) {

        } else if (opusIdx == 2) {
            new Etune2Metadata() @=> metadata;
        } else if (opusIdx == 3) {

        } else {
            cherr <= "ERROR: Invalid Opus number: " <= opusIdx <= IO.nl();
            me.exit();
        }

        return metadata;
    }

    fun @construct(ScoreMetadata metadata) {
        metadata @=> this.metadata;

        Step voicePitchCV[this.metadata.numVoices];
        Step gateCV[this.metadata.numVoices];
        Envelope voiceEnv[this.metadata.numVoices];
        int voiceDone[this.metadata.numVoices];

        // Assign lists to this instance
        voicePitchCV @=> this.voicePitchCV;
        gateCV @=> this.gateCV;
        voiceEnv @=> this.voiceEnv;
        voiceDone @=> this.voiceDone;

        // Initialize Step UGens and connect to DAC
        for (int idx; idx < this.metadata.numVoices; idx++) {
            // Init Step Ugen
            0. => this.voicePitchCV[idx].next;
            1. => this.gateCV[idx].next;

            // Chain to DAC
            this.voicePitchCV[idx] => dac.chan(idx);
            this.gateCV[idx] => this.voiceEnv[idx] => dac.chan(idx + this.metadata.numVoices);
        }
    }

    fun void playVoice(Voice voice) {
        voice.play();
        1 => this.voiceDone[voice.voiceIdx];
    }

    fun Score[] getVoiceScores(int opusIdx) {
        Score voiceScores[0];

        if (opusIdx == 1) {

        } else if (opusIdx == 2) {
            Etune2Voice1Score voice1Score();
            Etune2Voice2Score voice2Score();

            voiceScores << voice1Score;
            voiceScores << voice2Score;
        } else if (opusIdx == 3) {

        } else {
            cherr <= "ERROR: Invalid Opus number: " <= opusIdx <= IO.nl();
            me.exit();
        }

        return voiceScores;
    }

    fun void run(int opusIdx, Clock clock) {
        // Get scores based on opus number
        this.getVoiceScores(opusIdx) @=> Score voiceScores[];

        // Initialize voices
        for (int voiceIdx; voiceIdx < this.voicePitchCV.size(); voiceIdx++) {
            // Check if voice is disabled
            if (this.metadata.voiceExcluded(voiceIdx + 1)) {
                chout <= "Skipping voice " <= voiceIdx + 1 <= "..." <= IO.nl();
                1 => this.voiceDone[voiceIdx];
                continue;
            }

            Voice voice(voiceIdx, this.voicePitchCV[voiceIdx], this.voiceEnv[voiceIdx]);

            // Sync voice to main clock
            voice.setClock(clock);

            // Set voice scenes
            voiceScores[voiceIdx] @=> Score activeScore;
            voice.setScenes(activeScore.scenes);
            activeScore.printDur(clock);

            // TODO: remove this when done testing
            EDO edo12(12);
            voice.setTuning(edo12);

            // Run voice
            spork ~ this.playVoice(voice);
        }

        // Wait until all voices are done
        now => time start;

        while(true) {
            1 => int done;

            // Check status of all voices
            for (int voiceStatus : this.voiceDone)
                voiceStatus && done => done;

            // If all voices have completed, exit
            if (done) break;

            1::second => now;
        }

        // Print out total length
        now - start => dur end;
        chout <= "Length of piece: " <= (end / 1::second) <= " seconds." <= IO.nl();
    }
}
