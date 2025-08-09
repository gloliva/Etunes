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
                new Sequence(restMeasure, 24),
                new Sequence(seq1A, 1),
                new Sequence(seq1B, 6),
                new Sequence(seq1C, 1),
                new Sequence(restMeasure, 4),
            ]
        );
    }
}


public class Etune3Voice3Score extends Score {
    fun @construct() {
        3 => this.voiceNum;

        // Load scenes
        this.scenes << new Scene1();
        // this.scenes << new Scene2();
        // this.scenes << new Scene3();
        // this.scenes << new Scene4();
    }
}
