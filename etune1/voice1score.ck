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


class Scene2 extends Scene {
    fun @construct() {
        [
            new Note("9.8|o-1|a0.7", "s", 5::ms, 15::ms),
            new Note("9.8|o-1|a0.65", "s/2", 15::ms, 15::ms),
            new Note("9.6|o-1|a0.5", "s/2", 15::ms, 15::ms),
            new Note("9.8|o-1|a0.65", "s", 15::ms, 15::ms),
            new Note("9.6|o-1|a0.6", "s", 15::ms, 5::ms),
        ] @=> Note seq1A[];

        [
            new Note("10.2|o-1|a0.7", "s", 5::ms, 15::ms),
            new Note("9.8|o-1|a0.65", "s/2", 15::ms, 15::ms),
            new Note("9.4|o-1|a0.5", "s/2", 15::ms, 15::ms),
            new Note("9.8|o-1|a0.65", "s", 15::ms, 15::ms),
            new Note("9.2|o-1|a0.6", "s", 15::ms, 5::ms),
        ] @=> Note seq1B[];

        [
            new Note("10.5|o-1|a0.7", "s", 5::ms, 15::ms),
            new Note("9.8|o-1|a0.65", "s/2", 15::ms, 15::ms),
            new Note("9.0|o-1|a0.5", "s/2", 15::ms, 15::ms),
            new Note("9.5|o-1|a0.65", "s", 15::ms, 15::ms),
            new Note("8.8|o-1|a0.6", "s", 15::ms, 5::ms),
        ] @=> Note seq1C[];

        [
            new Note("10.8|o-1|a0.7", "s", 5::ms, 15::ms),
            new Note("9.6|o-1|a0.65", "s/2", 15::ms, 15::ms),
            new Note("8.7|o-1|a0.5", "s/2", 15::ms, 15::ms),
            new Note("10.2|o-1|a0.65", "s", 15::ms, 15::ms),
            new Note("8.5|o-1|a0.6", "s", 15::ms, 5::ms),
        ] @=> Note seq1D[];

        [
            new Note("10.9|o-1|a0.7", "s", 5::ms, 15::ms),
            new Note("9.3|o-1|a0.65", "s/2", 15::ms, 15::ms),
            new Note("8.3|o-1|a0.4", "s/2", 15::ms, 15::ms),
            new Note("10.4|o-1|a0.55", "s/3", 15::ms, 15::ms),
            new Note("10.4|o-1|a0.45", "s/3", 15::ms, 15::ms),
            new Note("10.5|o-1|a0.48", "s/3", 15::ms, 15::ms),
            new Note("8.2|o-1|a0.55", "s", 15::ms, 5::ms),
        ] @=> Note seq2A[];

        [
            new Note("11.2|o-1|a0.7", "s", 5::ms, 15::ms),
            new Note("9.1|o-1|a0.45", "s/2", 15::ms, 15::ms),
            new Note("8.1|o-1|a0.36", "s/2", 15::ms, 15::ms),
            new Note("10.5|o-1|a0.57", "s/3", 15::ms, 15::ms),
            new Note("10.6|o-1|a0.63", "s/3", 15::ms, 15::ms),
            new Note("10.5|o-1|a0.65", "s/3", 15::ms, 15::ms),
            new Note("8.1|o-1|a0.40", "s/2", 15::ms, 5::ms),
            new Note("8.0|o-1|a0.62", "s/2", 15::ms, 5::ms),
        ] @=> Note seq2B[];

        [
            new Note("11.5|o-1|a0.7", "s", 5::ms, 15::ms),
            new Note("9.3|o-1|a0.32", "s/2", 15::ms, 15::ms),
            new Note("8.1|o-1|a0.65", "s/2", 15::ms, 15::ms),
            new Note("10.8|o-1|a0.42", "s/3", 15::ms, 15::ms),
            new Note("10.2|o-1|a0.68", "s/3", 15::ms, 15::ms),
            new Note("10.8|o-1|a0.45", "s/3", 15::ms, 15::ms),
            new Note("7.9|o-1|a0.5", "s/2", 15::ms, 5::ms),
            new Note("8.2|o-1|a0.64", "s/2", 15::ms, 5::ms),
        ] @=> Note seq2C[];

        [
            new Note("11.8|o-1|a0.7", "s", 5::ms, 15::ms),
            new Note("10.5|o-1|a0.35", "s/2", 15::ms, 15::ms),
            new Note("7.5|o-1|a0.65", "s/2", 15::ms, 15::ms),
            new Note("11.2|o-1|a0.42", "s/3", 15::ms, 15::ms),
            new Note("10.0|o-1|a0.52", "s/3", 15::ms, 15::ms),
            new Note("11.2|o-1|a0.58", "s/3", 15::ms, 15::ms),
            new Note("7.9|o-1|a0.65", "s/2", 15::ms, 5::ms),
            new Note("8.2|o-1|a0.41", "s/2", 15::ms, 5::ms),
        ] @=> Note seq2D[];

        [
            new Note("11.8|o-1|a0.7", "s/2", 5::ms, 15::ms),
            new Note("10.5|o-1|a0.6", "s/2", 5::ms, 15::ms),

            new Note("11.2|o-1|a0.52", "s/4", 5::ms, 5::ms),
            new Note("7.5|o-1|a0.33", "s/4", 5::ms, 5::ms),
            new Note("7.2|o-1|a0.55", "s/4", 5::ms, 5::ms),
            new Note("7.8|o-1|a0.45", "s/4", 5::ms, 5::ms),

            new Note("11.2|o-1|a0.52", "s/3", 15::ms, 15::ms),
            new Note("10.0|o-1|a0.29", "s/3", 15::ms, 15::ms),
            new Note("11.2|o-1|a0.65", "s/3", 15::ms, 15::ms),
            new Note("7.4|o-1|a0.55", "s/2", 15::ms, 5::ms),
            new Note("8.1|o-1|a0.4", "s/2", 15::ms, 5::ms),
        ] @=> Note seq2E[];

        [
            new Note("11.8|o-1|a0.7", "s/2", 5::ms, 15::ms),
            new Note("10.5|o-1|a0.65", "s/2", 5::ms, 15::ms),

            new Note("11.2|o-1|a0.52", "s/4", 5::ms, 5::ms),
            new Note("6.5|o-1|a0.33", "s/4", 5::ms, 5::ms),
            new Note("6.2|o-1|a0.65", "s/4", 5::ms, 5::ms),
            new Note("6.8|o-1|a0.45", "s/4", 5::ms, 5::ms),

            new Note("11.2|o-1|a0.52", "s/3", 15::ms, 15::ms),
            new Note("9.8|o-1|a0.25", "s/3", 15::ms, 15::ms),
            new Note("11.2|o-1|a0.7", "s/3", 15::ms, 15::ms),
            new Note("7.1|o-1|a0.65", "s/2", 15::ms, 5::ms),
            new Note("8.4|o-1|a0.55", "s/2", 15::ms, 5::ms),
        ] @=> Note seq2F[];

        [
            new Note("11.8|o-1|a0.7", "s/4", 15::ms, 15::ms),
            new Note("10.5|o-1|a0.65", "s/4", 15::ms, 15::ms),
            new Note("11.8|o-1|a0.7", "s/4", 15::ms, 15::ms),
            new Note("10.5|o-1|a0.65", "s/4", 15::ms, 15::ms),

            new Note("11.2|o-1|a0.63", "s/4", 15::ms, 15::ms),
            new Note("6.5|o-1|a0.65", "s/4", 15::ms, 15::ms),
            new Note("6.2|o-1|a0.68", "s/4", 15::ms, 15::ms),
            new Note("6.8|o-1|a0.7", "s/4", 15::ms, 15::ms),

            new Note("11.2|o-1|a0.71", "s/3", 15::ms, 15::ms),
            new Note("9.8|o-1|a0.715", "s/3", 15::ms, 15::ms),
            new Note("11.2|o-1|a0.72", "s/3", 15::ms, 15::ms),
            new Note("7.1|o-1|a0.725", "s/4", 15::ms, 15::ms),
            new Note("8.4|o-1|a0.73", "s/4", 15::ms, 15::ms),
            new Note("7.1|o-1|a0.74", "s/4", 15::ms, 15::ms),
            new Note("8.4|o-1|a0.75", "s/4", 15::ms, 15::ms),
        ] @=> Note seq2G[];

        // Add sequences to scene
        this.setSeqs(
            [
                new Sequence(seq1A, 16),
                new Sequence(seq1B, 16),
                new Sequence(seq1C, 16),
                new Sequence(seq1D, 16),

                new Sequence(seq2A, 8),
                new Sequence(seq2B, 8),
                new Sequence(seq2C, 8),
                new Sequence(seq2D, 8),
                new Sequence(seq2E, 12),
                new Sequence(seq2F, 3),
                new Sequence(seq2G, 1),
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
            new Note("9.|o-1|a0.2", "w", 50::ms, 0::ms),
            new Note("9.|o-1|a0.2", "w", 0::ms, 700::ms),
            new Note("7.2|o-1|a0.17", "w", 500::ms, 0::ms),
            new Note("7.2|o-1|a0.17", "w", 0::ms, 700::ms),
        ] @=> Note seq1A[];

        [
            new Note("9.|o-1|a0.2", "w", 500::ms, 0::ms),
            new Note("9.|o-1|a0.2", "w", 0::ms, 700::ms),
            new Note("7.2|o-1|a0.17", "w", 500::ms, 0::ms),
            new Note("7.2|o-1|a0.17", "w", 0::ms, 700::ms),
        ] @=> Note seq1B[];

        [
            new Note("5.3|o-1|a0.15", "w", 500::ms, 0::ms),
            new Note("5.3|o-1|a0.15", "w", 0::ms, 700::ms),
            new Note("7.5|o-1|a0.11", "w", 500::ms, 0::ms),
            new Note("7.5|o-1|a0.11", "w", 0::ms, 700::ms),
        ] @=> Note seq1C[];

        [
            new Note("9.|o-1|a0.6", "w", 800::ms, 0::ms),
            new Note("9.|o-1|a0.58", "w", 0::ms, 800::ms),
            new Note("7.2|o-1|a0.6", "w", 800::ms, 0::ms),
            new Note("7.2|o-1|a0.58", "w", 0::ms, 700::ms),
        ] @=> Note seq2A[];

        [
            new Note("5.3|o-1|a0.6", "w", 500::ms, 0::ms),
            new Note("5.3|o-1|a0.56", "w", 0::ms, 800::ms),
            new Note("7.5|o-1|a0.6", "w", 500::ms, 0::ms),
            new Note("7.5|o-1|a0.55", "w", 0::ms, 700::ms),
        ] @=> Note seq2B[];

        [
            new Note("5.3|o-1|a0.6", "w", 500::ms, 0::ms),
            new Note("5.3|o-1|a0.56", "w", 0::ms, 800::ms),
            new Note("7.5|o-1|a0.6", "w", 500::ms, 0::ms),
            new Note("7.5|o-1|a0.6", "w", 0::ms, 0::ms),
        ] @=> Note seq2C[];

        [
            new Note("9.|o-1|a0.6", "w", 0::ms, 0::ms),
            new Note("9.|o-1|a0.58", "w", 0::ms, 800::ms),
            new Note("7.2|o-1|a0.6", "w", 800::ms, 0::ms),
            new Note("7.2|o-1|a0.58", "w", 0::ms, 800::ms),
        ] @=> Note seq3A[];

        [
            new Note("9.|o-1|a0.6", "w", 800::ms, 0::ms),
            new Note("9.|o-1|a0.58", "h.", 0::ms, 800::ms),
            new Note("10.5|o-1|a0.55", "q", 300::ms, 0::ms),
            new Note("7.2|o-1|a0.6", "w", 0::ms, 0::ms),
            new Note("7.2|o-1|a0.58", "w", 0::ms, 800::ms),
        ] @=> Note seq3B[];

        [
            new Note("9.|o-1|a0.6", "w", 800::ms, 0::ms),
            new Note("9.|o-1|a0.58", "w", 0::ms, 800::ms),
            new Note("7.2|o-1|a0.6", "w", 800::ms, 0::ms),
            new Note("7.2|o-1|a0.58", "w", 0::ms, 800::ms),
        ] @=> Note seq3C[];

        [
            new Note("5.3|o-1|a0.6", "w", 800::ms, 0::ms),
            new Note("5.3|o-1|a0.56", "w", 0::ms, 800::ms),
            new Note("7.0|o-1|a0.6", "w", 800::ms, 0::ms),
            new Note("7.0|o-1|a0.6", "w", 0::ms, 0::ms),
        ] @=> Note seq3D[];

        // Add sequences to scene
        this.setSeqs(
            [
                new Sequence(seq1A, 1),
                new Sequence(seq1B, 2),
                new Sequence(seq1C, 1),

                new Sequence(seq2A, 1),
                new Sequence(seq2B, 1),
                new Sequence(seq2A, 1),
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
            new Note("7.0|o-1|a0.6", "w", 0::ms, 1500::ms),
        ] @=> Note seq0A[];

        [
            new RestNote("h."),
            new Note("0|o0|a0.70", "te", 25::ms, 25::ms),
            new Note("0|o0|a0.65", "te", 25::ms, 25::ms),
            new Note("0|o0|a0.65", "te", 25::ms, 25::ms),
        ] @=> Note seq1A[];

        [
            new Note("0|o0|a0.70", "s", 25::ms, 25::ms),
            new Note("0|o0|a0.6", "s", 25::ms, 25::ms),
            new Note("10|o-1|a0.7", "e", 25::ms, 25::ms),

            new RestNote("h"),
            new Note("0|o0|a0.70", "te", 25::ms, 25::ms),
            new Note("0|o0|a0.65", "te", 25::ms, 25::ms),
            new Note("0|o0|a0.65", "te", 25::ms, 25::ms),
        ] @=> Note seq1B[];

        [
            new Note("0|o0|a0.70", "s", 25::ms, 25::ms),
            new Note("0|o0|a0.6", "s", 25::ms, 25::ms),
            new Note("8.5|o-1|a0.7", "e", 25::ms, 25::ms),

            new RestNote("h"),
            new Note("0|o0|a0.70", "te", 25::ms, 25::ms),
            new Note("0|o0|a0.65", "te", 25::ms, 25::ms),
            new Note("0|o0|a0.65", "te", 25::ms, 25::ms),
        ] @=> Note seq1C[];

        [
            new Note("0|o0|a0.70", "s", 25::ms, 25::ms),
            new Note("0|o0|a0.6", "s", 25::ms, 25::ms),
            new Note("8.5|o-1|a0.7", "e", 25::ms, 25::ms),

            new RestNote("h"),
            new Note("8.5|o-1|a0.70", "te", 25::ms, 25::ms),
            new Note("8|o-1|a0.65", "te", 25::ms, 25::ms),
            new Note("8.5|o-1|a0.65", "te", 25::ms, 25::ms),
        ] @=> Note seq1D[];

        [
            new Note("0|o0|a0.70", "s", 25::ms, 25::ms),
            new Note("0|o0|a0.6", "s", 25::ms, 25::ms),
            new Note("10.5|o-1|a0.7", "e", 25::ms, 25::ms),

            new RestNote("h."),
        ] @=> Note seq1E[];

        [
            new Note("0|o0|a0.20", "s", 25::ms, 25::ms),
            new Note("0|o0|a0.25", "s", 25::ms, 25::ms),
            new Note("0|o0|a0.30", "s", 25::ms, 25::ms),
            new Note("0|o0|a0.35", "s", 25::ms, 25::ms),
            new Note("0|o0|a0.40", "s", 25::ms, 25::ms),
            new Note("0|o0|a0.45", "s", 25::ms, 25::ms),
            new Note("0|o0|a0.50", "s", 25::ms, 25::ms),
            new Note("0|o0|a0.55", "s", 25::ms, 25::ms),
            new Note("0|o0|a0.60", "s", 25::ms, 25::ms),
            new Note("0|o0|a0.65", "s", 25::ms, 25::ms),
            new Note("0|o0|a0.68", "s", 25::ms, 25::ms),
            new Note("0|o0|a0.65", "s", 25::ms, 25::ms),
            new Note("0|o0|a0.70", "s", 25::ms, 25::ms),
            new Note("0|o0|a0.55", "s", 25::ms, 25::ms),
            new Note("0|o0|a0.65", "s", 25::ms, 25::ms),
            new Note("0|o0|a0.45", "s", 25::ms, 25::ms),
        ] @=> Note seq1F[];

        [
            new Note("0|o0|a0.70", "s", 25::ms, 25::ms),
            new Note("0|o0|a0.55", "s", 25::ms, 25::ms),
            new Note("0|o0|a0.65", "s", 25::ms, 25::ms),
            new Note("0|o0|a0.45", "s", 25::ms, 25::ms),
        ] @=> Note seq2A[];

        [
            new Note("1.5|o0|a0.65", "s", 25::ms, 25::ms),
            new Note("1.5|o0|a0.50", "s", 25::ms, 25::ms),
            new Note("1.5|o0|a0.60", "s", 25::ms, 25::ms),
            new Note("1.5|o0|a0.40", "s", 25::ms, 25::ms),
        ] @=> Note seq2B[];

        [
            new Note("10.5|o-1|a0.60", "s", 25::ms, 25::ms),
            new Note("10.5|o-1|a0.45", "s", 25::ms, 25::ms),
            new Note("10.5|o-1|a0.55", "s", 25::ms, 25::ms),
            new Note("10.5|o-1|a0.35", "s", 25::ms, 25::ms),
        ] @=> Note seq2C[];

        [
            new Note("0.3|o0|a0.55", "s", 25::ms, 25::ms),
            new Note("0.3|o0|a0.40", "s", 25::ms, 25::ms),
            new Note("0.3|o0|a0.50", "s", 25::ms, 25::ms),
            new Note("0.3|o0|a0.30", "s", 25::ms, 25::ms),
        ] @=> Note seq2D[];

        [
            new Note("7|o-1|a0.50", "s", 25::ms, 25::ms),
            new Note("7|o-1|a0.35", "s", 25::ms, 25::ms),
            new Note("7|o-1|a0.45", "s", 25::ms, 25::ms),
            new Note("7|o-1|a0.25", "s", 25::ms, 25::ms),
        ] @=> Note seq2E[];

        [
            new Note("0|o0|a0.45", "s", 25::ms, 25::ms),
            new Note("0.1|o0|a0.35", "s", 25::ms, 25::ms),
            new Note("11.8|o-1|a0.45", "s", 25::ms, 25::ms),
            new Note("0|o0|a0.25", "s", 25::ms, 25::ms),
        ] @=> Note seq2F[];

        // [
        //     new Note("0|o0|a0.50", "s", 25::ms, 25::ms),
        //     new RestNote("s"),
        //     new Note("0|o0|a0.45", "s", 25::ms, 25::ms),
        //     new RestNote("s"),
        // ] @=> Note seq2F[];

        // [
        //     new Note("0|o0|a0.50", "s", 25::ms, 25::ms),
        //     new RestNote("e."),
        //     new RestNote("h"),
        // ] @=> Note seq2G[];


        // Add sequences to scene
        this.setSeqs(
            [
                new Sequence(seq0A, 1),
                new Sequence(restMeasure, 2),
                new Sequence(seq1A, 1),
                new Sequence(seq1B, 4),
                new Sequence(seq1C, 1),
                new Sequence(seq1D, 1),
                new Sequence(seq1B, 4),
                new Sequence(seq1C, 1),
                new Sequence(seq1E, 1),
                new Sequence(restMeasure, 3),
                new Sequence(seq1F, 1),
                new Sequence(seq2A, 16),
                new Sequence(seq2B, 8),
                new Sequence(seq2A, 8),
                new Sequence(seq2B, 8),

                new Sequence(seq2A, 8),
                new Sequence(seq2B, 8),
                new Sequence(seq2C, 8),
                new Sequence(seq2D, 8),

                new Sequence(seq2E, 8),
                new Sequence(seq2F, 16),
                // new Sequence(seq2F, 2),
                // new Sequence(seq2G, 1),
            ]
        );
    }
}


public class Etune1Voice1Score extends Score {
    fun @construct() {
        1 => this.voiceNum;

        // Load scenes
        this.scenes << new Scene1();
        this.scenes << new Scene2();
        this.scenes << new Scene3();
        this.scenes << new Scene4();
    }
}
