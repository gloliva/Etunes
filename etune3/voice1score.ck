@import "../notation.ck"


class Scene1 extends Scene {
    fun @construct() {
        [
            new RestNote("w"),
        ] @=> Note restMeasure[];

        [
            new Note("0|o0|a0.0", "q", 50::ms, 50::ms),
            new Note("0|o0|a0.1", "q", 50::ms, 50::ms),
            new Note("0|o0|a0.0", "q", 50::ms, 50::ms),
            new Note("0|o0|a0.1", "q", 50::ms, 50::ms),
        ] @=> Note seq1A[];

        [
            new Note("0|o0|a0.1", "q", 50::ms, 50::ms),
            new Note("0|o0|a0.2", "q", 50::ms, 50::ms),
            new Note("0|o0|a0.1", "q", 50::ms, 50::ms),
            new Note("0|o0|a0.2", "q", 50::ms, 50::ms),
        ] @=> Note seq1B[];

        [
            new Note("0|o0|a0.2", "q", 50::ms, 50::ms),
            new Note("0|o0|a0.3", "q", 50::ms, 50::ms),
            new Note("0|o0|a0.2", "e", 50::ms, 50::ms),
            new Note("0|o0|a0.25", "e", 50::ms, 50::ms),
            new Note("0|o0|a0.3", "q", 50::ms, 50::ms),
        ] @=> Note seq2A[];

        [
            new Note("0|o0|a0.2", "q", 50::ms, 50::ms),
            new Note("0|o0|a0.3", "q", 50::ms, 50::ms),
            new Note("0|o0|a0.2", "q", 50::ms, 50::ms),
            new Note("0|o0|a0.3", "q", 50::ms, 50::ms),
        ] @=> Note seq2B[];

        [
            new Note("0|o0|a0.3", "q", 50::ms, 50::ms),
            new Note("0|o0|a0.4", "q", 50::ms, 50::ms),
            new Note("0|o0|a0.3", "e", 50::ms, 50::ms),
            new Note("0|o0|a0.33", "e", 50::ms, 50::ms),
            new Note("0|o0|a0.4", "q", 50::ms, 50::ms),
        ] @=> Note seq3A[];

        [
            new Note("0|o0|a0.4", "q", 50::ms, 50::ms),
            new Note("0|o0|a0.5", "q", 50::ms, 50::ms),
            new Note("0|o0|a0.4", "q", 50::ms, 50::ms),
            new Note("0|o0|a0.5", "q", 50::ms, 50::ms),
        ] @=> Note seq3B[];

        [
            new Note("0|o0|a0.45", "q", 50::ms, 50::ms),
            new Note("0|o0|a0.6", "q", 50::ms, 50::ms),
            new Note("0|o0|a0.45", "e", 50::ms, 50::ms),
            new Note("0|o0|a0.5", "e", 50::ms, 50::ms),
            new Note("0|o0|a0.6", "q", 50::ms, 50::ms),
        ] @=> Note seq4A[];

        [
            new Note("0|o0|a0.5", "q", 50::ms, 50::ms),
            new Note("0|o0|a0.6", "q", 50::ms, 50::ms),
            new Note("0|o0|a0.5", "q", 50::ms, 50::ms),
            new Note("0|o0|a0.6", "q", 50::ms, 50::ms),
        ] @=> Note seq4B[];

        [
            new RestNote("q"),
            new Note("0|o0|a0.6", "q", 50::ms, 50::ms),
            new RestNote("q"),
            new Note("0|o0|a0.6", "q", 50::ms, 50::ms),
        ] @=> Note seq5A[];

        [
            new RestNote("q"),
            new Note("0|o0|a0.6", "q", 50::ms, 50::ms),
            new RestNote("h"),
        ] @=> Note seq5B[];

        // Add sequences to scene
        this.setSeqs(
            [
                new Sequence(seq1A, 4),
                new Sequence(seq1B, 4),
                new Sequence(seq2A, 4),
                new Sequence(seq2B, 4),
                new Sequence(seq3A, 4),
                new Sequence(seq3B, 4),
                new Sequence(seq4A, 4),
                new Sequence(seq4B, 4),
                new Sequence(seq5A, 2),
                new Sequence(seq5B, 2),
                new Sequence(restMeasure, 1),
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
            new Note("0|o0|a0.6", "q", 50::ms, 50::ms),
            new Note("0|o0|a0.3", "te", 50::ms, 50::ms),
            new Note("0|o0|a0.4", "te", 50::ms, 50::ms),
            new Note("0|o0|a0.3", "te", 50::ms, 50::ms),

            new Note("0|o0|a0.6", "q", 50::ms, 50::ms),
            new Note("0|o0|a0.3", "te", 50::ms, 50::ms),
            new Note("0|o0|a0.4", "te", 50::ms, 50::ms),
            new Note("0|o0|a0.3", "te", 50::ms, 50::ms),
        ] @=> Note seq1A[];

        [
            new Note("1|o0|a0.6", "q", 50::ms, 50::ms),
            new Note("1|o0|a0.3", "te", 50::ms, 50::ms),
            new Note("1|o0|a0.4", "te", 50::ms, 50::ms),
            new Note("1|o0|a0.3", "te", 50::ms, 50::ms),

            new Note("1|o0|a0.6", "q", 50::ms, 50::ms),
            new Note("1|o0|a0.3", "te", 50::ms, 50::ms),
            new Note("1|o0|a0.4", "te", 50::ms, 50::ms),
            new Note("1|o0|a0.3", "te", 50::ms, 50::ms),
        ] @=> Note seq1B[];


        // Add sequences to scene
        this.setSeqs(
            [
                new Sequence(seq1A, 2),
                new Sequence(seq1B, 2),
                new Sequence(seq1A, 2),
                new Sequence(seq1B, 2),
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
            new Note("2|o0|a0.6", "q", 35::ms, 50::ms),
            new Note("0|o0|a0.3", "te", 50::ms, 50::ms),
            new Note("0|o0|a0.4", "te", 50::ms, 50::ms),
            new Note("2|o0|a0.3", "te", 50::ms, 50::ms),

            new Note("1|o0|a0.6", "q", 50::ms, 50::ms),
            new Note("0|o0|a0.3", "te", 50::ms, 50::ms),
            new Note("0|o0|a0.4", "te", 50::ms, 50::ms),
            new Note("1|o0|a0.3", "te", 50::ms, 50::ms),

            new Note("2|o-1|a0.6", "q/3", 50::ms, 50::ms),
            new Note("0|o0|a0.3", "q/3", 50::ms, 50::ms),
            new Note("2|o-1|a0.3", "q/3", 50::ms, 50::ms),
            new Note("0|o0|a0.6", "q", 50::ms, 50::ms),

            new Note("0|o0|a0.3", "te", 50::ms, 50::ms),
            new Note("0|o0|a0.4", "te", 50::ms, 50::ms),
            new Note("0|o0|a0.3", "te", 50::ms, 50::ms),
            new Note("0|o0|a0.5", "q", 50::ms, 150::ms),
        ] @=> Note seq1A[];


        // Add sequences to scene
        this.setSeqs(
            [
                new Sequence(seq1A, 4),
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
            new Note("0|o0|a0.45", "h/3", 150::ms, 150::ms),
            new Note("0|o0|a0.35", "h/3", 150::ms, 150::ms),
            new Note("0|o0|a0.45", "h/3", 150::ms, 150::ms),

            new Note("0|o0|a0.45", "h/6", 75::ms, 75::ms),
            new Note("1|o0|a0.35", "h/6", 75::ms, 75::ms),
            new Note("0|o0|a0.45", "h/6", 75::ms, 75::ms),
            new Note("3|o0|a0.45", "h/6", 75::ms, 75::ms),
            new Note("0|o0|a0.35", "h/6", 75::ms, 75::ms),
            new Note("2|o0|a0.45", "h/6", 75::ms, 75::ms),
        ] @=> Note seq1A[];

        [
            new Note("2|o0|a0.45", "h/3", 150::ms, 150::ms),
            new Note("2|o0|a0.4", "h/3", 150::ms, 150::ms),
            new Note("2|o0|a0.45", "h/3", 150::ms, 150::ms),

            new Note("1|o0|a0.45", "h/6", 75::ms, 75::ms),
            new Note("2|o0|a0.4", "h/6", 75::ms, 75::ms),
            new Note("1|o0|a0.45", "h/6", 75::ms, 75::ms),
            new Note("0|o1|a0.45", "h/6", 75::ms, 75::ms),
            new Note("1|o0|a0.4", "h/6", 75::ms, 75::ms),
            new Note("3|o0|a0.45", "h/6", 75::ms, 75::ms),
        ] @=> Note seq1B[];

        [
            new Note("0|o0|a0.35", "w", 1500::ms, 0::ms),
            new Note("0|o0|a0.55", "w", 1500::ms, 150::ms),
        ] @=> Note seq2A[];


        // Add sequences to scene
        this.setSeqs(
            [
                new Sequence(seq1A, 12),
                new Sequence(seq1B, 2),
                new Sequence(seq1A, 2),

                new Sequence(restMeasure, 2),
                new Sequence(seq2A, 1),
            ]
        );
    }
}


class Scene5 extends Scene {
    fun @construct() {
        [
            new RestNote("w"),
        ] @=> Note restMeasure[];

        // Add sequences to scene
        this.setSeqs(
            [
                new Sequence(restMeasure, 20),
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
            new Note("5|o0|a0.35", "w", 1500::ms, 25::ms),

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

        // Add sequences to scene
        this.setSeqs(
            [
                new Sequence(restMeasure, 24),
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
            new Note("7|o0|a0.4", "s/3", 15::ms, 15::ms),
            new Note("5|o0|a0.3", "s/3", 15::ms, 15::ms),
            new Note("7|o0|a0.35", "s/3", 15::ms, 15::ms),

            new Note("7|o0|a0.4", "s/3", 15::ms, 15::ms),
            new Note("3|o0|a0.3", "s/3", 15::ms, 15::ms),
            new Note("7|o0|a0.35", "s/3", 15::ms, 15::ms),

            new Note("7|o0|a0.4", "s/3", 15::ms, 15::ms),
            new Note("4|o0|a0.3", "s/3", 15::ms, 15::ms),
            new Note("7|o0|a0.35", "s/3", 15::ms, 15::ms),

            new Note("7|o0|a0.4", "s/3", 15::ms, 15::ms),
            new Note("3|o0|a0.3", "s/3", 15::ms, 15::ms),
            new Note("7|o0|a0.35", "s/3", 15::ms, 15::ms),
        ] @=> Note seq1A[];

        [
            new Note("6|o0|a0.4", "s/3", 15::ms, 15::ms),
            new Note("4|o0|a0.3", "s/3", 15::ms, 15::ms),
            new Note("6|o0|a0.35", "s/3", 15::ms, 15::ms),

            new Note("6|o0|a0.4", "s/3", 15::ms, 15::ms),
            new Note("2|o0|a0.3", "s/3", 15::ms, 15::ms),
            new Note("6|o0|a0.35", "s/3", 15::ms, 15::ms),

            new Note("6|o0|a0.4", "s/3", 15::ms, 15::ms),
            new Note("3|o0|a0.3", "s/3", 15::ms, 15::ms),
            new Note("6|o0|a0.35", "s/3", 15::ms, 15::ms),

            new Note("6|o0|a0.4", "s/3", 15::ms, 15::ms),
            new Note("1|o0|a0.3", "s/3", 15::ms, 15::ms),
            new Note("6|o0|a0.35", "s/3", 15::ms, 15::ms),
        ] @=> Note seq1B[];

        // Add sequences to scene
        this.setSeqs(
            [
                new Sequence(restMeasure, 4),
                new Sequence(seq1A, 16),
                new Sequence(restMeasure, 4),
                new Sequence(seq1B, 16),
                new Sequence(seq1A, 16),
                new Sequence(seq1B, 16),
                new Sequence(restMeasure, 4),
            ]
        );
    }
}


class Scene9 extends Scene {
    fun @construct() {
        [
            new RestNote("w"),
        ] @=> Note restMeasure[];

        // Add sequences to scene
        this.setSeqs(
            [
                new Sequence(restMeasure, 24),
            ]
        );
    }
}


class Scene10 extends Scene {
    fun @construct() {
        [
            new RestNote("w"),
        ] @=> Note restMeasure[];

        // Add sequences to scene
        this.setSeqs(
            [
                new Sequence(restMeasure, 24),
            ]
        );
    }
}


class Scene11 extends Scene {
    fun @construct() {
        [
            new RestNote("w"),
        ] @=> Note restMeasure[];

        // Add sequences to scene
        this.setSeqs(
            [
                new Sequence(restMeasure, 52),
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
            new Note("0|o0|a0.0", "q", 50::ms, 50::ms),
            new Note("0|o0|a0.05", "q", 50::ms, 50::ms),
            new Note("0|o0|a0.0", "q", 50::ms, 50::ms),
            new Note("0|o0|a0.0", "q", 50::ms, 50::ms),
        ] @=> Note seq1A[];

        // Add sequences to scene
        this.setSeqs(
            [
                new Sequence(restMeasure, 2),
                new Sequence(seq1A, 4),
            ]
        );
    }
}


public class Etune3Voice1Score extends Score {
    fun @construct() {
        1 => this.voiceNum;

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
