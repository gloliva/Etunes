@import "../notation.ck"


class Scene1 extends Scene {
    fun @construct() {
        [
            new RestNote("w"),
        ] @=> Note restMeasure[];

        // Add sequences to scene
        this.setSeqs(
            [
                new Sequence(restMeasure, 32),
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
            new Note("11|o1|a0.3", "s", 5::ms, 15::ms),
            new Note("3|o1|a0.25", "e/3", 15::ms, 15::ms),
            new Note("7|o1|a0.35", "e/3", 15::ms, 5::ms),
            new Note("3|o1|a0.35", "e/3", 15::ms, 5::ms),
            new Note("11|o1|a0.4", "s", 5::ms, 15::ms),

            new Note("11|o1|a0.4", "s", 5::ms, 15::ms),
            new Note("3|o1|a0.35", "e/3", 15::ms, 15::ms),
            new Note("7|o1|a0.45", "e/3", 15::ms, 5::ms),
            new Note("3|o1|a0.45", "e/3", 15::ms, 5::ms),
            new Note("11|o1|a0.5", "s", 5::ms, 15::ms),

            new Note("11|o1|a0.5", "s", 5::ms, 15::ms),
            new Note("3|o1|a0.45", "e/3", 15::ms, 15::ms),
            new Note("7|o1|a0.42", "e/3", 15::ms, 5::ms),
            new Note("3|o1|a0.52", "e/3", 15::ms, 5::ms),
            new Note("11|o1|a0.55", "s", 5::ms, 15::ms),

            new Note("11|o1|a0.55", "s", 5::ms, 15::ms),
            new Note("3|o1|a0.5", "e/3", 15::ms, 15::ms),
            new Note("7|o1|a0.62", "e/3", 15::ms, 5::ms),
            new Note("3|o1|a0.58", "e/3", 15::ms, 5::ms),
            new Note("11|o1|a0.5", "s", 5::ms, 15::ms),

        ] @=> Note seq1A[];

        [
            new Note("11|o1|a0.6", "e", 5::ms, 15::ms),
            new Note("3|o1|a0.55", "e/3", 15::ms, 15::ms),
            new Note("7|o1|a0.65", "e/3", 15::ms, 5::ms),
            new Note("3|o1|a0.65", "e/3", 15::ms, 5::ms),
            new Note("11|o1|a0.6", "e", 5::ms, 15::ms),
            new Note("11|o1|a0.65", "e", 5::ms, 15::ms),
            new Note("11|o1|a0.6", "s", 5::ms, 15::ms),
            new Note("3|o1|a0.55", "e/3", 15::ms, 15::ms),
            new Note("7|o1|a0.65", "e/3", 15::ms, 5::ms),
            new Note("3|o1|a0.65", "e/3", 15::ms, 5::ms),
            new Note("11|o1|a0.6", "s", 5::ms, 15::ms),
            new Note("11|o1|a0.65", "e", 5::ms, 15::ms),
            new Note("11|o1|a0.6", "e", 5::ms, 15::ms),
        ] @=> Note seq1B[];


        [
            new Note("10|o1|a0.6", "e", 5::ms, 15::ms),
            new Note("2|o1|a0.55", "e/3", 15::ms, 15::ms),
            new Note("7|o1|a0.65", "e/3", 15::ms, 5::ms),
            new Note("2|o1|a0.65", "e/3", 15::ms, 5::ms),
            new Note("10|o1|a0.6", "e", 5::ms, 15::ms),
            new Note("10|o1|a0.65", "e", 5::ms, 15::ms),
            new Note("10|o1|a0.6", "s", 5::ms, 15::ms),
            new Note("2|o1|a0.55", "e/3", 15::ms, 15::ms),
            new Note("7|o1|a0.65", "e/3", 15::ms, 5::ms),
            new Note("2|o1|a0.65", "e/3", 15::ms, 5::ms),
            new Note("10|o1|a0.6", "s", 5::ms, 15::ms),
            new Note("10|o1|a0.65", "e", 5::ms, 15::ms),
            new Note("10|o1|a0.6", "e", 5::ms, 15::ms),
        ] @=> Note seq1C[];

        [
            new Note("10.5|o1|a0.6", "e", 5::ms, 15::ms),
            new Note("2|o1|a0.55", "e/3", 15::ms, 15::ms),
            new Note("7.7|o1|a0.65", "e/3", 15::ms, 5::ms),
            new Note("2|o1|a0.65", "e/3", 15::ms, 5::ms),
            new Note("10.5|o1|a0.6", "e", 5::ms, 15::ms),
            new Note("10.5|o1|a0.65", "e", 5::ms, 15::ms),
            new Note("10.5|o1|a0.6", "s", 5::ms, 15::ms),
            new Note("2|o2|a0.55", "e/3", 15::ms, 15::ms),
            new Note("7.7|o2|a0.65", "e/3", 15::ms, 5::ms),
            new Note("2|o1|a0.65", "e/3", 15::ms, 5::ms),
            new Note("10.25|o1|a0.6", "s", 5::ms, 15::ms),
            new Note("10.25|o1|a0.65", "e", 5::ms, 15::ms),
            new Note("10.25|o1|a0.6", "e", 5::ms, 15::ms),
        ] @=> Note seq1D[];

        [
            new Note("10|o1|a0.6", "e", 5::ms, 15::ms),
            new Note("2|o2|a0.55", "e/3", 15::ms, 15::ms),
            new Note("7|o2|a0.65", "e/3", 15::ms, 5::ms),
            new Note("2|o2|a0.65", "e/3", 15::ms, 5::ms),
            new Note("10|o1|a0.6", "e", 5::ms, 15::ms),
            new Note("10|o1|a0.65", "e", 5::ms, 15::ms),
            new Note("10|o1|a0.6", "s", 5::ms, 15::ms),
            new Note("2|o2|a0.55", "e/3", 15::ms, 15::ms),
            new Note("7|o2|a0.65", "e/3", 15::ms, 5::ms),
            new Note("2|o2|a0.65", "e/3", 15::ms, 5::ms),
            new Note("10|o1|a0.6", "s", 5::ms, 15::ms),
            new Note("10|o1|a0.65", "e", 5::ms, 15::ms),
            new Note("10|o1|a0.6", "e", 5::ms, 15::ms),
        ] @=> Note seq1E[];

        [
            new Note("10.5|o2|a0.6", "e", 5::ms, 15::ms),
            new Note("2.2|o2|a0.55", "e/3", 15::ms, 15::ms),
            new Note("7|o2|a0.65", "e/3", 15::ms, 5::ms),
            new Note("2.2|o2|a0.65", "e/3", 15::ms, 5::ms),
            new Note("10.5|o1|a0.6", "e", 5::ms, 15::ms),
            new Note("10.5|o1|a0.65", "e", 5::ms, 15::ms),
            new Note("10.5|o1|a0.6", "s", 5::ms, 15::ms),
            new Note("2.2|o2|a0.55", "e/3", 15::ms, 15::ms),
            new Note("7|o2|a0.65", "e/3", 15::ms, 5::ms),
            new Note("2.2|o2|a0.65", "e/3", 15::ms, 5::ms),
            new Note("10.2|o1|a0.6", "s", 5::ms, 15::ms),
            new Note("10.5|o2|a0.65", "e", 5::ms, 15::ms),
            new Note("10.2|o1|a0.6", "e", 5::ms, 15::ms),
        ] @=> Note seq2A[];

        [
            new Note("11.2|o1|a0.6", "e", 5::ms, 15::ms),
            new Note("2.2|o2|a0.55", "e/3", 15::ms, 15::ms),
            new Note("7.3|o2|a0.65", "e/3", 15::ms, 5::ms),
            new Note("2.2|o2|a0.65", "e/3", 15::ms, 5::ms),
            new Note("10.5|o1|a0.6", "e", 5::ms, 15::ms),
            new Note("9.5|o1|a0.65", "e", 5::ms, 15::ms),
            new Note("10.5|o1|a0.6", "s", 5::ms, 15::ms),
            new Note("2.6|o2|a0.55", "e/3", 15::ms, 15::ms),
            new Note("7.5|o2|a0.65", "e/3", 15::ms, 5::ms),
            new Note("2.2|o2|a0.65", "e/3", 15::ms, 5::ms),
            new Note("10.6|o1|a0.6", "s", 5::ms, 15::ms),
            new Note("10.5|o2|a0.65", "e", 5::ms, 15::ms),
            new Note("10.2|o1|a0.6", "e", 5::ms, 15::ms),
        ] @=> Note seq2B[];

        [
            new Note("11.8|o2|a0.55", "e/3", 15::ms, 15::ms),
            new Note("1.8|o2|a0.65", "e/3", 15::ms, 5::ms),
            new Note("2.2|o2|a0.65", "e/3", 15::ms, 5::ms),
            new Note("2.6|o2|a0.55", "e/3", 15::ms, 15::ms),
            new Note("11.5|o2|a0.65", "e/3", 15::ms, 5::ms),
            new Note("2.2|o2|a0.65", "e/3", 15::ms, 5::ms),
        ] @=> Note seq2C[];

        [
            new Note("11.9|o2|a0.55", "e/3", 15::ms, 15::ms),
            new Note("1.2|o2|a0.35", "e/3", 15::ms, 5::ms),
            new Note("1.5|o1|a0.65", "e/3", 15::ms, 5::ms),
            new Note("2.2|o1|a0.55", "e/3", 15::ms, 15::ms),
            new Note("11.8|o1|a0.45", "e/3", 15::ms, 5::ms),
            new Note("1.1|o2|a0.65", "e/3", 15::ms, 5::ms),
        ] @=> Note seq2D[];

        [
            new Note("11.9|o1|a0.7", "e/3", 15::ms, 0::ms),
            new Note("11.5|o1|a0.65", "e/3", 0::ms, 0::ms),
            new Note("11|o1|a0.75", "e/3", 0::ms, 0::ms),
            new Note("10.3|o1|a0.65", "e/3", 0::ms, 0::ms),
            new Note("9.8|o1|a0.7", "e/3", 0::ms, 0::ms),
            new Note("9.0|o1|a0.68", "e/3", 0::ms, 0::ms),

            new Note("8.4|o1|a0.7", "e/3", 0::ms, 0::ms),
            new Note("7.8|o1|a0.65", "e/3", 0::ms, 0::ms),
            new Note("7.3|o1|a0.75", "e/3", 0::ms, 0::ms),
            new Note("6.4|o1|a0.65", "e/3", 0::ms, 0::ms),
            new Note("5.7|o1|a0.7", "e/3", 0::ms, 0::ms),
            new Note("5.1|o1|a0.68", "e/3", 0::ms, 0::ms),
        ] @=> Note seq2E[];



        // Add sequences to scene
        this.setSeqs(
            [
                new Sequence(restMeasure, 1),
                new Sequence(seq1A, 1),
                new Sequence(seq1B, 2),
                new Sequence(seq1C, 2),
                new Sequence(seq1B, 2),
                new Sequence(seq1D, 2),
                new Sequence(seq1C, 1),
                new Sequence(seq1D, 1),
                new Sequence(seq1E, 4),

                new Sequence(seq2A, 4),
                new Sequence(seq2B, 3),
                new Sequence(seq2A, 1),
                new Sequence(seq2C, 12),
                new Sequence(seq2D, 2),
                new Sequence(seq2E, 1),
            ]
        );
    }
}


class Scene3 extends Scene {
    fun @construct() {
        [
            new RestNote("w"),
        ] @=> Note restMeasure[];

        [
            new Note("4.8|o1|a0.7", "e/3", 0::ms, 0::ms),
            new Note("4.4|o1|a0.66", "e/3", 0::ms, 0::ms),
            new Note("3.9|o1|a0.6", "e/3", 0::ms, 0::ms),
            new Note("3.2|o1|a0.58", "e/3", 0::ms, 0::ms),
            new Note("2.9|o1|a0.55", "e/3", 0::ms, 0::ms),
            new Note("2.5|o1|a0.52", "e/3", 0::ms, 0::ms),

            new Note("2.1|o1|a0.49", "e/3", 0::ms, 0::ms),
            new Note("1.9|o1|a0.44", "e/3", 0::ms, 0::ms),
            new Note("1.7|o1|a0.40", "e/3", 0::ms, 0::ms),
            new Note("1.2|o1|a0.33", "e/3", 0::ms, 0::ms),
            new Note("0.9|o1|a0.25", "e/3", 0::ms, 05::ms),
            new Note("0.7|o1|a0.0.2", "e/3", 0::ms, 25::ms),
        ] @=> Note seq1A[];

        [
            new Note("0.4|o1|a0.15", "e/3", 25::ms, 25::ms),
            new Note("0.1|o1|a0.1", "e/3", 25::ms, 25::ms),
            new Note("11.7|o0|a0.15", "e/3", 25::ms, 25::ms),
            new Note("11.4|o0|a0.2", "e/3", 25::ms, 25::ms),
            new Note("11.1|o0|a0.15", "e/3", 25::ms, 25::ms),
            new Note("11.5|o0|a0.1", "e/3", 25::ms, 25::ms),

            new Note("11.8|o0|a0.15", "e/3", 25::ms, 25::ms),
            new Note("0.0|o1|a0.2", "e/3", 25::ms, 25::ms),
            new Note("0.3|o1|a0.15", "e/3", 25::ms, 25::ms),
            new Note("0.7|o1|a0.1", "e/3", 25::ms, 25::ms),
            new Note("0.9|o1|a0.15", "e/3", 25::ms, 25::ms),
            new Note("0.6|o1|a0.2", "e/3", 25::ms, 25::ms),
        ] @=> Note seq2A[];

        // [
        //     new Note("9.|o1|a0.7", "s", 50::ms, 50::ms),
        //     new Note("9.2|o1|a0.65", "s", 50::ms, 50::ms),
        //     new RestNote("e"),

        //     new Note("9.0|o1|a0.68", "e.", 150::ms, 50::ms),
        //     new RestNote("s"),

        //     new RestNote("s"),
        //     new Note("8.7|o1|a0.75", "s", 50::ms, 50::ms),
        //     new Note("9.1|o1|a0.75", "s", 50::ms, 50::ms),
        //     new RestNote("s"),

        //     new Note("9.2|o1|a0.7", "s", 50::ms, 50::ms),
        //     new Note("9.0|o1|a0.68", "e.", 150::ms, 50::ms),
        // ] @=> Note seq1A[];

        // Add sequences to scene
        this.setSeqs(
            [
                new Sequence(seq1A, 1),
                new Sequence(seq2A, 1),
                new Sequence(seq2A, 30),
                // new Sequence(seq1A, 2),
                // new Sequence(restMeasure, 1),
                // new Sequence(seq1A, 1),
            ]
        );
    }
}


class Scene4 extends Scene {
    fun @construct() {
        [
            new Note("11.9|o0|a0.55", "s", 15::ms, 15::ms),
            new Note("0.8|o-1|a0.65", "s", 15::ms, 5::ms),
            new Note("1.5|o0|a0.65", "s", 15::ms, 5::ms),
            new Note("2.2|o-1|a0.55", "s", 15::ms, 15::ms),
            new Note("11.8|o-1|a0.65", "s", 15::ms, 5::ms),
            new Note("0.8|o0|a0.65", "s", 15::ms, 5::ms),
            new Note("11.8|o-1|a0.65", "s", 15::ms, 5::ms),
            new Note("0.8|o0|a0.65", "s", 15::ms, 5::ms),
        ] @=> Note seq1A[];

        [
            new Note("11.9|o0|a0.55", "s", 15::ms, 15::ms),
            new Note("0.5|o-1|a0.65", "s", 15::ms, 5::ms),
            new RestNote("s"),
            new Note("2.2|o-1|a0.55", "s", 15::ms, 15::ms),
            new Note("10.8|o-1|a0.65", "s", 15::ms, 5::ms),
            new Note("0.5|o0|a0.65", "s", 15::ms, 5::ms),
            new RestNote("s"),
            new Note("0.5|o0|a0.65", "s", 15::ms, 5::ms),
        ] @=> Note seq2A[];

        [
            new Note("11.2|o0|a0.55", "s", 15::ms, 15::ms),
            new Note("0.8|o-1|a0.65", "s", 15::ms, 5::ms),
            new RestNote("s"),
            new Note("2.2|o-1|a0.55", "s", 15::ms, 15::ms),
            new Note("9.8|o-1|a0.65", "s", 15::ms, 5::ms),
            new Note("0.8|o0|a0.65", "s", 15::ms, 5::ms),
            new RestNote("s"),
            new Note("0.8|o0|a0.65", "s", 15::ms, 5::ms),
        ] @=> Note seq2B[];


        // Add sequences to scene
        this.setSeqs(
            [
                new Sequence(seq1A, 32),
                new Sequence(seq2A, 8),
                new Sequence(seq1A, 8),
                new Sequence(seq2A, 4),
                new Sequence(seq1A, 4),
                new Sequence(seq2B, 4),
                new Sequence(seq1A, 4),
            ]
        );
    }
}


public class Etune1Voice3Score extends Score {
    fun @construct() {
        3 => this.voiceNum;

        // Load scenes
        this.scenes << new Scene1();
        this.scenes << new Scene2();
        this.scenes << new Scene3();
        this.scenes << new Scene4();
    }
}
