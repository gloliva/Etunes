@import "../notation.ck"


class Scene1 extends Scene {
    fun @construct() {
        [
            new RestNote("w"),
        ] @=> Note restMeasure[];

        [
            new Note("0|o-1|a0.3", "w", 1500::ms, 0::ms),
        ] @=> Note seq1A[];

        [
            new Note("0|o-1|a0.3", "w", 0::ms, 0::ms),
        ] @=> Note seq1B[];

        [
            new Note("0|o-1|a0.3", "w", 0::ms, 1500::ms),
        ] @=> Note seq1C[];


        // Add sequences to scene
        this.setSeqs(
            [
                new Sequence(restMeasure, 23),
                new Sequence(seq1A, 1),
                new Sequence(seq1B, 7),
                new Sequence(seq1C, 1),
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
            new Note("0|o-1|a0.3", "w", 250::ms, 0::ms),
            new Note("0|o-1|a0.35", "h.", 0::ms, 50::ms),
            new Note("0|o0|a0.35", "q", 50::ms, 250::ms),
        ] @=> Note seq1A[];

        [
            new Note("1|o-1|a0.35", "w", 250::ms, 0::ms),
            new Note("1|o-1|a0.3", "h.", 0::ms, 50::ms),
            new Note("1|o0|a0.3", "q", 50::ms, 250::ms),
        ] @=> Note seq1B[];



        // Add sequences to scene
        this.setSeqs(
            [
                new Sequence(seq1A, 1),
                new Sequence(seq1B, 1),
                new Sequence(seq1A, 1),
                new Sequence(seq1B, 1),
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
            new Note("1|o1|a0.3", "w", 300::ms, 0::ms),
            new Note("1|o1|a0.3", "w", 0::ms, 0::ms),
            new Note("0|o1|a0.3", "w", 0::ms, 0::ms),
            new Note("0|o1|a0.3", "w", 0::ms, 300::ms),
        ] @=> Note seq1A[];

        [
            new Note("1|o1|a0.3", "w", 300::ms, 0::ms),
            new Note("1|o1|a0.3", "w", 0::ms, 0::ms),
            new Note("1|o2|a0.3", "w", 0::ms, 0::ms),
            new Note("1|o2|a0.3", "w", 0::ms, 0::ms),
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
            new RestNote("q"),
        ] @=> Note restBeat[];

        [
            new Note("1|o2|a0.28", "w", 0::ms, 0::ms),
            new Note("1|o2|a0.28", "w", 0::ms, 1000::ms),
        ] @=> Note seq1A[];

        [
            new Note("1|o1|a0.05", "s", 10::ms, 0::ms),
            new Note("2|o1|a0.08", "s", 0::ms, 0::ms),
            new Note("3|o1|a0.12", "s", 0::ms, 0::ms),
            new Note("0|o2|a0.14", "s", 0::ms, 0::ms),

            new Note("1|o2|a0.18", "s", 0::ms, 0::ms),
            new Note("0|o2|a0.22", "s", 0::ms, 0::ms),
            new Note("3|o1|a0.28", "s", 0::ms, 0::ms),
            new Note("2|o1|a0.33", "s", 0::ms, 10::ms),
        ] @=> Note seq2A[];

        [
            new Note("1|o2|a0.33", "w", 1500::ms, 0::ms),
            new Note("1|o2|a0.33", "w", 0::ms, 75::ms),
        ] @=> Note seq2B[];

        [
            new Note("3|o0|a0.28", "w", 1500::ms, 0::ms),
            new Note("3|o0|a0.48", "w", 1500::ms, 50::ms),
        ] @=> Note seq3A[];


        // Add sequences to scene
        this.setSeqs(
            [
                new Sequence(seq1A, 1),
                new Sequence(restMeasure, 4),
                new Sequence(restBeat, 1),
                new Sequence(seq2A, 4),
                new Sequence(restMeasure, 1),
                new Sequence(restBeat, 2),
                new Sequence(seq2A, 4),

                new Sequence(seq2B, 1),
                new Sequence(restBeat, 1),
                new Sequence(seq2A, 4),

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
            new Note("0|o-1|a0.6", "e.", 25::ms, 150::ms),
            new RestNote("s"),
            new Note("0|o-1|a0.45", "e.", 25::ms, 150::ms),
            new RestNote("s"),
            new Note("0|o-1|a0.5", "e.", 25::ms, 150::ms),
            new RestNote("s"),
            new Note("0|o-1|a0.45", "e.", 25::ms, 150::ms),
            new RestNote("s"),
        ] @=> Note seq1A[];

        [
            new Note("1|o-1|a0.6", "e.", 25::ms, 150::ms),
            new RestNote("s"),
            new Note("1|o-1|a0.45", "e.", 25::ms, 150::ms),
            new RestNote("s"),
            new Note("1|o-1|a0.5", "e.", 25::ms, 150::ms),
            new RestNote("s"),
            new Note("1|o-1|a0.45", "e.", 25::ms, 150::ms),
            new RestNote("s"),
        ] @=> Note seq1B[];

        [
            new Note("1|o-1|a0.6", "e.", 25::ms, 150::ms),
            new RestNote("s"),
            new Note("1|o-1|a0.45", "e.", 25::ms, 150::ms),
            new RestNote("s"),
            new Note("1|o-1|a0.5", "e.", 25::ms, 150::ms),
            new RestNote("s"),
            new RestNote("q"),
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

        [
            new Note("0|o-1|a0.06", "s", 25::ms, 25::ms),
            new Note("1|o-1|a0.1", "s", 25::ms, 25::ms),
            new Note("2|o-1|a0.14", "s", 25::ms, 25::ms),
            new Note("3|o-1|a0.19", "s", 25::ms, 25::ms),

            new Note("4|o-1|a0.24", "s", 25::ms, 25::ms),
            new Note("5|o-1|a0.28", "s", 25::ms, 25::ms),
            new Note("0|o0|a0.32", "s", 25::ms, 25::ms),
            new Note("1|o0|a0.35", "s", 25::ms, 25::ms),

            new Note("2|o0|a0.37", "s", 25::ms, 25::ms),
            new Note("3|o0|a0.42", "s", 25::ms, 25::ms),
            new Note("4|o0|a0.45", "s", 25::ms, 25::ms),
            new Note("5|o0|a0.46", "s", 25::ms, 25::ms),

            new Note("0|o1|a0.50", "s", 25::ms, 25::ms),
            new Note("1|o1|a0.52", "s", 25::ms, 25::ms),
            new Note("2|o1|a0.54", "s", 25::ms, 25::ms),
            new Note("3|o1|a0.55", "s", 25::ms, 25::ms),
        ] @=> Note seq1A[];


        // Add sequences to scene
        this.setSeqs(
            [
                new Sequence(restMeasure, 1),
                new Sequence(seq1A, 1),
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
            new Note("0|o-1|a0.6", "e.", 25::ms, 150::ms),
            new RestNote("s"),
            new Note("0|o-1|a0.45", "e.", 25::ms, 150::ms),
            new RestNote("s"),
            new Note("0|o-1|a0.5", "e.", 25::ms, 150::ms),
            new RestNote("s"),
            new Note("0|o-1|a0.45", "e.", 25::ms, 150::ms),
            new RestNote("s"),
        ] @=> Note seq1A[];

        [
            new RestNote("h"),
            new Note("0|o-1|a0.25", "e", 25::ms, 150::ms),
            new Note("0|o-1|a0.35", "e", 25::ms, 150::ms),
            new Note("0|o-1|a0.45", "e", 25::ms, 150::ms),
            new Note("0|o-1|a0.55", "e", 25::ms, 150::ms),
        ] @=> Note seq1B[];

        [
            new Note("2|o-1|a0.6", "e.", 25::ms, 150::ms),
            new RestNote("s"),
            new Note("2|o-1|a0.45", "e.", 25::ms, 150::ms),
            new RestNote("s"),
            new Note("2|o-1|a0.5", "e.", 25::ms, 150::ms),
            new RestNote("s"),
            new Note("2|o-1|a0.45", "e.", 25::ms, 150::ms),
            new RestNote("s"),
        ] @=> Note seq1C[];

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
                new Sequence(restMeasure, 2),
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
            new Note("0|o-1|a0.6", "e.", 25::ms, 150::ms),
            new RestNote("s"),
            new Note("0|o-1|a0.45", "e.", 25::ms, 150::ms),
            new RestNote("s"),
            new Note("0|o-1|a0.5", "e.", 25::ms, 150::ms),
            new RestNote("s"),
            new Note("7|o-1|a0.45", "te", 25::ms, 75::ms),
            new Note("6|o-1|a0.55", "te", 25::ms, 75::ms),
            new Note("7|o-1|a0.45", "te", 25::ms, 75::ms),
        ] @=> Note seq1A[];

        [
            new Note("0|o-1|a0.6", "e.", 25::ms, 150::ms),
            new RestNote("s"),
            new RestNote("h"),
            new Note("7|o-1|a0.45", "te", 25::ms, 75::ms),
            new Note("6|o-1|a0.55", "te", 25::ms, 75::ms),
            new Note("7|o-1|a0.45", "te", 25::ms, 75::ms),
            new RestNote("h"),
            new Note("7|o-1|a0.45", "te", 25::ms, 75::ms),
            new Note("6|o-1|a0.55", "te", 25::ms, 75::ms),
            new Note("7|o-1|a0.45", "te", 25::ms, 75::ms),
            new Note("7|o-1|a0.45", "te", 25::ms, 75::ms),
            new Note("6|o-1|a0.55", "te", 25::ms, 75::ms),
            new Note("7|o-1|a0.45", "te", 25::ms, 75::ms),

            new Note("0|o-1|a0.6", "e.", 25::ms, 150::ms),
            new RestNote("s"),
            new RestNote("h"),
            new Note("7|o-1|a0.45", "te", 25::ms, 75::ms),
            new Note("6|o-1|a0.55", "te", 25::ms, 75::ms),
            new Note("7|o-1|a0.45", "te", 25::ms, 75::ms),
            new RestNote("h"),
            new Note("7|o-1|a0.45", "te", 25::ms, 75::ms),
            new Note("6|o-1|a0.55", "te", 25::ms, 75::ms),
            new Note("7|o-1|a0.45", "te", 25::ms, 75::ms),
            new Note("7|o-1|a0.45", "te", 25::ms, 75::ms),
            new Note("6|o-1|a0.55", "te", 25::ms, 75::ms),
            new RestNote("te"),
        ] @=> Note seq2A[];

        // Add sequences to scene
        this.setSeqs(
            [
                new Sequence(seq1A, 24),
                new Sequence(seq2A, 1),
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
            new Note("2|o0|a0.6", "e", 25::ms, 150::ms),
            new Note("2|o1|a0.6", "s", 25::ms, 25::ms),
            new RestNote("s"),

            new RestNote("h"),

            new Note("5|o0|a0.6", "e", 25::ms, 150::ms),
            new Note("5|o-1|a0.6", "s", 25::ms, 25::ms),
            new RestNote("s"),
        ] @=> Note seq1A[];

        [
            new Note("2|o0|a0.6", "e", 25::ms, 150::ms),
            new Note("2|o1|a0.6", "s", 25::ms, 25::ms),
            new Note("2|o2|a0.55", "s", 25::ms, 25::ms),

            new RestNote("q"),
            new RestNote("e."),

            new Note("8|o1|a0.45", "s", 25::ms, 25::ms),
            new Note("5|o1|a0.55", "e", 25::ms, 150::ms),
            new Note("5|o0|a0.6", "s", 25::ms, 25::ms),
            new RestNote("s"),
        ] @=> Note seq1B[];

        [
            new Note("2|o0|a0.6", "e", 25::ms, 150::ms),
            new Note("5|o0|a0.54", "e.", 25::ms, 250::ms),

            new RestNote("e."),
            new Note("5|o-1|a0.10", "s", 25::ms, 0::ms),
            new Note("5.1|o-1|a0.16", "s", 0::ms, 0::ms),
            new Note("5.13|o-1|a0.20", "s", 0::ms, 0::ms),
            new Note("5.19|o-1|a0.23", "s", 0::ms, 0::ms),

            new Note("5.23|o-1|a0.27", "s", 0::ms, 0::ms),
            new Note("5.29|o-1|a0.31", "s", 0::ms, 0::ms),
            new Note("5.35|o-1|a0.35", "s", 0::ms, 0::ms),
            new Note("5.43|o-1|a0.38", "s", 0::ms, 0::ms),
        ] @=> Note seq1C[];

        // Add sequences to scene
        this.setSeqs(
            [
                new Sequence(seq1A, 8),
                new Sequence(seq1B, 4),
                new Sequence(seq1A, 4),
                new Sequence(seq1B, 7),
                new Sequence(seq1C, 1),
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
            new Note("6|o-1|a0.4", "w", 25::ms, 0::ms),
            new Note("6|o-1|a0.4", "h.", 0::ms, 0::ms),
            new Note("0|o-1|a0.5", "q", 25::ms, 25::ms),
        ] @=> Note seq1A[];

        [
            new Note("3|o-1|a0.4", "w", 25::ms, 0::ms),
            new Note("5|o-1|a0.4", "h.", 0::ms, 25::ms),
            new Note("3|o-1|a0.4", "q", 25::ms, 25::ms),
        ] @=> Note seq1B[];

        [
            new Note("3|o-1|a0.4", "w", 25::ms, 0::ms),
            new Note("5|o-1|a0.4", "h.", 0::ms, 25::ms),
            new RestNote("q"),
        ] @=> Note seq1C[];

        [
            new Note("6|o-1|a0.55", "q", 25::ms, 100::ms),
            new Note("6|o-1|a0.5", "q", 25::ms, 100::ms),
            new Note("6|o-1|a0.55", "q", 25::ms, 100::ms),
            new Note("6|o-1|a0.5", "q", 25::ms, 100::ms),

            new Note("6|o-1|a0.55", "q", 25::ms, 100::ms),
            new Note("6|o-1|a0.5", "q", 25::ms, 100::ms),
            new Note("6|o-1|a0.55", "q", 25::ms, 100::ms),
            new Note("0|o-1|a0.5", "q", 25::ms, 25::ms),
        ] @=> Note seq2A[];

        [
            new Note("3|o-1|a0.55", "q", 25::ms, 100::ms),
            new Note("3|o-1|a0.5", "q", 25::ms, 100::ms),
            new Note("3|o-1|a0.55", "q", 25::ms, 100::ms),
            new Note("3|o-1|a0.5", "q", 25::ms, 100::ms),

            new Note("5|o-1|a0.55", "q", 25::ms, 100::ms),
            new Note("5|o-1|a0.5", "q", 25::ms, 100::ms),
            new Note("5|o-1|a0.55", "q", 25::ms, 100::ms),
            new RestNote("q"),
        ] @=> Note seq2B[];

        // Add sequences to scene
        this.setSeqs(
            [
                new Sequence(seq1A, 3),
                new Sequence(seq1B, 1),
                new Sequence(seq1A, 3),
                new Sequence(seq1C, 1),
                new Sequence(seq2A, 2),
                new Sequence(seq2B, 2),
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
            new Note("0|o-1|a0.05", "q", 25::ms, 250::ms),
            new Note("0|o-1|a0.12", "q", 25::ms, 250::ms),
            new Note("0|o-1|a0.18", "q", 25::ms, 250::ms),
            new Note("0|o-1|a0.24", "q", 25::ms, 250::ms),
            new Note("0|o-1|a0.3", "q", 25::ms, 250::ms),
            new Note("0|o-1|a0.4", "q", 25::ms, 250::ms),
            new Note("0|o-1|a0.5", "q", 25::ms, 250::ms),
            new Note("0|o-1|a0.57", "q", 25::ms, 250::ms),
        ] @=> Note seq1A[];

        [
            new Note("0|o-1|a0.6", "q", 25::ms, 250::ms),
            new Note("0|o-1|a0.5", "q", 25::ms, 250::ms),
            new Note("0|o-1|a0.6", "q", 25::ms, 250::ms),
            new Note("0|o-1|a0.45", "q", 25::ms, 250::ms),
        ] @=> Note seq1B[];

        [
            new Note("0|o-1|a0.6", "q/3", 25::ms, 25::ms),
            new Note("0|o-1|a0.6", "q/3", 25::ms, 25::ms),
            new Note("0|o-1|a0.6", "q/3", 25::ms, 25::ms),
            new Note("0|o-1|a0.6", "h.", 25::ms, 500::ms),
        ] @=> Note seq2A[];

        [
            new Note("9|o-2|a0.6", "q/3", 25::ms, 25::ms),
            new Note("9|o-2|a0.6", "q/3", 25::ms, 25::ms),
            new Note("9|o-2|a0.6", "q/3", 25::ms, 25::ms),
            new Note("9|o-2|a0.6", "h.", 25::ms, 500::ms),
        ] @=> Note seq2B[];

        [
            new Note("7|o-2|a0.6", "q/3", 25::ms, 25::ms),
            new Note("7|o-2|a0.6", "q/3", 25::ms, 25::ms),
            new Note("7|o-2|a0.6", "q/3", 25::ms, 25::ms),
            new Note("7|o-2|a0.6", "h.", 25::ms, 500::ms),
        ] @=> Note seq2C[];

        [
            new Note("0|o-1|a0.6", "q", 15::ms, 250::ms),

            new Note("0|o-1|a0.6", "q", 50::ms, 0::ms),
            new Note("0|o-1|a0.6", "w", 0::ms, 350::ms),

            new RestNote("h"),
        ] @=> Note seq3A[];

        [
            new Note("9|o-2|a0.6", "te", 15::ms, 75::ms),
            new Note("9|o-2|a0.6", "te", 15::ms, 75::ms),
            new Note("9|o-2|a0.6", "te", 15::ms, 75::ms),

            new Note("9|o-2|a0.6", "q", 50::ms, 0::ms),
            new Note("9|o-2|a0.6", "w", 0::ms, 350::ms),

            new RestNote("h"),
        ] @=> Note seq3B[];

        // Add sequences to scene
        this.setSeqs(
            [
                new Sequence(seq1A, 1),
                new Sequence(seq1B, 14),

                new Sequence(seq2A, 2),
                new Sequence(seq1B, 2),

                new Sequence(seq2B, 2),
                new Sequence(seq1B, 2),

                new Sequence(seq2C, 1),
                new Sequence(seq2B, 1),
                new Sequence(seq2A, 2),
                new Sequence(seq2B, 2),
                new Sequence(seq2A, 2),
                new Sequence(seq2B, 2),
                new Sequence(seq2A, 2),
                new Sequence(seq2B, 2),
                new Sequence(seq2A, 2),
                new Sequence(seq2B, 2),

                new Sequence(seq3A, 1),
                new Sequence(seq3B, 1),
                new Sequence(seq3A, 1),
                new Sequence(seq3B, 1),

                new Sequence(seq3A, 1),
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
            new Note("10|o-2|a0.6", "te", 15::ms, 75::ms),
            new Note("10|o-2|a0.6", "te", 15::ms, 75::ms),
            new Note("10|o-2|a0.6", "te", 15::ms, 75::ms),

            new Note("10|o-2|a0.6", "h", 50::ms, 0::ms),
            new Note("10|o-2|a0.6", "w", 0::ms, 0::ms),
            new Note("10|o-2|a0.6|r0.1", "w", 0::ms, 1800::ms),

            new Note("10|o-2|a0.1", "s", 0::ms, 0::ms),
            new Note("10|o-2|a0.09", "s", 0::ms, 0::ms),
            new Note("10|o-2|a0.08", "s", 0::ms, 0::ms),
            new Note("10|o-2|a0.07", "s", 0::ms, 10::ms),
        ] @=> Note seq1A[];

        [
            new Note("10|o-2|a0.06", "s", 0::ms, 0::ms),
            new Note("10|o-2|a0.05", "s", 0::ms, 0::ms),
            new Note("10|o-2|a0.04", "s", 0::ms, 0::ms),
            new Note("10|o-2|a0.03", "s", 0::ms, 0::ms),

            new Note("10|o-2|a0.02", "s", 0::ms, 0::ms),
            new Note("10|o-2|a0.01", "s", 0::ms, 0::ms),
            new Note("10|o-2|a0.009", "s", 0::ms, 0::ms),
            new Note("10|o-2|a0.008", "s", 0::ms, 0::ms),

            new Note("10|o-2|a0.007", "s", 0::ms, 0::ms),
            new Note("10|o-2|a0.006", "s", 0::ms, 0::ms),
            new Note("10|o-2|a0.005", "s", 0::ms, 0::ms),
            new Note("10|o-2|a0.004", "s", 0::ms, 0::ms),

            new Note("10|o-2|a0.003", "s", 0::ms, 0::ms),
            new Note("10|o-2|a0.002", "s", 0::ms, 0::ms),
            new Note("10|o-2|a0.001", "s", 0::ms, 0::ms),
            new Note("10|o-2|a0.0005", "s", 0::ms, 10::ms),
        ] @=> Note seq1B[];

        // Add sequences to scene
        this.setSeqs(
            [
                new Sequence(seq1A, 1),
                new Sequence(seq1B, 1),
                new Sequence(restMeasure, 2),
            ]
        );
    }
}


public class Etune3Voice3Score extends Score {
    fun @construct() {
        3 => this.voiceNum;

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
