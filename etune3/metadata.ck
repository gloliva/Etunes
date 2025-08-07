@import "../metadata.ck"
@import "../tuning.ck"
@import {"./voice1score.ck", "./voice2score.ck", "./voice3score.ck", "./voice4score.ck"}


public class Etune3Metadata extends ScoreMetadata {
    fun @construct() {
        4 => this.numVoices;
        128. => this.tempo;

        // [
        //     -1,
        //     // 1,
        //     // 2
        //     3,
        //     4,
        // ] @=> this.excludedVoices;

        [
            -1,
        ] @=> this.excludedScenes;

        // Set voice scores
        this.voiceScores << new Etune3Voice1Score();
        this.voiceScores << new Etune3Voice2Score();
        this.voiceScores << new Etune3Voice3Score();
        this.voiceScores << new Etune3Voice4Score();

        // Set tunings
        5 => int numScenes;
        for (1 => int edoNum; edoNum <= numScenes; edoNum++) {
            this.setTuning(new EDO(edoNum), 1, edoNum);
            this.setTuning(new EDO(edoNum), 2, edoNum);
            this.setTuning(new EDO(edoNum), 3, edoNum);
            this.setTuning(new EDO(edoNum), 4, edoNum);
        }
    }
}
