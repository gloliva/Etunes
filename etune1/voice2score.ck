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

        [
            new Note("0|o1|a0.70", "te", 25::ms, 25::ms),
            new Note("10.5|o0|a0.65", "te", 25::ms, 25::ms),
            new Note("11.2|o0|a0.5", "te", 25::ms, 25::ms),
        ] @=> Note seq1D[];

        [
            new Note("0|o1|a0.70", "te", 25::ms, 25::ms),
            new Note("10.3|o0|a0.65", "te", 25::ms, 25::ms),
            new Note("11.4|o0|a0.5", "te", 25::ms, 25::ms),
        ] @=> Note seq1E[];

        [
            new Note("0|o1|a0.70", "te", 25::ms, 25::ms),
            new Note("9.8|o0|a0.65", "te", 25::ms, 25::ms),
            new Note("11.8|o0|a0.5", "te", 25::ms, 25::ms),
        ] @=> Note seq1F[];

        // Add sequences to scene
        this.setSeqs(
            [
                new Sequence(seq1A, 64),
                new Sequence(seq1B, 16),
                new Sequence(seq1C, 16),
                new Sequence(seq1A, 16),
                new Sequence(seq1D, 14),
                new Sequence(seq1E, 1),
                new Sequence(seq1F, 1),
            ]
        );
    }
}


class Scene2 extends Scene {
    fun @construct() {
        [
            new RestNote("w"),
        ] @=> Note restMeasure[];

        [
            new Note("0|o1|a0.70", "te", 25::ms, 25::ms),
            new Note("10.1|o0|a0.65", "te", 25::ms, 25::ms),
            new Note("11.5|o0|a0.5", "te", 25::ms, 25::ms),
        ] @=> Note seq1A[];

        [
            new Note("0|o1|a0.60", "te", 25::ms, 25::ms),
            new Note("9.8|o0|a0.55", "te", 25::ms, 25::ms),
            new Note("11.1|o0|a0.5", "te", 25::ms, 25::ms),
        ] @=> Note seq1B[];

        [
            new Note("0|o1|a0.50", "te", 25::ms, 25::ms),
            new Note("9.6|o0|a0.45", "te", 25::ms, 25::ms),
            new Note("10.8|o0|a0.4", "te", 25::ms, 25::ms),
        ] @=> Note seq1C[];

        [
            new Note("0|o1|a0.40", "te", 25::ms, 25::ms),
            new Note("9.3|o0|a0.35", "te", 25::ms, 25::ms),
            new Note("10.5|o0|a0.3", "te", 25::ms, 25::ms),
        ] @=> Note seq1D[];

        [
            new Note("0|o1|a0.30", "te", 25::ms, 25::ms),
            new Note("9.1|o0|a0.25", "te", 25::ms, 25::ms),
            new Note("10.2|o0|a0.2", "te", 25::ms, 25::ms),
        ] @=> Note seq1E[];

        // Add sequences to scene
        this.setSeqs(
            [
                new Sequence(seq1A, 4),
                new Sequence(seq1B, 4),
                new Sequence(seq1C, 4),
                new Sequence(seq1D, 4),
                new Sequence(seq1E, 4),
            ]
        );
    }
}


public class Etune1Voice2Score extends Score {
    fun @construct() {
        2 => this.voiceNum;

        // Load scenes
        this.scenes << new Scene1();
        this.scenes << new Scene2();
    }
}
