@import "../score.ck"


public class Etune2Metadata extends ScoreMetadata {
    fun @construct() {
        2 => this.numVoices;
        138. => this.tempo;
    }
}
