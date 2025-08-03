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
            new Note("0|o1|a0.65", "te", 25::ms, 25::ms),
            new Note("9.8|o0|a0.6", "te", 25::ms, 25::ms),
            new Note("11.1|o0|a0.5", "te", 25::ms, 25::ms),
        ] @=> Note seq1B[];

        [
            new Note("0|o1|a0.6", "te", 25::ms, 25::ms),
            new Note("9.6|o0|a0.5", "te", 25::ms, 25::ms),
            new Note("10.8|o0|a0.45", "te", 25::ms, 25::ms),
        ] @=> Note seq1C[];

        [
            new Note("0|o1|a0.55", "te", 25::ms, 25::ms),
            new Note("9.3|o0|a0.45", "te", 25::ms, 25::ms),
            new Note("10.5|o0|a0.35", "te", 25::ms, 25::ms),
        ] @=> Note seq1D[];

        [
            new Note("0|o1|a0.4", "te", 25::ms, 25::ms),
            new Note("9.1|o0|a0.35", "te", 25::ms, 25::ms),
            new Note("10.2|o0|a0.2", "te", 25::ms, 25::ms),
        ] @=> Note seq1E[];

        [
            new Note("0|o1|a0.70", "te", 25::ms, 25::ms),
            new Note("8.7|o0|a0.65", "te", 25::ms, 25::ms),
            new Note("10.5|o0|a0.5", "te", 25::ms, 25::ms),
        ] @=> Note seq2A[];

        [
            new Note("0|o1|a0.66", "te", 25::ms, 25::ms),
            new Note("9.1|o0|a0.55", "te", 25::ms, 25::ms),
            new Note("10.8|o0|a0.5", "te", 25::ms, 25::ms),
        ] @=> Note seq2B[];

        [
            new Note("0|o1|a0.55", "te", 25::ms, 25::ms),
            new Note("9.6|o0|a0.45", "te", 25::ms, 25::ms),
            new Note("10.5|o0|a0.4", "te", 25::ms, 25::ms),
        ] @=> Note seq2C[];

        [
            new Note("0|o1|a0.45", "te", 25::ms, 25::ms),
            new Note("9.3|o0|a0.35", "te", 25::ms, 25::ms),
            new Note("10.5|o0|a0.3", "te", 25::ms, 25::ms),
        ] @=> Note seq2D[];

        [
            new Note("0|o1|a0.35", "te", 25::ms, 25::ms),
            new Note("9.1|o0|a0.25", "te", 25::ms, 25::ms),
            new Note("10.2|o0|a0.2", "te", 25::ms, 25::ms),
        ] @=> Note seq2E[];

        [
            new Note("0|o1|a0.70", "te", 25::ms, 25::ms),
            new Note("8.1|o0|a0.65", "te", 25::ms, 25::ms),
            new Note("9.5|o0|a0.5", "te", 25::ms, 25::ms),
        ] @=> Note seq3A[];

        [
            new Note("0|o1|a0.60", "te", 25::ms, 25::ms),
            new Note("8.3|o0|a0.55", "te", 25::ms, 25::ms),
            new Note("9.8|o0|a0.5", "te", 25::ms, 25::ms),
        ] @=> Note seq3B[];

        [
            new Note("0|o1|a0.50", "te", 25::ms, 25::ms),
            new Note("8.6|o0|a0.45", "te", 25::ms, 25::ms),
            new Note("10.1|o0|a0.4", "te", 25::ms, 25::ms),
        ] @=> Note seq3C[];

        [
            new Note("0|o1|a0.40", "te", 25::ms, 25::ms),
            new Note("8.3|o0|a0.35", "te", 25::ms, 25::ms),
            new Note("10.5|o0|a0.3", "te", 25::ms, 25::ms),
        ] @=> Note seq3D[];

        [
            new Note("0|o1|a0.30", "te", 25::ms, 25::ms),
            new Note("8.6|o0|a0.25", "te", 25::ms, 25::ms),
            new Note("9.8|o0|a0.2", "te", 25::ms, 25::ms),
        ] @=> Note seq3E[];

        [
            new Note("0|o1|a0.70", "te", 25::ms, 25::ms),
            new Note("9.1|o0|a0.65", "te", 25::ms, 25::ms),
            new Note("11.5|o0|a0.5", "te", 25::ms, 25::ms),
        ] @=> Note seq4A[];

        [
            new Note("0|o1|a0.70", "te", 25::ms, 25::ms),
            new Note("8.6|o0|a0.65", "te", 25::ms, 25::ms),
            new Note("11.5|o0|a0.5", "te", 25::ms, 25::ms),
        ] @=> Note seq4B[];

        [
            new Note("0|o1|a0.70", "te", 25::ms, 25::ms),
            new Note("8.1|o0|a0.65", "te", 25::ms, 25::ms),
            new Note("11.5|o0|a0.5", "te", 25::ms, 25::ms),
        ] @=> Note seq4C[];

        [
            new Note("0|o1|a0.70", "te", 25::ms, 25::ms),
            new Note("7.7|o0|a0.65", "te", 25::ms, 25::ms),
            new Note("11.5|o0|a0.5", "te", 25::ms, 25::ms),
        ] @=> Note seq4D[];

        [
            new Note("0|o1|a0.70", "te", 25::ms, 25::ms),
            new Note("7.0|o0|a0.65", "te", 25::ms, 25::ms),
            new Note("0|o1|a0.5", "te", 25::ms, 25::ms),
        ] @=> Note seq4E[];

        // Add sequences to scene
        this.setSeqs(
            [
                new Sequence(seq1A, 4),
                new Sequence(seq1B, 4),
                new Sequence(seq1C, 4),
                new Sequence(seq1D, 4),
                new Sequence(seq1E, 4),

                new Sequence(restMeasure, 2),

                new Sequence(seq1E, 2),
                new Sequence(seq1D, 2),
                new Sequence(seq1C, 2),
                new Sequence(seq1B, 2),
                new Sequence(seq1A, 4),
                new Sequence(seq1B, 2),
                new Sequence(seq1C, 2),
                new Sequence(seq1D, 2),
                new Sequence(seq1E, 2),

                new Sequence(restMeasure, 2),

                new Sequence(seq2E, 2),
                new Sequence(seq2D, 2),
                new Sequence(seq2C, 2),
                new Sequence(seq2B, 2),
                new Sequence(seq2A, 4),
                new Sequence(seq2B, 2),
                new Sequence(seq2C, 2),
                new Sequence(seq2D, 2),
                new Sequence(seq2E, 2),

                new Sequence(restMeasure, 2),

                new Sequence(seq1E, 2),
                new Sequence(seq1D, 2),
                new Sequence(seq1C, 2),
                new Sequence(seq1B, 2),

                new Sequence(seq1A, 4),
                new Sequence(seq4A, 4),
                new Sequence(seq4B, 4),
                new Sequence(seq4C, 4),
                new Sequence(seq4D, 3),
                new Sequence(seq4E, 1),
            ]
        );
    }
}


class Scene3 extends Scene {
    fun @construct() {
        [
            new RestNote("w"),
        ] @=> Note restMeasure[];

        // Add sequences to scene
        this.setSeqs(
            [
                new Sequence(restMeasure, 8),
            ]
        );
    }
}


class Scene4 extends Scene {
    fun @construct() {
        [
            new RestNote("q"),
        ] @=> Note restBeat[];

        [
            new RestNote("w"),
        ] @=> Note restMeasure[];

        [
            new Note("0|o1|a0.65", "e", 25::ms, 25::ms),
            new Note("1|o1|a0.45", "e", 25::ms, 25::ms),
            new Note("2|o1|a0.65", "e", 25::ms, 25::ms),
            new Note("3|o1|a0.55", "e", 25::ms, 25::ms),
        ] @=> Note seq1A[];

        [
            new Note("0|o1|a0.65", "e", 25::ms, 25::ms),
            new Note("0.8|o1|a0.45", "e", 25::ms, 25::ms),
            new Note("2.2|o1|a0.65", "e", 25::ms, 25::ms),
            new Note("3|o1|a0.55", "e", 25::ms, 25::ms),
        ] @=> Note seq1B[];

        [
            new Note("0|o1|a0.65", "e", 25::ms, 25::ms),
            new Note("0.6|o1|a0.45", "e", 25::ms, 25::ms),
            new Note("2.6|o1|a0.65", "e", 25::ms, 25::ms),
            new Note("3|o1|a0.55", "e", 25::ms, 25::ms),
        ] @=> Note seq1C[];

        [
            new Note("0|o1|a0.65", "e", 25::ms, 25::ms),
            new Note("0.4|o1|a0.45", "e", 25::ms, 25::ms),
            new Note("2.75|o1|a0.65", "e", 25::ms, 25::ms),
            new Note("3|o1|a0.55", "e", 25::ms, 25::ms),
        ] @=> Note seq1D[];

        [
            new Note("0|o1|a0.65", "e", 25::ms, 25::ms),
            new Note("0.2|o1|a0.45", "e", 25::ms, 25::ms),
            new Note("2.82|o1|a0.65", "e", 25::ms, 25::ms),
            new Note("3|o1|a0.55", "e", 25::ms, 25::ms),
        ] @=> Note seq1E[];

        [
            new Note("0|o1|a0.65", "e", 25::ms, 25::ms),
            new Note("0.12|o1|a0.45", "e", 25::ms, 25::ms),
            new Note("2.89|o1|a0.65", "e", 25::ms, 25::ms),
            new Note("3|o1|a0.55", "e", 25::ms, 25::ms),
        ] @=> Note seq1F[];

        [
            new Note("0.2|o1|a0.65", "e", 25::ms, 25::ms),
            new Note("0.12|o1|a0.45", "e", 25::ms, 25::ms),
            new Note("2.89|o1|a0.65", "e", 25::ms, 25::ms),
            new Note("3|o1|a0.55", "e", 25::ms, 25::ms),
        ] @=> Note seq2A[];

        // Add sequences to scene
        this.setSeqs(
            [
                new Sequence(seq1A, 1),
                new Sequence(restBeat, 2),
                new Sequence(restMeasure, 1),
                new Sequence(seq1A, 1),
                new Sequence(restBeat, 2),
                new Sequence(restMeasure, 1),

                new Sequence(seq1A, 8),
                new Sequence(seq1B, 8),
                new Sequence(seq1C, 4),
                new Sequence(seq1D, 4),
                new Sequence(seq1E, 4),
                new Sequence(seq1F, 2),
                new Sequence(seq1E, 2),
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
        this.scenes << new Scene3();
        this.scenes << new Scene4();
    }
}
