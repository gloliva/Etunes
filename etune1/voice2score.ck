@import "../notation.ck"


class Scene1 extends Scene {
    fun @construct() {
        [
            new Note("0|o1|a0.70", "te", 25::ms, 25::ms),
            new Note("0|o1|a0.65", "te", 25::ms, 25::ms),
            new Note("0|o1|a0.5", "te", 25::ms, 25::ms),
        ] @=> Note seq1A[];

        [
            new Note("11|o0|a0.70", "te", 25::ms, 25::ms),
            new Note("0|o1|a0.65", "te", 25::ms, 25::ms),
            new Note("10|o0|a0.5", "te", 25::ms, 25::ms),
        ] @=> Note seq1B[];

        [
            new Note("10|o0|a0.70", "te", 25::ms, 25::ms),
            new Note("11.5|o0|a0.65", "te", 25::ms, 25::ms),
            new Note("0|o1|a0.5", "te", 25::ms, 25::ms),
        ] @=> Note seq1C[];

        // Add sequences to scene
        this.setSeqs(
            [
                new Sequence(seq1A, 64),
                new Sequence(seq1B, 16),
                new Sequence(seq1C, 16),
                new Sequence(seq1A, 32),
            ]
        );
    }
}


public class Etune1Voice2Score extends Score {
    fun @construct() {
        2 => this.voiceNum;

        // Load scenes
        this.scenes << new Scene1();
    }
}
