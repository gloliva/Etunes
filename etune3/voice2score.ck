@import "../notation.ck"


class Scene1 extends Scene {
    fun @construct() {
        [
            new RestNote("w"),
        ] @=> Note restMeasure[];

        [
            new RestNote("h"),
            new Note("0|o0|a0.2", "te", 50::ms, 50::ms),
            new Note("0|o0|a0.3", "te", 50::ms, 50::ms),
            new Note("0|o0|a0.2", "te", 50::ms, 50::ms),
            new Note("0|o0|a0.4", "te", 50::ms, 50::ms),
            new RestNote("te"),
            new RestNote("te"),
        ] @=> Note seq1A[];

        [
            new RestNote("h"),
            new Note("0|o0|a0.2", "te", 50::ms, 50::ms),
            new Note("0|o2|a0.3", "te", 50::ms, 50::ms),
            new Note("0|o2|a0.2", "te", 50::ms, 50::ms),
            new Note("0|o1|a0.4", "te", 50::ms, 50::ms),
            new RestNote("te"),
            new RestNote("te"),
        ] @=> Note seq1B[];

        [
            new RestNote("h"),
            new Note("0|o0|a0.2", "te", 50::ms, 50::ms),
            new Note("0|o2|a0.3", "te", 50::ms, 50::ms),
            new Note("0|o2|a0.2", "te", 50::ms, 50::ms),

            new Note("0|o1|a0.3", "e", 50::ms, 50::ms),
            new RestNote("s"),
            new Note("0|o1|a0.35", "s", 50::ms, 50::ms),
        ] @=> Note seq1C[];

        [
            new Note("0|o0|a0.4", "s", 5::ms, 45::ms),
            new Note("0|o1|a0.3", "s", 5::ms, 45::ms),

            new Note("0|o0|a0.3", "e", 5::ms, 45::ms),
            new RestNote("e"),
            new Note("0|o0|a0.22", "e", 5::ms, 45::ms),

            new Note("0|o0|a0.2", "te", 50::ms, 50::ms),
            new Note("0|o2|a0.3", "e/3", 15::ms, 15::ms),
            new Note("0|o1|a0.1", "e/3", 15::ms, 15::ms),
            new Note("0|o2|a0.2", "te", 50::ms, 50::ms),

            new Note("0|o1|a0.3", "te", 50::ms, 50::ms),
            new RestNote("te"),
            new Note("0|o0|a0.2", "te", 50::ms, 50::ms),
        ] @=> Note seq2A[];

        // Add sequences to scene
        this.setSeqs(
            [
                new Sequence(restMeasure, 16),
                new Sequence(seq1A, 2),
                new Sequence(restMeasure, 2),
                new Sequence(seq1B, 2),
                new Sequence(restMeasure, 1),
                new Sequence(seq1C, 1),
                new Sequence(seq2A, 8),
                new Sequence(restMeasure, 5),
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
            new Note("0|o0|a0.3", "e", 25::ms, 25::ms),
            new Note("1|o2|a0.15", "q.", 25::ms, 125::ms),

            new Note("1|o1|a0.3", "e", 25::ms, 25::ms),
            new Note("0|o0|a0.15", "s", 25::ms, 25::ms),
            new Note("0|o2|a0.25", "s", 25::ms, 0::ms),
            new Note("0|o1|a0.20", "q", 0::ms, 75::ms),
        ] @=> Note seq1A[];

        // Add sequences to scene
        this.setSeqs(
            [
                new Sequence(seq1A, 8),
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
            new Note("2|o2|a0.23", "w", 300::ms, 0::ms),
            new Note("2|o2|a0.23", "w", 0::ms, 0::ms),
            new Note("1|o2|a0.23", "w", 0::ms, 0::ms),
            new Note("1|o2|a0.23", "w", 0::ms, 300::ms),
        ] @=> Note seq1A[];

        [
            new Note("0|o2|a0.23", "w", 300::ms, 0::ms),
            new Note("0|o2|a0.23", "w", 0::ms, 0::ms),
            new Note("2|o2|a0.23", "w", 0::ms, 0::ms),
            new Note("2|o2|a0.23", "w", 0::ms, 0::ms),
        ] @=> Note seq1B[];

        // Add sequences to scene
        this.setSeqs(
            [
                new Sequence(seq1A, 1),
                new Sequence(seq1B, 1),
            ]
        );
    }
}


class Scene4 extends Scene {
    fun @construct() {
        [
            new RestNote("w"),
        ] @=> Note restMeasure[];

        [
            new Note("3|o2|a0.20", "w", 0::ms, 0::ms),
            new Note("3|o2|a0.20", "w", 0::ms, 1000::ms),
        ] @=> Note seq1A[];

        [
            new Note("0|o1|a0.05", "s", 10::ms, 0::ms),
            new Note("1|o1|a0.08", "s", 0::ms, 0::ms),
            new Note("2|o1|a0.12", "s", 0::ms, 0::ms),
            new Note("3|o1|a0.14", "s", 0::ms, 0::ms),

            new Note("0|o2|a0.18", "s", 0::ms, 0::ms),
            new Note("3|o1|a0.22", "s", 0::ms, 0::ms),
            new Note("2|o1|a0.28", "s", 0::ms, 0::ms),
            new Note("1|o1|a0.33", "s", 0::ms, 10::ms),
        ] @=> Note seq2A[];

        [
            new Note("2|o1|a0.05", "s", 10::ms, 0::ms),
            new Note("3|o1|a0.08", "s", 0::ms, 0::ms),
            new Note("0|o2|a0.12", "s", 0::ms, 0::ms),
            new Note("1|o2|a0.14", "s", 0::ms, 0::ms),

            new Note("2|o2|a0.18", "s", 0::ms, 0::ms),
            new Note("1|o2|a0.22", "s", 0::ms, 0::ms),
            new Note("0|o2|a0.28", "s", 0::ms, 0::ms),
            new Note("3|o1|a0.33", "s", 0::ms, 10::ms),
        ] @=> Note seq2B[];

        [
            new Note("2|o2|a0.25", "w", 1500::ms, 0::ms),
            new Note("2|o2|a0.25", "w", 0::ms, 150::ms),
        ] @=> Note seq2C[];

        [
            new Note("0|o1|a0.10", "s", 10::ms, 0::ms),
            new Note("1|o1|a0.14", "s", 0::ms, 0::ms),
            new Note("2|o1|a0.17", "s", 0::ms, 0::ms),
            new Note("3|o1|a0.22", "s", 0::ms, 0::ms),

            new Note("0|o2|a0.25", "s", 0::ms, 0::ms),
            new Note("3|o1|a0.29", "s", 0::ms, 0::ms),
            new Note("2|o1|a0.34", "s", 0::ms, 0::ms),
            new Note("1|o1|a0.39", "s", 0::ms, 10::ms),
        ] @=> Note seq2D[];

        [
            new Note("1|o1|a0.25", "w", 1500::ms, 0::ms),
            new Note("1|o1|a0.45", "w", 1500::ms, 50::ms),
        ] @=> Note seq3A[];


        // Add sequences to scene
        this.setSeqs(
            [
                new Sequence(seq1A, 1),
                new Sequence(restMeasure, 2),

                new Sequence(seq2A, 4),
                new Sequence(seq2B, 4),
                new Sequence(seq2A, 4),
                new Sequence(seq2B, 4),

                new Sequence(seq2C, 1),
                new Sequence(seq2D, 4),

                new Sequence(restMeasure, 2),
                new Sequence(seq3A, 1),
            ]
        );
    }
}


class Scene5 extends Scene {
    fun @construct() {
        [
            new RestNote("w"),
        ] @=> Note restMeasure[];

        [
            new Note("2|o1|a0.6", "s", 25::ms, 25::ms),
            new Note("2|o1|a0.45", "s", 25::ms, 25::ms),
            new Note("2|o1|a0.5", "s", 25::ms, 25::ms),
            new Note("2|o1|a0.45", "s", 25::ms, 25::ms),

            new Note("3|o1|a0.6", "s", 25::ms, 25::ms),
            new Note("3|o1|a0.45", "s", 25::ms, 25::ms),
            new Note("3|o1|a0.5", "s", 25::ms, 25::ms),
            new Note("3|o1|a0.45", "s", 25::ms, 25::ms),

            new Note("0|o2|a0.6", "s", 25::ms, 25::ms),
            new Note("0|o2|a0.45", "s", 25::ms, 25::ms),
            new Note("0|o2|a0.5", "s", 25::ms, 25::ms),
            new Note("0|o2|a0.45", "s", 25::ms, 25::ms),

            new Note("3|o1|a0.6", "s", 25::ms, 25::ms),
            new Note("3|o1|a0.45", "s", 25::ms, 25::ms),
            new Note("3|o1|a0.5", "s", 25::ms, 25::ms),
            new Note("3|o1|a0.45", "s", 25::ms, 25::ms),
        ] @=> Note seq1A[];

        [
            new Note("1|o1|a0.6", "s", 25::ms, 25::ms),
            new Note("1|o1|a0.45", "s", 25::ms, 25::ms),
            new Note("1|o1|a0.5", "s", 25::ms, 25::ms),
            new Note("1|o1|a0.45", "s", 25::ms, 25::ms),

            new Note("1|o1|a0.6", "s", 25::ms, 25::ms),
            new Note("1|o1|a0.45", "s", 25::ms, 25::ms),
            new Note("1|o1|a0.5", "s", 25::ms, 25::ms),
            new Note("1|o1|a0.45", "s", 25::ms, 25::ms),

            new Note("1|o2|a0.6", "s", 25::ms, 25::ms),
            new Note("1|o2|a0.45", "s", 25::ms, 25::ms),
            new Note("1|o2|a0.5", "s", 25::ms, 25::ms),
            new Note("1|o2|a0.45", "s", 25::ms, 25::ms),

            new Note("3|o1|a0.6", "s", 25::ms, 25::ms),
            new Note("3|o1|a0.45", "s", 25::ms, 25::ms),
            new Note("3|o1|a0.5", "s", 25::ms, 25::ms),
            new Note("3|o1|a0.45", "s", 25::ms, 25::ms),
        ] @=> Note seq1B[];

        [
            new Note("1|o1|a0.6", "s", 25::ms, 25::ms),
            new Note("1|o1|a0.45", "s", 25::ms, 25::ms),
            new Note("1|o1|a0.5", "s", 25::ms, 25::ms),
            new Note("1|o1|a0.45", "s", 25::ms, 25::ms),

            new Note("1|o1|a0.6", "s", 25::ms, 25::ms),
            new Note("1|o1|a0.45", "s", 25::ms, 25::ms),
            new Note("1|o1|a0.5", "s", 25::ms, 25::ms),
            new Note("1|o1|a0.45", "s", 25::ms, 25::ms),

            new Note("1|o2|a0.6", "s", 25::ms, 25::ms),
            new Note("1|o2|a0.45", "s", 25::ms, 25::ms),
            new Note("1|o2|a0.5", "s", 25::ms, 25::ms),
            new Note("1|o2|a0.45", "s", 25::ms, 25::ms),

            new Note("1|o2|a0.6", "q/3", 25::ms, 55::ms),
            new Note("1|o2|a0.6", "q/3", 25::ms, 55::ms),
            new Note("1|o2|a0.6", "q/3", 25::ms, 55::ms),
        ] @=> Note seq2A[];

        [
            new Note("2|o1|a0.6", "s", 25::ms, 25::ms),
            new Note("2|o1|a0.45", "s", 25::ms, 25::ms),
            new Note("2|o1|a0.5", "s", 25::ms, 25::ms),
            new Note("2|o1|a0.45", "s", 25::ms, 25::ms),

            new Note("3|o1|a0.6", "s", 25::ms, 25::ms),
            new Note("3|o1|a0.45", "s", 25::ms, 25::ms),
            new Note("3|o1|a0.5", "s", 25::ms, 25::ms),
            new Note("3|o1|a0.45", "s", 25::ms, 25::ms),

            new Note("0|o1|a0.6", "s", 25::ms, 25::ms),
            new Note("0|o1|a0.45", "s", 25::ms, 25::ms),
            new Note("0|o1|a0.5", "s", 25::ms, 25::ms),
            new Note("0|o1|a0.45", "s", 25::ms, 25::ms),

            new Note("0|o1|a0.6", "s", 25::ms, 25::ms),
            new Note("0|o1|a0.45", "s", 25::ms, 25::ms),
            new Note("0|o1|a0.5", "s", 25::ms, 25::ms),
            new Note("0|o1|a0.45", "s", 25::ms, 25::ms),
        ] @=> Note seq2B[];


        // Add sequences to scene
        this.setSeqs(
            [
                new Sequence(restMeasure, 8),
                new Sequence(seq1A, 4),
                new Sequence(seq1B, 2),
                new Sequence(seq1A, 2),

                new Sequence(seq2A, 2),
                new Sequence(seq1A, 1),
                new Sequence(seq2B, 1),
            ]
        );
    }
}


class Scene6 extends Scene {
    fun @construct() {
        [
            new RestNote("w"),
        ] @=> Note restMeasure[];

        [
            new Note("0|o1|a0.6", "s", 25::ms, 25::ms),
            new Note("0|o1|a0.45", "s", 25::ms, 25::ms),
            new Note("0|o1|a0.5", "s", 25::ms, 25::ms),
            new Note("0|o1|a0.45", "s", 25::ms, 25::ms),
        ] @=> Note seq1A[];


        // Add sequences to scene
        this.setSeqs(
            [
                new Sequence(seq1A, 8),
            ]
        );
    }
}


class Scene7 extends Scene {
    fun @construct() {
        [
            new RestNote("w"),
        ] @=> Note restMeasure[];

        [
            new Note("1|o1|a0.6", "s", 25::ms, 25::ms),
            new Note("1|o1|a0.45", "s", 25::ms, 25::ms),
            new Note("1|o1|a0.5", "s", 25::ms, 25::ms),
            new Note("1|o1|a0.45", "s", 25::ms, 25::ms),

            new Note("2|o1|a0.6", "s", 25::ms, 25::ms),
            new Note("2|o1|a0.45", "s", 25::ms, 25::ms),
            new Note("2|o1|a0.5", "s", 25::ms, 25::ms),
            new Note("2|o1|a0.45", "s", 25::ms, 25::ms),

            new Note("6|o1|a0.6", "s", 25::ms, 25::ms),
            new Note("6|o1|a0.45", "s", 25::ms, 25::ms),
            new Note("6|o1|a0.5", "s", 25::ms, 25::ms),
            new Note("6|o1|a0.45", "s", 25::ms, 25::ms),

            new Note("4|o1|a0.6", "s", 25::ms, 25::ms),
            new Note("4|o1|a0.45", "s", 25::ms, 25::ms),
            new Note("4|o1|a0.5", "s", 25::ms, 25::ms),
            new Note("4|o1|a0.45", "s", 25::ms, 25::ms),
        ] @=> Note seq1A[];

        [
            new Note("2|o1|a0.6", "s", 25::ms, 25::ms),
            new Note("2|o1|a0.45", "s", 25::ms, 25::ms),
            new Note("2|o1|a0.5", "s", 25::ms, 25::ms),
            new Note("2|o1|a0.45", "s", 25::ms, 25::ms),

            new Note("2|o1|a0.6", "s", 25::ms, 25::ms),
            new Note("2|o1|a0.45", "s", 25::ms, 25::ms),
            new Note("2|o1|a0.5", "s", 25::ms, 25::ms),
            new Note("2|o1|a0.45", "s", 25::ms, 25::ms),

            new Note("2|o1|a0.6", "s", 25::ms, 25::ms),
            new Note("2|o1|a0.45", "s", 25::ms, 25::ms),
            new Note("2|o1|a0.5", "s", 25::ms, 25::ms),
            new Note("2|o1|a0.45", "s", 25::ms, 25::ms),

            new Note("1|o1|a0.6", "s", 25::ms, 25::ms),
            new Note("1|o1|a0.45", "s", 25::ms, 25::ms),
            new Note("1|o1|a0.5", "s", 25::ms, 25::ms),
            new Note("1|o1|a0.45", "s", 25::ms, 25::ms),
        ] @=> Note seq1B[];

        [
            new Note("4|o1|a0.6", "s", 25::ms, 25::ms),
            new Note("4|o1|a0.45", "s", 25::ms, 25::ms),
            new Note("4|o1|a0.5", "s", 25::ms, 25::ms),
            new Note("4|o1|a0.45", "s", 25::ms, 25::ms),

            new Note("4|o1|a0.6", "s", 25::ms, 25::ms),
            new Note("4|o1|a0.45", "s", 25::ms, 25::ms),
            new Note("4|o1|a0.5", "s", 25::ms, 25::ms),
            new Note("4|o1|a0.45", "s", 25::ms, 25::ms),

            new Note("4|o1|a0.6", "s", 25::ms, 25::ms),
            new Note("4|o1|a0.45", "s", 25::ms, 25::ms),
            new Note("4|o1|a0.5", "s", 25::ms, 25::ms),
            new Note("4|o1|a0.45", "s", 25::ms, 25::ms),

            new Note("2|o1|a0.6", "s", 25::ms, 25::ms),
            new Note("2|o1|a0.45", "s", 25::ms, 25::ms),
            new Note("2|o1|a0.5", "s", 25::ms, 25::ms),
            new Note("2|o1|a0.45", "s", 25::ms, 25::ms),
        ] @=> Note seq1C[];

        [
            new Note("6|o1|a0.6", "s", 25::ms, 25::ms),
            new Note("6|o1|a0.45", "s", 25::ms, 25::ms),
            new Note("6|o1|a0.5", "s", 25::ms, 25::ms),
            new Note("6|o1|a0.45", "s", 25::ms, 25::ms),

            new Note("6|o1|a0.6", "s", 25::ms, 25::ms),
            new Note("6|o1|a0.45", "s", 25::ms, 25::ms),
            new Note("6|o1|a0.5", "s", 25::ms, 25::ms),
            new Note("6|o1|a0.45", "s", 25::ms, 25::ms),

            new Note("6|o1|a0.6", "s", 25::ms, 25::ms),
            new Note("6|o1|a0.45", "s", 25::ms, 25::ms),
            new Note("6|o1|a0.5", "s", 25::ms, 25::ms),
            new Note("6|o1|a0.45", "s", 25::ms, 25::ms),

            new Note("4|o1|a0.6", "s", 25::ms, 25::ms),
            new Note("4|o1|a0.45", "s", 25::ms, 25::ms),
            new Note("4|o1|a0.5", "s", 25::ms, 25::ms),
            new Note("4|o1|a0.45", "s", 25::ms, 25::ms),
        ] @=> Note seq1D[];

        [
            new Note("6|o1|a0.6", "s", 25::ms, 25::ms),
            new Note("6|o1|a0.45", "s", 25::ms, 25::ms),
            new Note("6|o1|a0.5", "s", 25::ms, 25::ms),
            new Note("6|o1|a0.45", "s", 25::ms, 25::ms),

            new Note("6|o1|a0.6", "s", 25::ms, 25::ms),
            new Note("6|o1|a0.45", "s", 25::ms, 25::ms),
            new Note("6|o1|a0.5", "s", 25::ms, 25::ms),
            new Note("6|o1|a0.45", "s", 25::ms, 25::ms),

            new Note("6|o1|a0.6", "s", 25::ms, 25::ms),
            new Note("6|o1|a0.45", "s", 25::ms, 25::ms),
            new Note("6|o1|a0.5", "s", 25::ms, 25::ms),
            new Note("6|o1|a0.45", "s", 25::ms, 25::ms),

            new Note("6|o1|a0.6", "s", 25::ms, 25::ms),
            new Note("6|o1|a0.45", "s", 25::ms, 25::ms),
            new Note("6|o1|a0.5", "s", 25::ms, 25::ms),
            new Note("6|o1|a0.45", "s", 25::ms, 25::ms),
        ] @=> Note seq1E[];


        // Add sequences to scene
        this.setSeqs(
            [
                new Sequence(seq1A, 8),
                new Sequence(seq1B, 2),
                new Sequence(seq1A, 2),
                new Sequence(seq1B, 2),
                new Sequence(seq1A, 2),
                new Sequence(seq1B, 2),
                new Sequence(seq1C, 1),
                new Sequence(seq1D, 1),
                new Sequence(seq1C, 1),
                new Sequence(seq1E, 3),
            ]
        );
    }
}


public class Etune3Voice2Score extends Score {
    fun @construct() {
        2 => this.voiceNum;

        // Load scenes
        this.scenes << new Scene1();
        this.scenes << new Scene2();
        this.scenes << new Scene3();
        this.scenes << new Scene4();
        this.scenes << new Scene5();
        this.scenes << new Scene6();
        this.scenes << new Scene7();
    }
}
