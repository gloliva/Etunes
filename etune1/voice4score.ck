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

        // Add sequences to scene
        this.setSeqs(
            [
                new Sequence(restMeasure, 28),
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
            new Note("1.2|o2|a0.18", "h", 700::ms, 0::ms),
            new Note("1.1|o2|a0.17", "h", 0::ms, 0::ms),
            new Note("1.0|o2|a0.16", "h", 0::ms, 0::ms),
            new Note("0.9|o2|a0.15", "h", 0::ms, 0::ms),
        ] @=> Note seq1A[];

        [
            new Note("0.8|o2|a0.15", "q", 0::ms, 0::ms),
            new Note("0.7|o2|a0.14", "q", 0::ms, 0::ms),
            new Note("0.8|o2|a0.15", "q", 0::ms, 0::ms),
            new Note("0.9|o2|a0.14", "q", 0::ms, 0::ms),
        ] @=> Note seq1B[];

        [
            new Note("1.|o2|a0.15", "w", 0::ms, 1200::ms),
        ] @=> Note seq1C[];

        [
            new Note("1.|o2|a0.25", "w", 1800::ms, 150::ms),
        ] @=> Note seq1D[];

        [
            new Note("1.0|o0|a0.39", "w", 500::ms, 0::ms),
            new Note("1.0|o0|a0.42", "w", 0::ms, 0::ms),
            new Note("11.0|o0|a0.45", "w", 0::ms, 0::ms),
            new Note("11|o0|a0.42", "w", 0::ms, 700::ms),

            new Note("1.0|o0|a0.45", "w", 500::ms, 0::ms),
            new Note("1.0|o0|a0.42", "w", 0::ms, 0::ms),
            new Note("11.0|o0|a0.45", "w", 0::ms, 0::ms),
            new Note("11|o0|a0.42", "w", 0::ms, 700::ms),
        ] @=> Note seq2A[];

        [
            new Note("1.0|o0|a0.45", "w", 500::ms, 0::ms),
            new Note("0.8|o0|a0.42", "w", 0::ms, 0::ms),
            new Note("11.2|o0|a0.45", "w", 0::ms, 0::ms),
            new Note("10.9|o0|a0.42", "w", 0::ms, 700::ms),
        ] @=> Note seq2B[];

        [
            new Note("1.0|o0|a0.45", "w", 500::ms, 0::ms),
            new Note("0.8|o0|a0.42", "w", 0::ms, 0::ms),
            new Note("11.2|o0|a0.45", "w", 0::ms, 0::ms),
            new Note("10.9|o0|a0.42", "w", 0::ms, 0::ms),
        ] @=> Note seq2C[];

        [
            new Note("1.0|o0|a0.45", "w", 0::ms, 0::ms),
            new Note("1.0|o0|a0.45", "w", 0::ms, 1200::ms),
            new Note("11.0|o0|a0.45", "w", 800::ms, 0::ms),
            new Note("11.0|o0|a0.45", "w", 0::ms, 1200::ms),
        ] @=> Note seq3A[];

        [
            new Note("1.0|o0|a0.45", "w", 800::ms, 0::ms),
            new Note("1.0|o0|a0.45", "h.", 0::ms, 1000::ms),
            new Note("1.0|o1|a0.45", "q", 300::ms, 0::ms),
            new Note("11.0|o0|a0.45", "w", 0::ms, 0::ms),
            new Note("11.0|o0|a0.45", "w", 0::ms, 1200::ms),
        ] @=> Note seq3B[];


        [
            new Note("1.0|o0|a0.45", "w", 800::ms, 0::ms),
            new Note("1.0|o0|a0.45", "w", 0::ms, 1200::ms),
            new Note("11.0|o0|a0.45", "w", 800::ms, 0::ms),
            new Note("11.0|o0|a0.45", "w", 0::ms, 1200::ms),
        ] @=> Note seq3C[];

        [
            new Note("7.0|o0|a0.45", "w", 800::ms, 0::ms),
            new Note("7.0|o0|a0.45", "w", 0::ms, 1200::ms),
            new Note("9.0|o0|a0.45", "w", 800::ms, 0::ms),
            new Note("9.0|o0|a0.45", "w", 0::ms, 0::ms),
        ] @=> Note seq3D[];


        // Add sequences to scene
        this.setSeqs(
            [
                new Sequence(restMeasure, 5),
                new Sequence(seq1A, 1),
                new Sequence(seq1B, 1),
                new Sequence(seq1C, 1),
                new Sequence(restMeasure, 1),
                new Sequence(seq1A, 1),
                new Sequence(seq1B, 1),
                new Sequence(seq1C, 1),
                new Sequence(restMeasure, 1),
                new Sequence(seq1D, 1),

                new Sequence(seq2A, 1),
                new Sequence(seq2B, 1),
                new Sequence(seq2C, 1),

                new Sequence(seq3A, 1),
                new Sequence(seq3B, 1),
                new Sequence(seq3C, 1),
                new Sequence(seq3D, 1),
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
            new Note("9.0|o0|a0.45", "w", 0::ms, 1500::ms),
        ] @=> Note seq1A[];

        [
            new Note("0|o0|a0.38", "w", 2000::ms, 0::ms),
            new Note("0|o0|a0.38", "w", 0::ms, 1000::ms),

            new Note("1.5|o0|a0.35", "w", 1000::ms, 0::ms),
            new Note("1.5|o0|a0.35", "w", 0::ms, 1000::ms),

            new Note("10.5|o-1|a0.30", "w", 1000::ms, 0::ms),
            new Note("10.5|o-1|a0.30", "w", 0::ms, 1000::ms),

            new Note("0|o0|a0.25", "w", 1000::ms, 0::ms),
            new Note("0|o0|a0.25", "w", 0::ms, 1000::ms),

            new Note("7|o-1|a0.20", "w", 1000::ms, 0::ms),
            new Note("7|o-1|a0.18", "w", 0::ms, 0::ms),

            new Note("0|o0|a0.16", "w", 0::ms, 0::ms),
            new Note("0|o0|a0.15", "w", 0::ms, 2000::ms),
        ] @=> Note seq5A[];

        [
            new Note("0|o2|a0.1", "w", 2000::ms, 0::ms),
        ] @=> Note seq5B[];

        [
            new Note("0.05|o2|a0.1", "e", 0::ms, 0::ms),
            new Note("0.12|o2|a0.08", "e", 0::ms, 0::ms),
            new Note("0.15|o2|a0.07", "e", 0::ms, 0::ms),
            new Note("0.18|o2|a0.06", "e", 0::ms, 0::ms),
            new Note("0.21|o2|a0.05", "e", 0::ms, 0::ms),
            new Note("0.24|o2|a0.04", "e", 0::ms, 0::ms),
            new Note("0.26|o2|a0.03", "e", 0::ms, 0::ms),
            new Note("0.31|o2|a0.02", "e", 0::ms, 0::ms),
        ] @=> Note seq5C[];

        [
            new Note("0.30|o2|a0.019", "q", 0::ms, 0::ms),
            new Note("0.29|o2|a0.017", "q", 0::ms, 0::ms),
            new Note("0.285|o2|a0.015", "q", 0::ms, 0::ms),
            new Note("0.28|o2|a0.014", "q", 0::ms, 0::ms),

            new Note("0.27|o2|a0.013", "q", 0::ms, 0::ms),
            new Note("0.26|o2|a0.011", "q", 0::ms, 0::ms),
            new Note("0.25|o2|a0.010", "q", 0::ms, 0::ms),
            new Note("0.24|o2|a0.009", "q", 0::ms, 0::ms),

            new Note("0.235|o2|a0.008", "w", 0::ms, 1000::ms),
        ] @=> Note seq5D[];


        // Add sequences to scene
        this.setSeqs(
            [
                new Sequence(seq1A, 1),
                new Sequence(restMeasure, 29),
                new Sequence(seq5A, 1),
                new Sequence(restMeasure, 1),
                new Sequence(seq5B, 1),
                new Sequence(seq5C, 1),
                new Sequence(seq5D, 1),
            ]
        );
    }
}

public class Etune1Voice4Score extends Score {
    fun @construct() {
        4 => this.voiceNum;

        // Load scenes
        this.scenes << new Scene1();
        this.scenes << new Scene2();
        this.scenes << new Scene3();
        this.scenes << new Scene4();
    }
}
