@import "../notation.ck"


class Scene1 extends Scene {
    fun @construct() {
        [
            new RestNote("w"),
        ] @=> Note restMeasure[];

        [
            new RestNote("h"),
            new Note("0|o0|a0.4", "te", 50::ms, 50::ms),
            new Note("0|o0|a0.3", "te", 50::ms, 50::ms),
            new Note("0|o0|a0.4", "te", 50::ms, 50::ms),
            new Note("0|o0|a0.5", "te", 50::ms, 50::ms),
            new RestNote("te"),
            new RestNote("te"),
        ] @=> Note seq1A[];

        [
            new RestNote("h"),
            new Note("0|o0|a0.4", "te", 50::ms, 50::ms),
            new Note("0|o2|a0.3", "te", 50::ms, 50::ms),
            new Note("0|o2|a0.4", "te", 50::ms, 50::ms),
            new Note("0|o0|a0.5", "te", 50::ms, 50::ms),
            new RestNote("te"),
            new RestNote("te"),
        ] @=> Note seq1B[];

        // Add sequences to scene
        this.setSeqs(
            [
                new Sequence(restMeasure, 16),
                new Sequence(seq1A, 2),
                new Sequence(restMeasure, 2),
                new Sequence(seq1B, 2),
                new Sequence(restMeasure, 10),
            ]
        );
    }
}


public class Etune3Voice2Score extends Score {
    fun @construct() {
        2 => this.voiceNum;

        // Load scenes
        this.scenes << new Scene1();
        // this.scenes << new Scene2();
        // this.scenes << new Scene3();
        // this.scenes << new Scene4();
    }
}
