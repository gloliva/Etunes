@import "../metadata.ck"
@import "../tuning.ck"


public class Etune2Metadata extends ScoreMetadata {
    fun @construct() {
        4 => this.numVoices;
        90. => this.tempo;

        // Exclusion lists
        [
            // 2,
            // 3,
            // 4,
            5,
        ] @=> this.excludedVoices;

        // Set tunings
        // Voice 1 and 2 -- EDO 22
        this.setTuning(new EDO(22), 1, 1);
        this.setTuning(new EDO(22), 2, 1);

        // Voice 3 and 4 -- EDO 7
        this.setTuning(new EDO(7), 3, 1);
        this.setTuning(new EDO(7), 4, 1);
    }
}
