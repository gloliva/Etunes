@import "../metadata.ck"
@import "../tuning.ck"
@import {"./voice1score.ck", "./voice2score.ck", "./voice3score.ck", "./voice4score.ck"}


public class Etune2Metadata extends ScoreMetadata {
    fun @construct() {
        4 => this.numVoices;
        90. => this.tempo;

        // Set voice scores
        this.voiceScores << new Etune2Voice1Score();
        this.voiceScores << new Etune2Voice2Score();
        this.voiceScores << new Etune2Voice3Score();
        this.voiceScores << new Etune2Voice4Score();

        // Set tunings
        // Voice 1 and 2 -- EDO 22
        this.setTuning(new EDO(22), 1, 0);
        this.setTuning(new EDO(22), 2, 0);

        // Voice 3 and 4 -- EDO 7
        this.setTuning(new EDO(7), 3, 0);
        this.setTuning(new EDO(7), 4, 0);
    }
}
