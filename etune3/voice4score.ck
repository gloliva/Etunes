@import "../notation.ck"


class Scene1 extends Scene {
    fun @construct() {
        [
            new RestNote("w"),
        ] @=> Note restMeasure[];

        [
            new Note("0|o2|a0.05", "s", 25::ms, 25::ms),
            new Note("0|o2|a0.07", "s", 25::ms, 25::ms),
            new Note("0|o2|a0.03", "s", 25::ms, 25::ms),
            new Note("0|o2|a0.10", "s", 25::ms, 25::ms),
        ] @=> Note seq1A[];

        [
            new Note("0|o2|a0.10", "s", 25::ms, 25::ms),
            new Note("0|o2|a0.12", "s", 25::ms, 25::ms),
            new Note("0|o2|a0.08", "s", 25::ms, 25::ms),
            new Note("0|o2|a0.15", "s", 25::ms, 25::ms),
        ] @=> Note seq1B[];

        [
            new Note("0|o2|a0.15", "s", 25::ms, 25::ms),
            new Note("0|o2|a0.17", "s", 25::ms, 25::ms),
            new Note("0|o2|a0.13", "s", 25::ms, 25::ms),
            new Note("0|o2|a0.20", "s", 25::ms, 25::ms),
        ] @=> Note seq1C[];

        [
            new Note("0|o2|a0.2", "s", 25::ms, 25::ms),
            new Note("0|o2|a0.22", "s", 25::ms, 25::ms),
            new Note("0|o2|a0.18", "s", 25::ms, 25::ms),
            new Note("0|o2|a0.25", "s", 25::ms, 25::ms),
        ] @=> Note seq1D[];

        [
            new Note("0|o2|a0.05", "s", 25::ms, 25::ms),
            new Note("0|o2|a0.07", "s", 25::ms, 25::ms),
            new Note("0|o2|a0.03", "s", 25::ms, 25::ms),
            new Note("0|o2|a0.10", "s", 25::ms, 25::ms),
        ] @=> Note seq2A[];

        [
            new Note("0|o2|a0.02", "s", 35::ms, 35::ms),
            new Note("0|o2|a0.04", "s", 35::ms, 35::ms),
            new Note("0|o2|a0.01", "s", 35::ms, 35::ms),
            new Note("0|o2|a0.08", "s", 35::ms, 35::ms),
        ] @=> Note seq2B[];

        // Add sequences to scene
        this.setSeqs(
            [
                new Sequence(restMeasure, 24),
                new Sequence(seq1A, 8),
                new Sequence(seq1B, 4),
                new Sequence(seq1C, 4),
                new Sequence(seq1D, 16),
                new Sequence(seq2A, 12),
                new Sequence(seq2B, 8),
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
            new Note("0|o2|a0.3", "te", 25::ms, 75::ms),
            new Note("1|o1|a0.27", "te", 75::ms, 25::ms),
            new Note("0|o2|a0.23", "te", 25::ms, 75::ms),
        ] @=> Note seq1A[];

        [
            new Note("1|o2|a0.3", "te", 25::ms, 75::ms),
            new Note("1|o1|a0.27", "te", 75::ms, 25::ms),
            new Note("0|o2|a0.22", "te", 25::ms, 75::ms),
        ] @=> Note seq1B[];

        [
            new Note("0|o1|a0.3", "e", 25::ms, 125::ms),
            new Note("1|o1|a0.23", "e/3", 25::ms, 15::ms),
            new Note("1|o2|a0.21", "e/3", 25::ms, 15::ms),
            new Note("0|o1|a0.23", "e/3", 25::ms, 15::ms),
        ] @=> Note seq2A[];

        [
            new Note("0|o1|a0.3", "s", 25::ms, 15::ms),
            new Note("1|o1|a0.27", "s", 15::ms, 25::ms),
            new Note("0|o2|a0.23", "e/3", 25::ms, 15::ms),
            new Note("1|o2|a0.21", "e/3", 25::ms, 15::ms),
            new Note("0|o1|a0.23", "e/3", 25::ms, 15::ms),
        ] @=> Note seq2B[];

        // Add sequences to scene
        this.setSeqs(
            [
                new Sequence(seq1A, 8),
                new Sequence(seq1B, 8),
                new Sequence(seq2A, 8),
                new Sequence(seq2B, 8),
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
            new Note("1|o0|a0.3", "te", 50::ms, 50::ms),
            new Note("0|o0|a0.25", "te", 50::ms, 50::ms),
            new Note("2|o0|a0.2", "te", 50::ms, 50::ms),

            new Note("1|o1|a0.3", "te", 50::ms, 50::ms),
            new Note("0|o0|a0.25", "te", 50::ms, 50::ms),
            new Note("2|o1|a0.3", "te", 50::ms, 50::ms),

            new Note("1|o2|a0.3", "te", 50::ms, 50::ms),
            new Note("0|o1|a0.25", "te", 50::ms, 50::ms),
            new Note("2|o2|a0.2", "te", 50::ms, 50::ms),

            new Note("1|o2|a0.25", "te", 50::ms, 50::ms),
            new Note("0|o1|a0.25", "te", 50::ms, 50::ms),
            new Note("2|o0|a0.2", "te", 50::ms, 50::ms),
        ] @=> Note seq1A[];

        [
            new Note("2|o1|a0.2", "te", 50::ms, 50::ms),
            new Note("1|o1|a0.3", "te", 50::ms, 50::ms),
            new Note("0|o2|a0.25", "te", 50::ms, 50::ms),
        ] @=> Note seq1B[];

        [
            new Note("2|o1|a0.2", "te", 50::ms, 50::ms),
            new Note("1|o1|a0.3", "te", 50::ms, 50::ms),
            new Note("2|o2|a0.25", "te", 50::ms, 50::ms),
        ] @=> Note seq1C[];


        // Add sequences to scene
        this.setSeqs(
            [
                new Sequence(seq1A, 4),
                new Sequence(seq1B, 4),
                new Sequence(seq1A, 1),
                new Sequence(seq1B, 4),
                new Sequence(seq1C, 4),
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
            new Note("3|o0|a0.08", "w", 800::ms, 0::ms),
            new Note("3|o0|a0.08", "w", 0::ms, 0::ms),
            new Note("2|o0|a0.08", "w", 0::ms, 0::ms),
            new Note("2|o0|a0.08", "w", 0::ms, 300::ms),
        ] @=> Note seq2A[];

        [
            new Note("3|o3|a0.25", "w", 1500::ms, 0::ms),
            new Note("3|o3|a0.25", "w", 0::ms, 75::ms),
        ] @=> Note seq2B[];

        [
            new Note("3|o0|a0.18", "w", 800::ms, 0::ms),
            new Note("3|o0|a0.18", "w", 0::ms, 0::ms),
            new Note("2|o0|a0.18", "w", 0::ms, 0::ms),
            new Note("2|o0|a0.18", "w", 0::ms, 0::ms),
            new Note("3|o0|a0.18", "w", 0::ms, 0::ms),
            new Note("3|o0|a0.18", "w", 0::ms, 50::ms),
        ] @=> Note seq2C[];

        // Add sequences to scene
        this.setSeqs(
            [
                new Sequence(restMeasure, 4),
                new Sequence(seq2A, 2),
                new Sequence(seq2B, 1),
                new Sequence(seq2C, 1),
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
            new RestNote("e"),
            new Note("1|o0|a0.5", "e", 25::ms, 50::ms),
            new RestNote("e"),
            new Note("3|o0|a0.45", "e", 25::ms, 50::ms),
            new RestNote("e"),
            new Note("4|o0|a0.45", "e", 25::ms, 50::ms),
            new RestNote("e"),
            new Note("0|o0|a0.5", "e", 25::ms, 50::ms),
        ] @=> Note seq1A[];

        [
            new RestNote("e"),
            new Note("2|o0|a0.5", "e", 25::ms, 50::ms),
            new RestNote("e"),
            new Note("4|o0|a0.45", "e", 25::ms, 50::ms),
            new RestNote("e"),
            new Note("0|o1|a0.45", "e", 25::ms, 50::ms),
            new RestNote("e"),
            new Note("4|o0|a0.5", "e", 25::ms, 50::ms),
        ] @=> Note seq1B[];

        [
            new RestNote("e"),
            new Note("2|o0|a0.5", "e", 25::ms, 50::ms),
            new RestNote("e"),
            new Note("4|o0|a0.45", "e", 25::ms, 50::ms),
            new RestNote("e"),
            new Note("0|o1|a0.45", "e", 25::ms, 50::ms),

            new Note("4|o0|a0.5", "q/3", 25::ms, 50::ms),
            new Note("3|o0|a0.5", "q/3", 25::ms, 50::ms),
            new Note("4|o0|a0.5", "q/3", 25::ms, 50::ms),
        ] @=> Note seq2A[];

        // Add sequences to scene
        this.setSeqs(
            [
                new Sequence(seq1A, 4),
                new Sequence(seq1B, 2),
                new Sequence(seq1A, 6),
                new Sequence(seq1B, 2),
                new Sequence(seq1A, 2),

                new Sequence(seq2A, 2),
                new Sequence(seq1A, 2),
            ]
        );
    }
}


class Scene6 extends Scene {
    fun @construct() {
        [
            new RestNote("w"),
        ] @=> Note restMeasure[];

        // Add sequences to scene
        this.setSeqs(
            [
                new Sequence(restMeasure, 2),
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
            new RestNote("e"),
            new Note("1|o0|a0.5", "e", 25::ms, 50::ms),
            new RestNote("e"),
            new Note("2|o0|a0.45", "e", 25::ms, 50::ms),
            new RestNote("e"),
            new Note("5|o0|a0.45", "e", 25::ms, 50::ms),
            new RestNote("e"),
            new Note("4|o0|a0.5", "e", 25::ms, 50::ms),
        ] @=> Note seq1A[];

        [
            new RestNote("h"),
            new Note("1|o1|a0.22", "s", 25::ms, 0::ms),
            new Note("3|o1|a0.24", "s", 0::ms, 0::ms),
            new Note("5|o1|a0.29", "s", 0::ms, 0::ms),
            new Note("0|o2|a0.33", "s", 0::ms, 0::ms),

            new Note("6|o1|a0.37", "s", 0::ms, 0::ms),
            new Note("4|o1|a0.41", "s", 0::ms, 0::ms),
            new Note("2|o1|a0.43", "s", 0::ms, 0::ms),
            new Note("0|o1|a0.46", "s", 0::ms, 50::ms),
        ] @=> Note seq1B[];

        [
            new RestNote("e"),
            new Note("2|o0|a0.5", "e", 25::ms, 50::ms),
            new RestNote("e"),
            new Note("4|o0|a0.45", "e", 25::ms, 50::ms),
            new RestNote("e"),
            new Note("6|o0|a0.45", "e", 25::ms, 50::ms),
            new RestNote("e"),
            new Note("3|o0|a0.5", "e", 25::ms, 50::ms),
        ] @=> Note seq1C[];

        [
            new RestNote("h"),
            new RestNote("e"),
            new Note("5|o0|a0.35", "e", 25::ms, 50::ms),
            new RestNote("e"),
            new Note("4|o0|a0.4", "e", 25::ms, 50::ms),
        ] @=> Note seq2A[];

        // Add sequences to scene
        this.setSeqs(
            [
                new Sequence(seq1A, 4),
                new Sequence(restMeasure, 1),
                new Sequence(seq1B, 1),
                new Sequence(seq1A, 2),
                new Sequence(seq1C, 2),
                new Sequence(seq1A, 2),
                new Sequence(seq1C, 2),
                new Sequence(seq1A, 2),
                new Sequence(seq1C, 2),
                new Sequence(seq1A, 1),
                new Sequence(seq1C, 1),
                new Sequence(seq1A, 1),
                new Sequence(seq1C, 1),
                new Sequence(seq2A, 1),
                new Sequence(restMeasure, 1),
            ]
        );
    }
}


class Scene8 extends Scene {
    fun @construct() {
        [
            new RestNote("w"),
        ] @=> Note restMeasure[];

        [
            new Note("6|o2|a0.18", "w", 1500::ms, 0::ms),
            new Note("6|o2|a0.18", "w", 0::ms, 0::ms),
            new Note("6|o2|a0.18", "w", 0::ms, 0::ms),
            new Note("6|o2|a0.18", "w", 0::ms, 75::ms),
        ] @=> Note seq1A[];

        [
            new Note("7|o2|a0.18", "w", 1500::ms, 0::ms),
            new Note("7|o2|a0.18", "w", 0::ms, 0::ms),
            new Note("7|o2|a0.18", "w", 0::ms, 0::ms),
            new Note("7|o2|a0.18", "w", 0::ms, 75::ms),
        ] @=> Note seq1B[];

        [
            new Note("7|o2|a0.18", "w", 1500::ms, 0::ms),
            new Note("7|o2|a0.18", "w", 0::ms, 0::ms),
            new Note("7|o2|a0.18", "w", 0::ms, 0::ms),
            new Note("7|o2|a0.18", "w", 0::ms, 0::ms),
        ] @=> Note seq2A[];

        [
            new Note("7|o2|a0.18", "w", 0::ms, 0::ms),
            new Note("7|o2|a0.18", "w", 0::ms, 300::ms),
        ] @=> Note seq2B[];

        // Add sequences to scene
        this.setSeqs(
            [
                new Sequence(restMeasure, 8),
                new Sequence(seq1A, 1),
                new Sequence(seq1B, 1),
                new Sequence(seq1A, 1),
                new Sequence(seq2A, 1),
                new Sequence(seq2B, 1),
                new Sequence(restMeasure, 2),
            ]
        );
    }
}


class Scene9 extends Scene {
    fun @construct() {
        [
            new RestNote("w"),
        ] @=> Note restMeasure[];

        [
            new Note("5|o-1|a0.6", "s", 25::ms, 25::ms),
            new Note("5|o-1|a0.45", "s", 25::ms, 25::ms),
            new Note("5|o0|a0.5", "s", 25::ms, 25::ms),
            new Note("5|o-1|a0.45", "s", 25::ms, 25::ms),

            new Note("5|o-1|a0.6", "te", 25::ms, 25::ms),
            new Note("5|o-1|a0.45", "te", 25::ms, 25::ms),
            new Note("5|o0|a0.5", "te", 25::ms, 25::ms),

            new Note("6|o0|a0.6", "s/3", 10::ms, 10::ms),
            new Note("5|o0|a0.5", "s/3", 10::ms, 10::ms),
            new Note("3|o0|a0.6", "s/3", 10::ms, 10::ms),
            new Note("5|o-1|a0.45", "s", 25::ms, 25::ms),
            new Note("5|o-1|a0.5", "s", 25::ms, 25::ms),
            new Note("5|o-1|a0.45", "s", 25::ms, 25::ms),

            new Note("5|o0|a0.6", "te", 25::ms, 25::ms),
            new Note("5|o-1|a0.45", "te", 25::ms, 25::ms),
            new Note("5|o-1|a0.5", "te", 25::ms, 25::ms),
        ] @=> Note seq1A[];

        [
            new Note("5|o-1|a0.6", "s", 25::ms, 25::ms),
            new Note("5|o-1|a0.55", "s", 25::ms, 25::ms),
            new Note("5|o0|a0.52", "s", 25::ms, 25::ms),
            new Note("5|o-1|a0.48", "s", 25::ms, 25::ms),

            new Note("5|o-1|a0.45", "te", 25::ms, 25::ms),
            new Note("5|o-1|a0.42", "te", 25::ms, 25::ms),
            new Note("5|o0|a0.40", "te", 25::ms, 25::ms),

            new Note("6|o-1|a0.37", "te", 25::ms, 25::ms),
            new Note("3|o0|a0.33", "te", 25::ms, 25::ms),
            new Note("5|o0|a0.30", "te", 25::ms, 25::ms),

            new Note("5|o-1|a0.28", "te", 25::ms, 25::ms),
            new Note("0|o0|a0.22", "te", 25::ms, 25::ms),
            new Note("5|o0|a0.17", "te", 25::ms, 25::ms),
        ] @=> Note seq1B[];


        // Add sequences to scene
        this.setSeqs(
            [
                new Sequence(seq1A, 16),
                new Sequence(restMeasure, 4),
                new Sequence(seq1A, 3),
                new Sequence(seq1B, 1),
            ]
        );
    }
}


class Scene10 extends Scene {
    fun @construct() {
        [
            new RestNote("w"),
        ] @=> Note restMeasure[];

        [
            new RestNote("h"),
            new RestNote("e"),
            new Note("2|o1|a0.25", "e", 25::ms, 25::ms),
            new Note("3|o1|a0.3", "e", 25::ms, 25::ms),
            new Note("6|o1|a0.35", "e", 25::ms, 25::ms),
        ] @=> Note seq1A[];

        [
            new Note("6|o1|a0.35", "s", 25::ms, 25::ms),
            new Note("6|o1|a0.4", "s", 25::ms, 25::ms),
            new RestNote("s"),
            new Note("6|o1|a0.3", "s", 25::ms, 25::ms),
        ] @=> Note seq2A[];

        [
            new Note("6|o1|a0.35", "s/2", 15::ms, 15::ms),
            new Note("6|o1|a0.4", "s/2", 15::ms, 15::ms),
            new Note("6|o1|a0.45", "s", 25::ms, 25::ms),
            new RestNote("s"),
            new Note("6|o1|a0.3", "s", 25::ms, 25::ms),
        ] @=> Note seq2B[];

        [
            new Note("6|o1|a0.3", "s", 25::ms, 25::ms),
            new RestNote("s"),
            new Note("2|o1|a0.25", "e", 25::ms, 25::ms),
            new Note("3|o1|a0.3", "e", 25::ms, 25::ms),
            new Note("6|o1|a0.35", "e", 25::ms, 25::ms),
        ] @=> Note seq2C[];

        [
            new Note("5|o1|a0.35", "s/2", 15::ms, 15::ms),
            new Note("5|o1|a0.4", "s/2", 15::ms, 15::ms),
            new Note("5|o1|a0.45", "s", 25::ms, 25::ms),
            new RestNote("s"),
            new Note("5|o1|a0.3", "s", 25::ms, 25::ms),
        ] @=> Note seq3A[];

        [
            new Note("3|o1|a0.35", "s/2", 15::ms, 15::ms),
            new Note("3|o1|a0.4", "s/2", 15::ms, 15::ms),
            new Note("3|o1|a0.45", "s", 25::ms, 25::ms),
            new RestNote("s"),
            new Note("3|o1|a0.3", "s/2", 25::ms, 15::ms),
            new Note("3|o1|a0.3", "s/2", 25::ms, 15::ms),
        ] @=> Note seq3B[];

        [
            new Note("2|o1|a0.35", "s/2", 15::ms, 15::ms),
            new Note("1.9|o1|a0.4", "s/2", 15::ms, 15::ms),
            new Note("1.8|o1|a0.45", "s", 25::ms, 25::ms),
            new Note("1.7|o1|a0.3", "s", 25::ms, 0::ms),
            new RestNote("s"),
        ] @=> Note seq3C[];

        [
            new Note("6|o1|a0.35", "s/2", 15::ms, 15::ms),
            new Note("6|o1|a0.4", "s/2", 15::ms, 15::ms),
            new Note("6|o1|a0.45", "s", 25::ms, 25::ms),
            new Note("6|o1|a0.35", "s", 25::ms, 25::ms),
            new Note("6|o1|a0.45", "s", 25::ms, 25::ms),
        ] @=> Note seq4A[];

        [
            new Note("6|o2|a0.35", "s/2", 15::ms, 15::ms),
            new Note("6|o2|a0.4", "s/2", 15::ms, 15::ms),
            new Note("6|o2|a0.45", "s", 25::ms, 25::ms),
            new Note("6|o2|a0.35", "s", 25::ms, 25::ms),
            new Note("6|o2|a0.45", "s", 25::ms, 25::ms),
        ] @=> Note seq4B[];

        [
            new Note("5|o1|a0.35", "s/2", 15::ms, 15::ms),
            new Note("5|o1|a0.4", "s/2", 15::ms, 15::ms),
            new Note("5|o1|a0.45", "s", 25::ms, 25::ms),
            new Note("5|o1|a0.35", "s", 25::ms, 25::ms),
            new Note("5|o1|a0.45", "s", 25::ms, 25::ms),
        ] @=> Note seq4C[];

        [
            new Note("3|o1|a0.35", "s/2", 15::ms, 15::ms),
            new Note("3|o1|a0.4", "s/2", 15::ms, 15::ms),
            new Note("3|o1|a0.45", "s", 25::ms, 25::ms),
            new Note("3|o1|a0.35", "s", 25::ms, 25::ms),
            new Note("3|o1|a0.45", "s", 25::ms, 25::ms),
        ] @=> Note seq4D[];

        [
            new Note("3|o1|a0.35", "s/2", 15::ms, 15::ms),
            new Note("3|o1|a0.4", "s/2", 15::ms, 15::ms),
            new Note("3|o1|a0.45", "s", 25::ms, 25::ms),
            new RestNote("e"),
        ] @=> Note seq4E[];


        // Add sequences to scene
        this.setSeqs(
            [
                new Sequence(restMeasure, 7),
                new Sequence(seq1A, 1),

                new Sequence(seq2A, 3),
                new Sequence(seq2B, 1),
                new Sequence(seq2A, 2),
                new Sequence(seq2C, 1),
                new Sequence(seq2A, 3),
                new Sequence(seq2B, 1),
                new Sequence(seq2A, 2),
                new Sequence(seq2C, 1),

                new Sequence(seq2B, 2),
                new Sequence(seq2A, 2),
                new Sequence(seq2B, 2),
                new Sequence(seq2C, 1),

                new Sequence(seq2B, 4),
                new Sequence(seq3A, 2),
                new Sequence(seq3B, 1),
                new Sequence(seq3C, 1),

                new Sequence(seq4A, 8),
                new Sequence(seq4B, 4),
                new Sequence(seq4A, 4),
                new Sequence(seq4C, 4),
                new Sequence(seq4D, 2),
                new Sequence(seq4C, 6),
                new Sequence(seq4D, 3),
                new Sequence(seq4E, 1),
            ]
        );
    }
}


class Scene11 extends Scene {
    fun @construct() {
        [
            new RestNote("w"),
        ] @=> Note restMeasure[];

        [
            new Note("2|o1|a0.4", "s", 25::ms, 25::ms),
            new Note("2|o1|a0.38", "s", 25::ms, 25::ms),
            new RestNote("s"),
            new Note("2|o1|a0.35", "s", 25::ms, 25::ms),

            new Note("2|o1|a0.33", "s", 25::ms, 25::ms),
            new Note("2|o1|a0.30", "s", 25::ms, 25::ms),
            new RestNote("s"),
            new Note("2|o1|a0.27", "s", 25::ms, 25::ms),

            new Note("2|o1|a0.24", "s", 25::ms, 25::ms),
            new Note("2|o1|a0.22", "s", 25::ms, 25::ms),
            new RestNote("s"),
            new Note("2|o1|a0.17", "s", 25::ms, 25::ms),

            new Note("2|o1|a0.15", "s", 25::ms, 25::ms),
            new Note("2|o1|a0.12", "s", 25::ms, 25::ms),
            new RestNote("e"),
        ] @=> Note seq1A[];

        [
            new Note("6|o1|a0.05", "s", 25::ms, 25::ms),
            new Note("6|o1|a0.08", "s", 25::ms, 25::ms),
            new Note("6|o1|a0.12", "s", 25::ms, 25::ms),
            new Note("6|o1|a0.15", "s", 25::ms, 25::ms),

            new Note("6|o1|a0.18", "s", 25::ms, 25::ms),
            new Note("6|o1|a0.20", "s", 25::ms, 25::ms),
            new Note("6|o1|a0.22", "s", 25::ms, 25::ms),
            new Note("6|o1|a0.25", "s", 25::ms, 25::ms),

            new Note("6|o1|a0.27", "s", 25::ms, 25::ms),
            new Note("6|o1|a0.29", "s", 25::ms, 25::ms),
            new Note("6|o1|a0.30", "s", 25::ms, 25::ms),
            new Note("6|o1|a0.32", "s", 25::ms, 25::ms),

            new Note("6|o1|a0.33", "s", 25::ms, 25::ms),
            new Note("6|o1|a0.35", "s", 25::ms, 25::ms),
            new Note("6|o1|a0.34", "s", 25::ms, 25::ms),
            new Note("6|o1|a0.34", "s", 25::ms, 25::ms),
        ] @=> Note seq1B[];

        [
            new Note("5|o1|a0.35", "s", 25::ms, 25::ms),
            new Note("5|o1|a0.4", "s", 25::ms, 25::ms),
            new Note("5|o1|a0.3", "s", 25::ms, 25::ms),
            new Note("5|o1|a0.4", "s", 25::ms, 25::ms),

            new Note("6|o1|a0.35", "s", 25::ms, 25::ms),
            new Note("6|o1|a0.4", "s", 25::ms, 25::ms),
            new Note("5|o1|a0.3", "s", 25::ms, 25::ms),
            new Note("5|o1|a0.3", "s", 25::ms, 25::ms),

            new Note("7|o1|a0.35", "s", 25::ms, 25::ms),
            new Note("7|o1|a0.4", "s", 25::ms, 25::ms),
            new Note("7|o1|a0.4", "s", 25::ms, 25::ms),
            new Note("7|o1|a0.3", "s", 25::ms, 25::ms),

            new Note("6|o1|a0.35", "s", 25::ms, 25::ms),
            new Note("6|o1|a0.4", "s", 25::ms, 25::ms),
            new Note("6|o1|a0.3", "s", 25::ms, 25::ms),
            new Note("6|o1|a0.3", "s", 25::ms, 25::ms),
        ] @=> Note seq2B[];

        [
            new Note("6|o1|a0.35", "s", 25::ms, 25::ms),
            new Note("6|o1|a0.35", "s", 25::ms, 25::ms),
            new Note("6|o0|a0.45", "s", 25::ms, 25::ms),
            new Note("6|o1|a0.3", "s", 25::ms, 25::ms),

            new Note("6|o1|a0.35", "s", 25::ms, 25::ms),
            new Note("6|o1|a0.35", "s", 25::ms, 25::ms),
            new Note("6|o1|a0.45", "s", 25::ms, 25::ms),
            new Note("6|o1|a0.3", "s", 25::ms, 25::ms),

            new Note("6|o1|a0.35", "s", 25::ms, 25::ms),
            new Note("6|o1|a0.35", "s", 25::ms, 25::ms),
            new Note("6|o1|a0.45", "s", 25::ms, 25::ms),
            new Note("6|o1|a0.3", "s", 25::ms, 25::ms),

            new Note("6|o2|a0.35", "s", 25::ms, 25::ms),
            new Note("6|o1|a0.35", "s", 25::ms, 25::ms),
            new Note("6|o1|a0.45", "s", 25::ms, 25::ms),
            new Note("6|o1|a0.3", "s", 25::ms, 25::ms),
        ] @=> Note seq2C[];

        [
            new RestNote("q."),
            new Note("1.5|o1|a0.12", "e", 15::ms, 150::ms),

            new Note("4|o1|a0.14", "e", 15::ms, 150::ms),
            new Note("1.5|o1|a0.17", "e", 15::ms, 150::ms),
            new Note("4|o1|a0.18", "e", 15::ms, 150::ms),
            new Note("1.5|o1|a0.22", "e", 15::ms, 150::ms),

            new Note("4|o1|a0.24", "e", 15::ms, 150::ms),
            new Note("1.5|o1|a0.27", "e", 15::ms, 150::ms),
            new Note("1.5|o1|a0.29", "e", 15::ms, 150::ms),
            new Note("1.5|o1|a0.3", "e", 15::ms, 150::ms),

            new Note("1.5|o1|a0.33", "e", 15::ms, 150::ms),
            new Note("1.5|o1|a0.25", "e", 15::ms, 150::ms),
            new Note("1.5|o1|a0.35", "e", 15::ms, 150::ms),
            new Note("1.5|o1|a0.3", "e", 15::ms, 150::ms),
        ] @=> Note seq3A[];

        [
            new Note("4|o1|a0.35", "e", 15::ms, 150::ms),
            new Note("3|o1|a0.4", "e", 15::ms, 150::ms),
            new Note("4|o1|a0.3", "e", 15::ms, 150::ms),
            new Note("3|o1|a0.4", "e", 15::ms, 150::ms),

            new Note("4|o1|a0.35", "e", 15::ms, 150::ms),
            new Note("3|o1|a0.4", "e", 15::ms, 150::ms),
            new Note("4|o1|a0.3", "e", 15::ms, 150::ms),
            new Note("3|o1|a0.3", "e", 15::ms, 150::ms),
        ] @=> Note seq3B[];

        [
            new Note("4|o1|a0.35", "e", 15::ms, 150::ms),
            new Note("3|o1|a0.4", "e", 15::ms, 150::ms),
            new Note("4|o1|a0.3", "e", 15::ms, 150::ms),
            new Note("3|o1|a0.4", "e", 15::ms, 150::ms),

            new Note("4|o1|a0.3", "q", 15::ms, 250::ms),
            new RestNote("e"),
            new Note("3|o1|a0.25", "e", 15::ms, 150::ms),
        ] @=> Note seq3C[];

        [
            new Note("4|o1|a0.35", "e", 15::ms, 150::ms),
            new Note("1.5|o1|a0.4", "e", 15::ms, 150::ms),
            new Note("4|o1|a0.3", "e", 15::ms, 150::ms),
            new Note("1.5|o1|a0.4", "e", 15::ms, 150::ms),

            new Note("4|o1|a0.35", "e", 15::ms, 150::ms),
            new Note("1.5|o1|a0.4", "e", 15::ms, 150::ms),
            new Note("4|o1|a0.3", "e", 15::ms, 150::ms),
            new Note("1.5|o1|a0.3", "e", 15::ms, 150::ms),
        ] @=> Note seq3D[];

        [
            new Note("4|o1|a0.35", "e", 15::ms, 150::ms),
            new Note("1.5|o1|a0.4", "e", 15::ms, 150::ms),
            new Note("1.45|o1|a0.3", "e", 15::ms, 150::ms),
            new Note("1.42|o1|a0.4", "e", 15::ms, 150::ms),

            new Note("1.4|o1|a0.35", "e", 15::ms, 150::ms),
            new Note("1.38|o1|a0.4", "e", 15::ms, 150::ms),
            new Note("1.37|o1|a0.3", "e", 15::ms, 150::ms),
            new Note("1.35|o1|a0.3", "e", 15::ms, 150::ms),
        ] @=> Note seq3E[];

        [
            new Note("3.8|o1|a0.35", "q", 15::ms, 250::ms),

            new Note("3.8|o1|a0.35", "e", 150::ms, 0::ms),
            new Note("3.7|o1|a0.35", "e", 0::ms, 0::ms),
            new Note("3.6|o1|a0.35", "e", 0::ms, 0::ms),
            new Note("3.7|o1|a0.35", "e", 0::ms, 0::ms),
            new Note("3.8|o1|a0.3", "h.", 500::ms, 700::ms),

            new RestNote("h"),
        ] @=> Note seq4A[];

        [
            new Note("4|o1|a0.35", "te", 15::ms, 75::ms),
            new Note("4|o1|a0.35", "te", 15::ms, 75::ms),
            new Note("4|o1|a0.35", "te", 15::ms, 75::ms),

            new Note("1.5|o1|a0.35", "q", 50::ms, 0::ms),
            new Note("1.5|o1|a0.35", "w", 0::ms, 700::ms),
            new RestNote("h"),
        ] @=> Note seq4B[];

        [
            new Note("3.8|o2|a0.3", "q", 15::ms, 250::ms),

            new Note("3.8|o2|a0.3", "e", 150::ms, 0::ms),
            new Note("3.7|o2|a0.3", "e", 0::ms, 0::ms),
            new Note("3.6|o2|a0.3", "e", 0::ms, 0::ms),
            new Note("3.7|o2|a0.3", "e", 0::ms, 0::ms),
            new Note("3.8|o2|a0.3", "h.", 500::ms, 700::ms),

            new RestNote("h"),
        ] @=> Note seq4C[];

        [
            new Note("4|o2|a0.3", "te", 15::ms, 75::ms),
            new Note("4|o2|a0.3", "te", 15::ms, 75::ms),
            new Note("4|o2|a0.3", "te", 15::ms, 75::ms),

            new Note("1.8|o2|a0.3", "q", 50::ms, 0::ms),
            new Note("1.8|o2|a0.3", "w", 0::ms, 700::ms),
            new RestNote("h"),
        ] @=> Note seq4D[];

        [
            new Note("3.8|o1|a0.35", "q", 15::ms, 250::ms),

            new Note("3.8|o1|a0.35", "e", 150::ms, 0::ms),
            new Note("3.7|o1|a0.35", "e", 0::ms, 0::ms),
            new Note("3.6|o1|a0.35", "e", 0::ms, 0::ms),
            new Note("3.7|o1|a0.35", "e", 0::ms, 0::ms),
            new Note("3.8|o1|a0.3|r0.08", "h.", 500::ms, 700::ms),
            new Note("3.8|o1|a0.08|r0.01", "q.", 0::ms, 400::ms),
            new Note("3.8|o1|a0.01", "e", 0::ms, 150::ms),
        ] @=> Note seq5A[];

        // Add sequences to scene
        this.setSeqs(
            [
                new Sequence(restMeasure, 1),
                new Sequence(seq1B, 1),
                new Sequence(seq2B, 4),
                new Sequence(seq2C, 2),
                new Sequence(seq2B, 2),
                new Sequence(seq2C, 2),
                new Sequence(seq2B, 2),
                new Sequence(seq2C, 2),

                new Sequence(restMeasure, 2),
                new Sequence(seq2C, 2),
                new Sequence(restMeasure, 2),
                new Sequence(seq2B, 2),
                new Sequence(restMeasure, 4),

                new Sequence(seq3A, 1),
                new Sequence(seq3B, 2),
                new Sequence(seq3D, 1),
                new Sequence(seq3E, 1),
                new Sequence(seq3B, 1),
                new Sequence(seq3C, 1),
                new Sequence(seq3D, 1),
                new Sequence(seq3E, 1),

                new Sequence(seq4A, 1),
                new Sequence(seq4B, 1),
                new Sequence(seq4C, 1),
                new Sequence(seq4D, 1),
                new Sequence(seq4A, 1),
                new Sequence(seq4B, 1),
                new Sequence(seq5A, 1),
            ]
        );
    }
}


class Scene12 extends Scene {
    fun @construct() {
        [
            new RestNote("w"),
        ] @=> Note restMeasure[];

        [
            new Note("4|o1|a0.35", "te", 15::ms, 75::ms),
            new Note("4|o1|a0.35", "te", 15::ms, 75::ms),
            new Note("4|o1|a0.35", "te", 15::ms, 75::ms),

            new Note("2|o1|a0.35", "h", 50::ms, 0::ms),
            new Note("2|o1|a0.35", "h.", 0::ms, 0::ms),
            new Note("2|o1|a0.35", "w", 0::ms, 1800::ms),
            new RestNote("h"),
        ] @=> Note seq1A[];

        // Add sequences to scene
        this.setSeqs(
            [
                new Sequence(seq1A, 1),
                new Sequence(restMeasure, 3),
            ]
        );
    }
}


public class Etune3Voice4Score extends Score {
    fun @construct() {
        4 => this.voiceNum;

        // Load scenes
        this.scenes << new Scene1();
        this.scenes << new Scene2();
        this.scenes << new Scene3();
        this.scenes << new Scene4();
        this.scenes << new Scene5();
        this.scenes << new Scene6();
        this.scenes << new Scene7();
        this.scenes << new Scene8();
        this.scenes << new Scene9();
        this.scenes << new Scene10();
        this.scenes << new Scene11();
        this.scenes << new Scene12();
    }
}
