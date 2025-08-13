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
            new Note("0|o-1|a0.25", "w", 250::ms, 0::ms),
            new Note("0|o-1|a0.3", "h.", 0::ms, 50::ms),
            new Note("0|o0|a0.3", "q", 50::ms, 250::ms),
        ] @=> Note seq1A[];

        [
            new Note("1|o-1|a0.3", "w", 250::ms, 0::ms),
            new Note("1|o-1|a0.25", "h.", 0::ms, 50::ms),
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
            new Note("1|o1|a0.25", "w", 300::ms, 0::ms),
            new Note("1|o1|a0.25", "w", 0::ms, 0::ms),
            new Note("0|o1|a0.25", "w", 0::ms, 0::ms),
            new Note("0|o1|a0.25", "w", 0::ms, 300::ms),
        ] @=> Note seq1A[];

        [
            new Note("1|o1|a0.25", "w", 300::ms, 0::ms),
            new Note("1|o1|a0.25", "w", 0::ms, 0::ms),
            new Note("1|o2|a0.25", "w", 0::ms, 0::ms),
            new Note("1|o2|a0.25", "w", 0::ms, 0::ms),
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

        // [
        //     new Note("0|o0|a0.5", "e", 45::ms, 45::ms),
        //     new RestNote("e"),

        //     new Note("3|o0|a0.4", "e", 45::ms, 45::ms),
        //     new RestNote("e"),

        //     new Note("0|o0|a0.3", "e", 45::ms, 45::ms),
        //     new RestNote("e"),

        //     new Note("3|o0|a0.4", "e", 45::ms, 45::ms),
        //     new Note("0|o0|a0.3", "e", 85::ms, 85::ms),
        // ] @=> Note seq1A[];

        // [
        //     new Note("2|o0|a0.5", "e", 45::ms, 45::ms),
        //     new RestNote("e"),

        //     new Note("0|o1|a0.4", "e", 45::ms, 45::ms),
        //     new RestNote("e"),

        //     new Note("2|o0|a0.3", "e", 45::ms, 45::ms),
        //     new RestNote("e"),

        //     new Note("0|o1|a0.4", "e", 45::ms, 45::ms),
        //     new RestNote("e"),
        // ] @=> Note seq1B[];

        [
            new Note("1|o2|a0.22", "w", 0::ms, 0::ms),
            new Note("1|o2|a0.22", "w", 0::ms, 1000::ms),
        ] @=> Note seq1A[];

        // [
        //     new Note("1|o0|a0.15", "w", 300::ms, 0::ms),
        //     new Note("1|o0|a0.15", "w", 0::ms, 0::ms),
        //     new Note("1|o0|a0.15", "w", 0::ms, 0::ms),
        //     new Note("1|o0|a0.15", "w", 0::ms, 300::ms),
        // ] @=> Note seq2A[];

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
            new Note("1|o2|a0.28", "w", 1500::ms, 0::ms),
            new Note("1|o2|a0.28", "w", 0::ms, 75::ms),
        ] @=> Note seq2B[];

        [
            new Note("3|o0|a0.28", "w", 1500::ms, 0::ms),
            new Note("3|o0|a0.38", "w", 1500::ms, 150::ms),
        ] @=> Note seq3A[];


        // Add sequences to scene
        this.setSeqs(
            [
                // new Sequence(seq1A, 4),
                // new Sequence(seq1B, 2),
                // new Sequence(seq1A, 2),

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



public class Etune3Voice3Score extends Score {
    fun @construct() {
        3 => this.voiceNum;

        // Load scenes
        this.scenes << new Scene1();
        this.scenes << new Scene2();
        this.scenes << new Scene3();
        this.scenes << new Scene4();
    }
}
