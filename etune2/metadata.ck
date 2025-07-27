@import "../metadata.ck"


public class Etune2Metadata extends ScoreMetadata {
    fun @construct() {
        4 => this.numVoices;
        90. => this.tempo;

        [
            2,
            3,
            4,
        ] @=> this.excludedVoices;
    }
}
