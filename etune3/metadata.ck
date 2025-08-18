@import "../metadata.ck"
@import "../tuning.ck"
@import {"./voice1score.ck", "./voice2score.ck", "./voice3score.ck", "./voice4score.ck"}


public class Etune3Metadata extends ScoreMetadata {
    fun @construct() {
        4 => this.numVoices;
        128. => this.tempo;

        // Set voice scores
        this.voiceScores << new Etune3Voice1Score();
        this.voiceScores << new Etune3Voice2Score();
        this.voiceScores << new Etune3Voice3Score();
        this.voiceScores << new Etune3Voice4Score();

        // Set tempo changes
        this.setTempoChange(110., 4);
        this.setTempoChange(128., 5);
        this.setTempoChange(78., 10);
        this.setTempoChange(128., 11);
        this.setTempoChange(90., 12);

        // Set tunings
        12 => int maxEDO;
        for (1 => int edoNum; edoNum <= maxEDO; edoNum++) {
            this.setTuning(new EDO(edoNum), 1, edoNum);
            this.setTuning(new EDO(edoNum), 2, edoNum);
            this.setTuning(new EDO(edoNum), 3, edoNum);
            this.setTuning(new EDO(edoNum), 4, edoNum);
        }
    }
}
