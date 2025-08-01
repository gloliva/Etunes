@import "../notation.ck"


class Scene1 extends Scene {
    fun @construct() {
        [
            new Note("0|o0|a0.70", "s", 5::ms, 1::ms),
            new Note("0|o0|a0.65", "s", 1::ms, 1::ms),
            new Note("0|o0|a0.5", "s", 1::ms, 1::ms),
            new Note("0|o0|a0.65", "s", 1::ms, 5::ms),
        ] @=> Note seq1A[];

        [
            new Note("10|o-1|a0.70", "s", 5::ms, 1::ms),
            new Note("10|o-1|a0.65", "s", 1::ms, 1::ms),
            new Note("10|o-1|a0.5", "s", 1::ms, 1::ms),
            new Note("10|o-1|a0.65", "s", 1::ms, 5::ms),
        ] @=> Note seq1B[];

        [
            new Note("11|o-1|a0.70", "s", 5::ms, 1::ms),
            new Note("11|o-1|a0.65", "s", 1::ms, 1::ms),
            new Note("11|o-1|a0.5", "s", 1::ms, 1::ms),
            new Note("11|o-1|a0.65", "s", 1::ms, 5::ms),
        ] @=> Note seq1C[];

        [
            new Note("10.5|o-1|a0.70", "s", 5::ms, 1::ms),
            new Note("10.5|o-1|a0.65", "s", 1::ms, 1::ms),
            new Note("10.5|o-1|a0.5", "s", 1::ms, 1::ms),
            new Note("10.5|o-1|a0.65", "s", 1::ms, 5::ms),

            new Note("11|o-1|a0.70", "s", 5::ms, 1::ms),
            new Note("11|o-1|a0.65", "s", 1::ms, 1::ms),
            new Note("11.5|o-1|a0.5", "s", 1::ms, 1::ms),
            new Note("11.5|o-1|a0.65", "s", 1::ms, 5::ms),
        ] @=> Note seq1D[];

        // Add sequences to scene
        this.setSeqs(
            [
                new Sequence(seq1A, 16),
                new Sequence(seq1B, 15),
                new Sequence(seq1C, 1),
                new Sequence(seq1A, 16),
                new Sequence(seq1B, 14),
                new Sequence(seq1D, 1),
                new Sequence(seq1A, 16),
                new Sequence(seq1B, 15),
                new Sequence(seq1C, 1),
                new Sequence(seq1A, 16),
                new Sequence(seq1B, 14),
                new Sequence(seq1D, 1),
            ]
        );
    }
}


public class Etune1Voice1Score extends Score {
    fun @construct() {
        1 => this.voiceNum;

        // Load scenes
        this.scenes << new Scene1();
    }
}
