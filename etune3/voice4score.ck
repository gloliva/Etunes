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
            new Note("0|o2|a0.2", "te", 25::ms, 75::ms),
            new Note("1|o1|a0.17", "te", 75::ms, 25::ms),
            new Note("0|o2|a0.13", "te", 25::ms, 75::ms),
        ] @=> Note seq1A[];

        [
            new Note("1|o2|a0.2", "te", 25::ms, 75::ms),
            new Note("1|o1|a0.17", "te", 75::ms, 25::ms),
            new Note("0|o2|a0.22", "te", 25::ms, 75::ms),
        ] @=> Note seq1B[];

        [
            new Note("0|o1|a0.2", "e", 25::ms, 125::ms),
            new Note("1|o1|a0.13", "e/3", 25::ms, 15::ms),
            new Note("1|o2|a0.11", "e/3", 25::ms, 15::ms),
            new Note("0|o1|a0.13", "e/3", 25::ms, 15::ms),
        ] @=> Note seq2A[];

        [
            new Note("0|o1|a0.2", "s", 25::ms, 15::ms),
            new Note("1|o1|a0.17", "s", 15::ms, 25::ms),
            new Note("0|o2|a0.13", "e/3", 25::ms, 15::ms),
            new Note("1|o2|a0.11", "e/3", 25::ms, 15::ms),
            new Note("0|o1|a0.13", "e/3", 25::ms, 15::ms),
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
            new Note("3|o3|a0.18", "w", 1500::ms, 0::ms),
            new Note("3|o3|a0.18", "w", 0::ms, 75::ms),
        ] @=> Note seq2B[];

        [
            new Note("3|o0|a0.08", "w", 800::ms, 0::ms),
            new Note("3|o0|a0.08", "w", 0::ms, 0::ms),
            new Note("2|o0|a0.08", "w", 0::ms, 0::ms),
            new Note("2|o0|a0.08", "w", 0::ms, 0::ms),
            new Note("3|o0|a0.08", "w", 0::ms, 0::ms),
            new Note("3|o0|a0.08", "w", 0::ms, 50::ms),
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


public class Etune3Voice4Score extends Score {
    fun @construct() {
        4 => this.voiceNum;

        // Load scenes
        this.scenes << new Scene1();
        this.scenes << new Scene2();
        this.scenes << new Scene3();
        this.scenes << new Scene4();
    }
}
