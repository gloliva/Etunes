@import "../metadata.ck"
@import "../tuning.ck"
@import {"./voice1score.ck", "./voice2score.ck", "./voice3score.ck", "./voice4score.ck"}


public class Etune1Metadata extends ScoreMetadata {
    fun @construct() {
        4 => this.numVoices;
        110. => this.tempo;

        // Set voice scores
        this.voiceScores << new Etune1Voice1Score();
        this.voiceScores << new Etune1Voice2Score();
        this.voiceScores << new Etune1Voice3Score();
        this.voiceScores << new Etune1Voice4Score();

        // Set tempo changes
        this.setTempoChange(82., 3);
        this.setTempoChange(110., 4);

        // Set tunings
        this.setTuning(new EDO(12), 1, 0);
        this.setTuning(new EDO(12), 2, 0);
        this.setTuning(new EDO(12), 3, 0);
        this.setTuning(new EDO(12), 4, 0);
    }
}
