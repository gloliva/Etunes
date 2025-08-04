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
            new Note("0|o1|a0.0.52", "te", 25::ms, 25::ms),
            new Note("7.7|o0|a0.55", "te", 25::ms, 25::ms),
            new Note("11.5|o0|a0.58", "te", 25::ms, 25::ms),

            new Note("0|o1|a0.61", "te", 25::ms, 25::ms),
            new Note("8.1|o0|a0.64", "te", 25::ms, 25::ms),
            new Note("11.7|o0|a0.67", "te", 25::ms, 25::ms),

            new Note("0|o1|a0.69", "te", 25::ms, 0::ms),
            new Note("8.5|o0|a0.71", "te", 0::ms, 0::ms),
            new Note("11.8|o0|a0.72", "te", 0::ms, 0::ms),

            new Note("0|o1|a0.72", "te", 0::ms, 0::ms),
            new Note("8.9|o0|a0.74", "te", 0::ms, 0::ms),
            new Note("0.4|o1|a0.72", "te", 0::ms, 0::ms),
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
                new Sequence(seq4C, 2),
                new Sequence(seq4D, 2),
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

        [
            new Note("0.2|o1|a0.70", "te", 0::ms, 0::ms),
            new Note("11.8|o0|a0.65", "te", 0::ms, 0::ms),
            new Note("11.3|o0|a0.63", "te", 0::ms, 0::ms),

            new Note("11.7|o0|a0.58", "te", 0::ms, 0::ms),
            new Note("0.1|o1|a0.55", "te", 0::ms, 0::ms),
            new Note("0.7|o1|a0.53", "te", 0::ms, 0::ms),

            new Note("0.9|o1|a0.5", "te", 0::ms, 0::ms),
            new Note("1.1|o1|a0.46", "te", 0::ms, 0::ms),
            new Note("0.3|o1|a0.42", "te", 0::ms, 0::ms),

            new Note("11.8|o0|a0.38", "te", 0::ms, 0::ms),
            new Note("11.2|o0|a0.35", "te", 0::ms, 0::ms),
            new Note("11.5|o0|a0.3", "te", 0::ms, 0::ms),
        ] @=> Note seq1A[];

        [
            new Note("0.2|o1|a0.3", "te", 0::ms, 0::ms),
            new Note("11.8|o0|a0.28", "te", 0::ms, 0::ms),
            new Note("11.3|o0|a0.25", "te", 0::ms, 0::ms),

            new Note("11.7|o0|a0.21", "te", 0::ms, 0::ms),
            new Note("0.1|o1|a0.19", "te", 0::ms, 0::ms),
            new Note("0.7|o1|a0.16", "te", 0::ms, 0::ms),

            new Note("0.9|o1|a0.12", "te", 0::ms, 0::ms),
            new Note("1.1|o1|a0.08", "te", 0::ms, 0::ms),
            new Note("0.3|o1|a0.06", "te", 0::ms, 0::ms),

            new Note("11.8|o0|a0.02", "te", 0::ms, 0::ms),
            new Note("11.2|o0|a0.0", "te", 0::ms, 0::ms),
            new Note("11.5|o0|a0.0", "te", 0::ms, 25::ms),
        ] @=> Note seq1B[];

        [
            new Note("0.2|o2|a0.033", "te", 0::ms, 0::ms),
            new Note("11.8|o1|a0.076", "te", 0::ms, 0::ms),
            new Note("11.3|o1|a0.11", "te", 0::ms, 0::ms),

            new Note("11.7|o1|a0.133", "te", 0::ms, 0::ms),
            new Note("0.1|o2|a0.166", "te", 0::ms, 0::ms),
            new Note("0.7|o2|a0.21", "te", 0::ms, 0::ms),

            new Note("0.9|o2|a0.243", "te", 0::ms, 0::ms),
            new Note("1.1|o2|a0.276", "te", 0::ms, 0::ms),
            new Note("0.3|o2|a0.3", "te", 0::ms, 0::ms),

            new Note("11.8|o1|a0.323", "te", 0::ms, 0::ms),
            new Note("11.2|o1|a0.366", "te", 0::ms, 0::ms),
            new Note("11.5|o1|a0.42", "te", 0::ms, 0::ms),
        ] @=> Note seq2A[];

        [
            new Note("0.2|o2|a0.433", "te", 0::ms, 0::ms),
            new Note("11.8|o1|a0.466", "te", 0::ms, 0::ms),
            new Note("11.3|o1|a0.49", "te", 0::ms, 0::ms),

            new Note("11.7|o1|a0.523", "te", 0::ms, 0::ms),
            new Note("0.1|o2|a0.566", "te", 0::ms, 0::ms),
            new Note("0.7|o2|a0.611", "te", 0::ms, 0::ms),

            new Note("0.9|o2|a0.62", "te", 0::ms, 0::ms),
            new Note("1.1|o2|a0.566", "te", 0::ms, 0::ms),
            new Note("0.3|o2|a0.513", "te", 0::ms, 0::ms),

            new Note("11.8|o1|a0.5", "te", 0::ms, 0::ms),
            new Note("11.2|o1|a0.476", "te", 0::ms, 0::ms),
            new Note("11.5|o1|a0.433", "te", 0::ms, 0::ms),
        ] @=> Note seq2B[];

        [
            new Note("0.2|o2|a0.41", "te", 0::ms, 0::ms),
            new Note("11.8|o1|a0.386", "te", 0::ms, 0::ms),
            new Note("11.3|o1|a0.353", "te", 0::ms, 0::ms),

            new Note("11.7|o1|a0.32", "te", 0::ms, 0::ms),
            new Note("0.1|o2|a0.276", "te", 0::ms, 0::ms),
            new Note("0.7|o2|a0.243", "te", 0::ms, 0::ms),

            new Note("0.9|o2|a0.21", "te", 0::ms, 0::ms),
            new Note("1.1|o2|a0.146", "te", 0::ms, 0::ms),
            new Note("0.3|o2|a0.133", "te", 0::ms, 0::ms),

            new Note("11.8|o1|a0.11", "te", 0::ms, 0::ms),
            new Note("11.2|o1|a0.066", "te", 0::ms, 0::ms),
            new Note("11.5|o1|a0.033", "te", 0::ms, 25::ms),
        ] @=> Note seq2C[];

        [
            new Note("5.2|o2|a0.033", "te", 25::ms, 0::ms),
            new Note("4.8|o2|a0.076", "te", 0::ms, 0::ms),
            new Note("4.3|o2|a0.11", "te", 0::ms, 0::ms),

            new Note("4.7|o2|a0.133", "te", 0::ms, 0::ms),
            new Note("5.1|o2|a0.166", "te", 0::ms, 0::ms),
            new Note("5.7|o2|a0.21", "te", 0::ms, 0::ms),

            new Note("5.9|o2|a0.243", "te", 0::ms, 0::ms),
            new Note("6.1|o2|a0.276", "te", 0::ms, 0::ms),
            new Note("5.3|o2|a0.3", "te", 0::ms, 0::ms),

            new Note("4.8|o2|a0.323", "te", 0::ms, 0::ms),
            new Note("4.2|o2|a0.366", "te", 0::ms, 0::ms),
            new Note("4.5|o2|a0.42", "te", 0::ms, 0::ms),
        ] @=> Note seq3A[];

        [
            new Note("5.2|o2|a0.433", "te", 0::ms, 0::ms),
            new Note("4.8|o2|a0.466", "te", 0::ms, 0::ms),
            new Note("4.3|o2|a0.49", "te", 0::ms, 0::ms),

            new Note("4.7|o2|a0.523", "te", 0::ms, 0::ms),
            new Note("5.1|o2|a0.566", "te", 0::ms, 0::ms),
            new Note("5.7|o2|a0.611", "te", 0::ms, 0::ms),

            new Note("5.9|o2|a0.62", "te", 0::ms, 0::ms),
            new Note("6.1|o2|a0.566", "te", 0::ms, 0::ms),
            new Note("5.3|o2|a0.513", "te", 0::ms, 0::ms),

            new Note("4.8|o2|a0.5", "te", 0::ms, 0::ms),
            new Note("4.2|o2|a0.476", "te", 0::ms, 0::ms),
            new Note("4.5|o2|a0.433", "te", 0::ms, 0::ms),
        ] @=> Note seq3B[];

        [
            new Note("5.2|o2|a0.41", "te", 0::ms, 0::ms),
            new Note("4.8|o2|a0.386", "te", 0::ms, 0::ms),
            new Note("4.3|o2|a0.353", "te", 0::ms, 0::ms),

            new Note("4.7|o2|a0.32", "te", 0::ms, 0::ms),
            new Note("5.1|o2|a0.276", "te", 0::ms, 0::ms),
            new Note("5.7|o2|a0.243", "te", 0::ms, 0::ms),

            new Note("5.9|o2|a0.21", "te", 0::ms, 0::ms),
            new Note("6.1|o2|a0.146", "te", 0::ms, 0::ms),
            new Note("5.3|o2|a0.133", "te", 0::ms, 0::ms),

            new Note("4.8|o2|a0.11", "te", 0::ms, 0::ms),
            new Note("4.2|o2|a0.066", "te", 0::ms, 0::ms),
            new Note("4.5|o2|a0.033", "te", 0::ms, 25::ms),
        ] @=> Note seq3C[];

        [
            new Note("10.2|o1|a0.033", "te", 25::ms, 0::ms),
            new Note("9.8|o1|a0.076", "te", 0::ms, 0::ms),
            new Note("9.3|o1|a0.11", "te", 0::ms, 0::ms),

            new Note("9.7|o1|a0.133", "te", 0::ms, 0::ms),
            new Note("10.1|o1|a0.166", "te", 0::ms, 0::ms),
            new Note("10.7|o1|a0.21", "te", 0::ms, 0::ms),

            new Note("10.9|o1|a0.243", "te", 0::ms, 0::ms),
            new Note("11.1|o1|a0.276", "te", 0::ms, 0::ms),
            new Note("10.3|o1|a0.3", "te", 0::ms, 0::ms),

            new Note("9.8|o1|a0.323", "te", 0::ms, 0::ms),
            new Note("9.2|o1|a0.366", "te", 0::ms, 0::ms),
            new Note("9.5|o1|a0.42", "te", 0::ms, 0::ms),
        ] @=> Note seq4A[];

        [
            new Note("10.2|o1|a0.433", "te", 0::ms, 0::ms),
            new Note("9.8|o1|a0.466", "te", 0::ms, 0::ms),
            new Note("9.3|o1|a0.49", "te", 0::ms, 0::ms),

            new Note("9.7|o1|a0.523", "te", 0::ms, 0::ms),
            new Note("10.1|o1|a0.566", "te", 0::ms, 0::ms),
            new Note("10.7|o1|a0.611", "te", 0::ms, 0::ms),

            new Note("10.8|o1|a0.62", "te", 0::ms, 0::ms),
            new Note("10.9|o1|a0.63", "te", 0::ms, 0::ms),
            new Note("11.0|o1|a0.64", "te", 0::ms, 0::ms),

            new Note("11.0|o1|a0.65", "te", 0::ms, 0::ms),
            new Note("11.0|o1|a0.68", "te", 0::ms, 0::ms),
            new Note("11.0|o1|a0.7", "te", 0::ms, 0::ms),
        ] @=> Note seq4B[];

        [
            new Note("11.0|o1|a0.7", "w", 0::ms, 0::ms),
            new Note("10.8|o1|a0.68", "w", 0::ms, 0::ms),
            new Note("9.2|o1|a0.7", "w", 0::ms, 0::ms),
            new Note("8.9|o1|a0.68", "w", 0::ms, 0::ms),
        ] @=> Note seq5A[];

        [
            new Note("11.1|o1|a0.7", "w", 0::ms, 0::ms),
            new Note("10.7|o1|a0.68", "w", 0::ms, 0::ms),
            new Note("9.3|o1|a0.7", "w", 0::ms, 0::ms),
            new Note("9.1|o1|a0.68", "w", 0::ms, 0::ms),

            new Note("11.1|o1|a0.7", "w", 0::ms, 0::ms),
            new Note("10.9|o1|a0.68", "w", 0::ms, 0::ms),
            new Note("9.2|o1|a0.7", "w", 0::ms, 0::ms),
            new Note("8.9|o1|a0.68", "w", 0::ms, 0::ms),
        ] @=> Note seq5B[];

        [
            new Note("11|o1|a0.65", "w", 0::ms, 0::ms),
            new Note("11|o1|a0.65", "w", 0::ms, 2200::ms),
        ] @=> Note seq5C[];

        [
            new Note("11|o1|a0.42", "w", 1800::ms, 0::ms),
            new Note("11.1|o1|a0.42", "w", 0::ms, 0::ms),
            new Note("11.2|o1|a0.42", "w", 0::ms, 0::ms),
            new Note("11.3|o1|a0.42", "w", 0::ms, 50::ms),
        ] @=> Note seq6A[];


        // Add sequences to scene
        this.setSeqs(
            [
                new Sequence(seq1A, 1),
                new Sequence(seq1B, 1),
                new Sequence(restMeasure, 2),
                new Sequence(seq2A, 1),
                new Sequence(seq2B, 1),
                new Sequence(seq2C, 1),
                new Sequence(restMeasure, 2),
                new Sequence(seq3A, 1),
                new Sequence(seq3B, 1),
                new Sequence(seq3C, 1),
                new Sequence(restMeasure, 2),
                new Sequence(seq4A, 1),
                new Sequence(seq4B, 1),

                new Sequence(seq5A, 2),
                new Sequence(seq5B, 1),
                new Sequence(seq5C, 1),

                new Sequence(restMeasure, 10),
                new Sequence(seq6A, 1),
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
            new Note("0.2|o2|a0.65", "s", 25::ms, 25::ms),
            new Note("3.1|o2|a0.45", "s", 25::ms, 25::ms),
            new Note("1.8|o2|a0.65", "s", 25::ms, 25::ms),
            new Note("3.1|o2|a0.55", "s", 25::ms, 25::ms),
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

                new Sequence(seq2A, 16),
                new Sequence(restMeasure, 2),
                new Sequence(seq2A, 8),
                new Sequence(restMeasure, 2),
                new Sequence(seq2A, 8),
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
