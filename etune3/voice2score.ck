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
            new Note("0|o1|a0.2", "s", 50::ms, 50::ms),
        ] @=> Note seq1C[];

        [
            new Note("0|o0|a0.22", "s", 5::ms, 45::ms),
            new Note("0|o1|a0.17", "s", 5::ms, 45::ms),

            new Note("0|o0|a0.13", "e", 5::ms, 45::ms),
            new RestNote("e"),
            new Note("0|o0|a0.18", "e", 5::ms, 45::ms),

            new Note("0|o0|a0.22", "te", 50::ms, 50::ms),
            new Note("0|o2|a0.13", "e/3", 15::ms, 15::ms),
            new Note("0|o1|a0.15", "e/3", 15::ms, 15::ms),
            new Note("0|o2|a0.21", "te", 50::ms, 50::ms),

            new Note("0|o1|a0.23", "te", 50::ms, 50::ms),
            new RestNote("te"),
            new Note("0|o0|a0.3", "te", 50::ms, 50::ms),
        ] @=> Note seq1D[];

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
                // new Sequence(seq1D, 1),
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


public class Etune3Voice2Score extends Score {
    fun @construct() {
        2 => this.voiceNum;

        // Load scenes
        this.scenes << new Scene1();
        this.scenes << new Scene2();
        // this.scenes << new Scene3();
        // this.scenes << new Scene4();
    }
}
