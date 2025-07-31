// Imports
@import "../notation.ck"


class Scene1 extends Scene {
    fun @construct() {

        [
            new RestNote("w")
        ] @=> Note restMeasure[];

        [
            new RestNote("h."),
            new Note("7|o1|a0.7", "q/3", 25::ms, 25::ms),
            new Note("8|o1|a0.6", "q/3", 25::ms, 25::ms),
            new Note("7|o1|a0.65", "q/3", 25::ms, 25::ms),
        ] @=> Note seq1A[];

        [
            new Note("0|o1|a0.6", "e", 25::ms, 25::ms),
            new RestNote("e"),
            new RestNote("h"),
            new Note("7|o1|a0.7", "q/3", 25::ms, 25::ms),
            new Note("8|o1|a0.65", "q/3", 25::ms, 25::ms),
            new Note("7|o1|a0.7", "q/3", 25::ms, 25::ms),
        ] @=> Note seq1B[];

        [
            new Note("4|o1|a0.6", "e", 25::ms, 25::ms),
            new RestNote("e"),
            new RestNote("h"),
            new Note("7|o1|a0.7", "e", 25::ms, 25::ms),
            new Note("13|o1|a0.65", "s", 25::ms, 0::ms),
            new Note("7|o1|a0.7", "s", 0::ms, 25::ms),
        ] @=> Note seq1C[];

        [
            new Note("4|o1|a0.6", "e", 25::ms, 25::ms),
            new RestNote("e"),
            new Note("11|o1|a0.65", "e", 25::ms, 25::ms),
            new Note("13|o1|a0.7", "s", 25::ms, 0::ms),
            new Note("11|o1|a0.65", "s", 0::ms, 25::ms),
            new Note("7|o1|a0.6", "e", 25::ms, 25::ms),
            new RestNote("e"),
            new Note("7|o1|a0.7", "e", 25::ms, 25::ms),
            new Note("13|o1|a0.75", "s", 25::ms, 0::ms),
            new Note("7|o1|a0.75", "s", 0::ms, 25::ms),
        ] @=> Note seq1D[];

        [
            new Note("13|o1|a0.7", "e", 25::ms, 25::ms),
            new RestNote("e"),
            new Note("13|o1|a0.6", "e", 25::ms, 25::ms),
            new RestNote("e"),
            new Note("13|o1|a0.7", "e", 25::ms, 25::ms),
            new RestNote("e"),
            new Note("13|o1|a0.6", "e", 25::ms, 25::ms),
            new RestNote("e"),
        ] @=> Note seq2A[];

        [
            new Note("13|o1|a0.7", "e", 25::ms, 25::ms),
            new RestNote("e"),
            new Note("13|o1|a0.6", "e", 25::ms, 25::ms),
            new RestNote("e"),
            new Note("13|o1|a0.7", "e", 25::ms, 25::ms),
            new RestNote("e"),
            new Note("13|o1|a0.6", "s", 25::ms, 25::ms),
            new Note("11|o1|a0.55", "s", 25::ms, 25::ms),
            new Note("13|o1|a0.65", "s", 25::ms, 25::ms),
            new Note("11|o1|a0.55", "s", 25::ms, 25::ms),
        ] @=> Note seq2B[];

        [
            new RestNote("h."),
            new RestNote("e"),
            new Note("13|o1|a0.6", "e", 25::ms, 25::ms),
        ] @=> Note seq3A[];

        [
            new Note("7|o1|a0.6", "e", 25::ms, 10::ms),
            new RestNote("s"),
            new Note("4|o1|a0.6", "s", 25::ms, 0::ms),
            new Note("11|o1|a0.65", "e.", 0::ms, 25::ms),
            new Note("4|o1|a0.58", "s", 25::ms, 0::ms),
            new Note("13|o1|a0.7", "e", 0::ms, 25::ms),
            new RestNote("q."),
        ] @=> Note seq3C[];


        // Add sequences to scene
        this.setSeqs(
            [
                new Sequence(restMeasure, 3),
                new Sequence(seq1A, 2),
                new Sequence(seq1B, 2),
                new Sequence(seq1C, 1),
                new Sequence(seq1D, 1),
                new Sequence(seq1B, 2),

                new Sequence(seq2A, 3),
                new Sequence(seq2B, 1),

                new Sequence(seq3A, 3),
                new Sequence(seq3C, 1),
            ]
        );
    }
}


class Scene2 extends Scene {
    fun @construct() {
        [
            new RestNote("w")
        ] @=> Note restMeasure[];

        [
            new Note("4|o0|a0.65", "s", 25::ms, 75::ms),
            new Note("4|o0|a0.60", "s", 25::ms, 75::ms),
            new Note("4|o0|a0.55", "s", 25::ms, 75::ms),
            new Note("4|o0|a0.60", "s", 25::ms, 75::ms),
            new Note("4|o0|a0.65", "s", 25::ms, 75::ms),
            new Note("4|o0|a0.60", "s", 25::ms, 75::ms),
            new Note("4|o0|a0.55", "s", 25::ms, 75::ms),
            new Note("4|o0|a0.60", "s", 25::ms, 75::ms),
            new Note("4|o0|a0.65", "s", 25::ms, 75::ms),
            new Note("4|o0|a0.60", "s", 25::ms, 75::ms),
            new Note("4|o0|a0.55", "s", 25::ms, 75::ms),
            new Note("4|o0|a0.60", "s", 25::ms, 75::ms),
            new Note("4|o0|a0.65", "s", 25::ms, 75::ms),
            new Note("4|o0|a0.60", "s", 25::ms, 75::ms),
            new Note("4|o0|a0.55", "s", 25::ms, 75::ms),
            new Note("4|o0|a0.60", "s", 25::ms, 75::ms),

            new Note("0|o0|a0.65", "s", 25::ms, 75::ms),
            new Note("0|o0|a0.60", "s", 25::ms, 75::ms),
            new Note("0|o0|a0.55", "s", 25::ms, 75::ms),
            new Note("0|o0|a0.60", "s", 25::ms, 75::ms),
            new Note("0|o0|a0.65", "s", 25::ms, 75::ms),
            new Note("0|o0|a0.60", "s", 25::ms, 75::ms),
            new Note("0|o0|a0.55", "s", 25::ms, 75::ms),
            new Note("0|o0|a0.60", "s", 25::ms, 75::ms),
            new Note("0|o0|a0.65", "s", 25::ms, 75::ms),
            new Note("0|o0|a0.60", "s", 25::ms, 75::ms),
            new Note("0|o0|a0.55", "s", 25::ms, 75::ms),
            new Note("0|o0|a0.60", "s", 25::ms, 75::ms),
            new Note("0|o0|a0.65", "s", 25::ms, 75::ms),
            new Note("0|o0|a0.60", "s", 25::ms, 75::ms),
            new Note("0|o0|a0.55", "s", 25::ms, 75::ms),
            new Note("0|o0|a0.60", "s", 25::ms, 75::ms),
        ] @=> Note seq1A[];

        [
            new RestNote("q"),

            new Note("19|o2|a0.1", "s", 25::ms, 25::ms),
            new Note("21|o2|a0.2", "s", 25::ms, 25::ms),
            new Note("13|o2|a0.3", "s", 25::ms, 25::ms),
            new Note("17|o2|a0.35", "s", 25::ms, 25::ms),

            new Note("19|o2|a0.4", "s", 25::ms, 25::ms),
            new Note("21|o2|a0.45", "s", 25::ms, 25::ms),
            new Note("13|o2|a0.5", "s", 25::ms, 25::ms),
            new Note("17|o2|a0.55", "s", 25::ms, 25::ms),

            new Note("19|o2|a0.6", "s", 25::ms, 25::ms),
            new Note("20|o2|a0.6", "s", 25::ms, 25::ms),
            new Note("13|o2|a0.7", "s", 25::ms, 25::ms),
            new Note("16|o2|a0.65", "s", 25::ms, 25::ms),

        ] @=> Note seq3A[];

        [
            new Note("19|o2|a0.65", "s", 25::ms, 25::ms),
            new Note("21|o2|a0.6", "s", 25::ms, 25::ms),
            new Note("13|o2|a0.7", "s", 25::ms, 25::ms),
            new Note("17|o2|a0.65", "s", 25::ms, 25::ms),

            new Note("19|o2|a0.6", "s", 25::ms, 25::ms),
            new Note("20|o2|a0.6", "s", 25::ms, 25::ms),
            new Note("13|o2|a0.7", "s", 25::ms, 25::ms),
            new Note("17|o2|a0.65", "s", 25::ms, 25::ms),

            new Note("19|o2|a0.65", "s", 25::ms, 25::ms),
            new Note("20|o2|a0.65", "s", 25::ms, 25::ms),
            new Note("13|o2|a0.65", "s", 25::ms, 25::ms),
            new Note("16|o2|a0.6", "s", 25::ms, 25::ms),

            new Note("18|o2|a0.65", "s", 25::ms, 25::ms),
            new Note("20|o2|a0.6", "s", 25::ms, 25::ms),
            new Note("13|o2|a0.65", "s", 25::ms, 25::ms),
            new Note("16|o2|a0.6", "s", 25::ms, 25::ms),

        ] @=> Note seq3B[];

        // Add sequences to scene
        this.setSeqs(
            [
                new Sequence(seq1A, 12),
                new Sequence(restMeasure, 3),
                new Sequence(seq3A, 1),
                new Sequence(seq3B, 8),
            ]
        );
    }
}


class Scene3 extends Scene {
    fun @construct() {

        [
            new RestNote("w")
        ] @=> Note restMeasure[];

        [
            new Note("11|o2|a0.7", "s", 25::ms, 75::ms),
            new Note("11|o2|a0.5", "s", 25::ms, 75::ms),
            new Note("6|o2|a0.6", "s", 25::ms, 75::ms),
            new Note("11|o2|a0.7", "s", 25::ms, 75::ms),

            new Note("11|o2|a0.7", "s", 25::ms, 75::ms),
            new Note("6|o2|a0.5", "s", 25::ms, 75::ms),
            new Note("11|o2|a0.6", "s", 25::ms, 75::ms),
            new Note("11|o2|a0.7", "s", 25::ms, 75::ms),

            new Note("11|o2|a0.7", "s", 25::ms, 75::ms),
            new Note("11|o2|a0.5", "s", 25::ms, 75::ms),
            new Note("6|o2|a0.6", "s", 25::ms, 75::ms),
            new Note("11|o2|a0.7", "s", 25::ms, 75::ms),

            new Note("11|o2|a0.7", "e", 25::ms, 75::ms),
            new Note("0|o2|a0.6", "e", 25::ms, 75::ms),
        ] @=> Note seq1A[];

        [
            new Note("11|o2|a0.7", "s", 25::ms, 75::ms),
            new Note("7|o2|a0.5", "s", 25::ms, 75::ms),
            new Note("6|o2|a0.6", "s", 25::ms, 75::ms),
            new Note("7|o2|a0.7", "s", 25::ms, 75::ms),

            new Note("7|o2|a0.7", "s", 25::ms, 75::ms),
            new Note("6|o2|a0.5", "s", 25::ms, 75::ms),
            new RestNote("s"),
            new Note("7|o2|a0.7", "s", 25::ms, 75::ms),

            new Note("7|o2|a0.7", "s", 25::ms, 75::ms),
            new Note("7|o2|a0.5", "s", 25::ms, 75::ms),
            new Note("6|o2|a0.6", "s", 25::ms, 75::ms),
            new Note("7|o2|a0.7", "s", 25::ms, 75::ms),

            new Note("7|o2|a0.7", "e", 25::ms, 75::ms),
            new Note("0|o2|a0.6", "e", 25::ms, 75::ms),
        ] @=> Note seq1B[];

        [
            new Note("11|o2|a0.7", "s", 25::ms, 75::ms),
            new Note("11|o0|a0.5", "s", 25::ms, 75::ms),
            new Note("6|o2|a0.6", "s", 25::ms, 75::ms),
            new Note("11|o1|a0.7", "s", 25::ms, 75::ms),

            new Note("11|o2|a0.7", "s", 25::ms, 75::ms),
            new Note("6|o0|a0.5", "s", 25::ms, 75::ms),
            new Note("11|o1|a0.6", "s", 25::ms, 75::ms),
            new Note("11|o0|a0.7", "s", 25::ms, 75::ms),

            new Note("11|o2|a0.7", "s", 25::ms, 75::ms),
            new Note("11|o1|a0.5", "s", 25::ms, 75::ms),
            new Note("6|o2|a0.6", "s", 25::ms, 75::ms),
            new Note("11|o0|a0.7", "s", 25::ms, 75::ms),

            new Note("11|o2|a0.7", "e", 25::ms, 75::ms),
            new Note("0|o1|a0.6", "e", 25::ms, 75::ms),
        ] @=> Note seq1C[];

        [
            new Note("10|o1|a0.7", "te", 25::ms, 75::ms),
            new Note("10|o1|a0.5", "te", 25::ms, 75::ms),
            new Note("10|o1|a0.6", "te", 25::ms, 75::ms),

            new Note("10|o0|a0.7", "te", 25::ms, 75::ms),
            new Note("10|o1|a0.5", "te", 25::ms, 75::ms),
            new Note("10|o1|a0.6", "te", 25::ms, 75::ms),

            new Note("10|o1|a0.7", "te", 25::ms, 75::ms),
            new Note("10|o1|a0.5", "te", 25::ms, 75::ms),
            new Note("10|o1|a0.6", "te", 25::ms, 75::ms),

            new Note("10|o1|a0.7", "e", 25::ms, 75::ms),
            new Note("10|o0|a0.6", "e", 25::ms, 75::ms),
        ] @=> Note seq2A[];

        [
            new Note("6|o1|a0.7", "te", 25::ms, 75::ms),
            new Note("6|o1|a0.5", "te", 25::ms, 75::ms),
            new Note("6|o1|a0.6", "te", 25::ms, 75::ms),

            new Note("6|o0|a0.7", "te", 25::ms, 75::ms),
            new Note("6|o1|a0.5", "te", 25::ms, 75::ms),
            new Note("6|o1|a0.6", "te", 25::ms, 75::ms),

            new Note("6|o1|a0.7", "te", 25::ms, 75::ms),
            new Note("6|o1|a0.5", "te", 25::ms, 75::ms),
            new Note("6|o1|a0.6", "te", 25::ms, 75::ms),

            new Note("6|o1|a0.7", "e", 25::ms, 75::ms),
            new Note("6|o0|a0.6", "e", 25::ms, 75::ms),
        ] @=> Note seq2B[];

        [
            new Note("0|o1|a0.7", "te", 25::ms, 75::ms),
            new Note("0|o1|a0.5", "te", 25::ms, 75::ms),
            new Note("0|o1|a0.6", "te", 25::ms, 75::ms),

            new Note("0|o0|a0.7", "te", 25::ms, 75::ms),
            new Note("0|o1|a0.5", "te", 25::ms, 75::ms),
            new Note("0|o1|a0.6", "te", 25::ms, 75::ms),

            new Note("0|o1|a0.7", "te", 25::ms, 75::ms),
            new Note("0|o1|a0.5", "te", 25::ms, 75::ms),
            new Note("0|o1|a0.6", "te", 25::ms, 75::ms),

            new RestNote("q"),
        ] @=> Note seq2C[];

        [
            new Note("0|o1|a0.7", "te", 25::ms, 75::ms),
            new Note("0|o1|a0.5", "te", 25::ms, 75::ms),
            new Note("0|o1|a0.6", "te", 25::ms, 75::ms),

            new Note("0|o0|a0.7", "te", 25::ms, 75::ms),
            new Note("0|o1|a0.5", "te", 25::ms, 75::ms),
            new Note("0|o1|a0.6", "te", 25::ms, 75::ms),

            new Note("0|o1|a0.7", "te", 25::ms, 75::ms),
            new Note("0|o1|a0.5", "te", 25::ms, 75::ms),
            new Note("0|o1|a0.6", "te", 25::ms, 75::ms),

            new Note("0|o1|a0.6", "te", 25::ms, 75::ms),
            new Note("6|o0|a0.5", "te", 25::ms, 75::ms),
            new Note("0|o1|a0.65", "te", 25::ms, 75::ms),
        ] @=> Note seq2D[];

        [
            new Note("11|o2|a0.7", "s", 25::ms, 75::ms),
            new Note("11|o2|a0.5", "s", 25::ms, 75::ms),
            new Note("6|o2|a0.6", "s", 25::ms, 75::ms),
            new Note("11|o2|a0.7", "s", 25::ms, 75::ms),

            new Note("11|o2|a0.7", "s", 25::ms, 75::ms),
            new Note("6|o2|a0.5", "s", 25::ms, 75::ms),
            new Note("11|o2|a0.6", "s", 25::ms, 75::ms),
            new Note("11|o2|a0.7", "s", 25::ms, 75::ms),

            new Note("11|o2|a0.7", "s", 25::ms, 75::ms),
            new Note("11|o2|a0.5", "s", 25::ms, 75::ms),
            new Note("6|o2|a0.6", "s", 25::ms, 75::ms),
            new Note("11|o2|a0.7", "s", 25::ms, 75::ms),

            new Note("11|o2|a0.7", "s", 25::ms, 75::ms),
            new RestNote("e."),
        ] @=> Note seq3A[];

        [
            new Note("11|o2|a0.7", "s", 25::ms, 75::ms),
            new Note("11|o2|a0.5", "s", 25::ms, 75::ms),
            new Note("6|o2|a0.6", "s", 25::ms, 75::ms),
            new Note("11|o2|a0.7", "s", 25::ms, 75::ms),

            new Note("11|o2|a0.7", "s", 25::ms, 75::ms),
            new Note("6|o2|a0.5", "s", 25::ms, 75::ms),
            new Note("11|o2|a0.6", "s", 25::ms, 75::ms),
            new Note("11|o2|a0.7", "s", 25::ms, 75::ms),

            new Note("11|o2|a0.7", "s", 25::ms, 75::ms),
            new Note("11|o2|a0.5", "s", 25::ms, 75::ms),
            new Note("6|o2|a0.6", "s", 25::ms, 75::ms),
            new Note("11|o2|a0.7", "s", 25::ms, 75::ms),

            new Note("9|o2|a0.7", "s", 25::ms, 75::ms),
            new RestNote("e."),
        ] @=> Note seq3B[];

        [
            new Note("9|o2|a0.7", "s", 25::ms, 75::ms),
            new Note("9|o2|a0.5", "s", 25::ms, 75::ms),
            new Note("3|o2|a0.6", "s", 25::ms, 75::ms),
            new Note("9|o2|a0.7", "s", 25::ms, 75::ms),

            new Note("9|o2|a0.7", "s", 25::ms, 75::ms),
            new Note("3|o2|a0.5", "s", 25::ms, 75::ms),
            new Note("9|o2|a0.6", "s", 25::ms, 75::ms),
            new Note("9|o2|a0.7", "s", 25::ms, 75::ms),

            new Note("9|o2|a0.7", "s", 25::ms, 75::ms),
            new Note("9|o2|a0.5", "s", 25::ms, 75::ms),
            new Note("3|o2|a0.6", "s", 25::ms, 75::ms),
            new Note("9|o2|a0.7", "s", 25::ms, 75::ms),

            new Note("6|o2|a0.7", "s", 25::ms, 75::ms),
            new RestNote("e."),
        ] @=> Note seq3C[];

        [
            new Note("6|o2|a0.7", "s", 25::ms, 75::ms),
            new Note("6|o2|a0.5", "s", 25::ms, 75::ms),
            new Note("0|o2|a0.6", "s", 25::ms, 75::ms),
            new Note("6|o2|a0.7", "s", 25::ms, 75::ms),

            new Note("6|o2|a0.7", "s", 25::ms, 75::ms),
            new Note("0|o2|a0.5", "s", 25::ms, 75::ms),
            new Note("6|o2|a0.6", "s", 25::ms, 75::ms),
            new Note("6|o2|a0.7", "s", 25::ms, 75::ms),

            new Note("6|o2|a0.7", "s", 25::ms, 75::ms),
            new Note("6|o2|a0.5", "s", 25::ms, 75::ms),
            new Note("0|o2|a0.6", "s", 25::ms, 75::ms),
            new Note("6|o2|a0.7", "s", 25::ms, 75::ms),

            new Note("0|o2|a0.68", "s", 25::ms, 75::ms),
            new Note("0|o1|a0.65", "s", 25::ms, 75::ms),
            new Note("0|o1|a0.7", "s", 25::ms, 75::ms),
            new Note("0|o1|a0.7", "s", 25::ms, 75::ms),
        ] @=> Note seq3D[];

        // Add sequences to scene
        this.setSeqs(
            [
                new Sequence(restMeasure, 4),
                new Sequence(seq1A, 3),
                new Sequence(seq1B, 1),
                new Sequence(seq1C, 3),
                new Sequence(seq1B, 1),

                new Sequence(seq2A, 4),
                new Sequence(seq2B, 2),
                new Sequence(seq2A, 2),
                new Sequence(seq2C, 1),
                new Sequence(seq2D, 1),
                new Sequence(seq2C, 2),

                new Sequence(seq1A, 3),
                new Sequence(seq1B, 1),

                new Sequence(seq3A, 1),
                new Sequence(seq3B, 1),
                new Sequence(seq3C, 1),
                new Sequence(seq3D, 1),
            ]
        );
    }
}


public class Etune2Voice2Score extends Score {
    fun @construct() {
        2 => this.voiceNum;

        this.scenes << new Scene1();
        this.scenes << new Scene2();
        this.scenes << new Scene3();
    }
}
