@import "../metadata.ck"
@import "../tuning.ck"


public class Etune2Metadata extends ScoreMetadata {
    fun @construct() {
        4 => this.numVoices;
        90. => this.tempo;

        // Set tunings
        // Voice 1 and 2 -- EDO 22
        this.setTuning(new EDO(22), 1, 0);
        this.setTuning(new EDO(22), 2, 0);

        // Voice 3 and 4 -- EDO 7
        this.setTuning(new EDO(7), 3, 0);
        this.setTuning(new EDO(7), 4, 0);
    }
}
