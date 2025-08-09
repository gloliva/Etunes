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

        // Add sequences to scene
        this.setSeqs(
            [
                new Sequence(restMeasure, 24),
                new Sequence(seq1A, 8),
                new Sequence(seq1B, 4),
                new Sequence(seq1C, 4),
                new Sequence(seq1D, 16),
                new Sequence(seq2A, 16),
            ]
        );
    }
}


public class Etune3Voice4Score extends Score {
    fun @construct() {
        4 => this.voiceNum;

        // Load scenes
        this.scenes << new Scene1();
        // this.scenes << new Scene2();
        // this.scenes << new Scene3();
        // this.scenes << new Scene4();
    }
}
