@import "../notation.ck"


class Scene1 extends Scene {
    fun @construct() {
        [
            new RestNote("w"),
        ] @=> Note restMeasure[];

        // Add sequences to scene
        this.setSeqs(
            [
                new Sequence(restMeasure, 32),
            ]
        );
    }
}


class Scene2 extends Scene {
    fun @construct() {
        [
            new RestNote("w"),
        ] @=> Note restMeasure[];

        // Add sequences to scene
        this.setSeqs(
            [
                new Sequence(restMeasure, 28),
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
            new Note("1.0|o0|a0.45", "w", 500::ms, 0::ms),
            new Note("1.0|o0|a0.42", "w", 0::ms, 0::ms),
            new Note("11.0|o0|a0.45", "w", 0::ms, 0::ms),
            new Note("11|o0|a0.42", "w", 0::ms, 700::ms),
        ] @=> Note seq5A[];

        [
            new Note("1.0|o0|a0.45", "w", 500::ms, 0::ms),
            new Note("0.8|o0|a0.42", "w", 0::ms, 0::ms),
            new Note("11.2|o0|a0.45", "w", 0::ms, 0::ms),
            new Note("10.9|o0|a0.42", "w", 0::ms, 500::ms),
        ] @=> Note seq5B[];


        // Add sequences to scene
        this.setSeqs(
            [
                new Sequence(restMeasure, 16),
                new Sequence(seq5A, 2),
                new Sequence(seq5B, 2),
            ]
        );
    }
}


class Scene4 extends Scene {
    fun @construct() {
        [
            new RestNote("w"),
        ] @=> Note restMeasure[];

        // Add sequences to scene
        this.setSeqs(
            [
                new Sequence(restMeasure, 32),
            ]
        );
    }
}

public class Etune1Voice4Score extends Score {
    fun @construct() {
        4 => this.voiceNum;

        // Load scenes
        this.scenes << new Scene1();
        this.scenes << new Scene2();
        this.scenes << new Scene3();
        this.scenes << new Scene4();
    }
}
