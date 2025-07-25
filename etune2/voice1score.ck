// Imports
@import "../notation.ck"


class Scene1 extends Scene {
    fun @construct() {
        Sequence seq1A(
            [
                new Note("0|a1.0", 250::ms, 25::ms, 75::ms),
                new Note("7|a0.8", 250::ms, 25::ms, 75::ms),
                new Note("4|a0.6", 250::ms, 25::ms, 75::ms),
                new Note("7|a0.8", 250::ms, 25::ms, 75::ms),
            ],
            4
        );

        // Add sequences to scene
        this.addSeq(seq1A);
    }
}


class Scene2 extends Scene {
    fun @construct() {
        Sequence seq1A(
            [
                new Note("3|a1.0", 250::ms, 25::ms, 75::ms),
                new Note("10|a0.8", 250::ms, 25::ms, 75::ms),
                new Note("7|a0.6", 250::ms, 25::ms, 75::ms),
                new Note("10|a0.8", 250::ms, 25::ms, 75::ms),
            ],
            4
        );

        // Add sequences to scene
        this.addSeq(seq1A);
    }
}


public class Etune2Voice1Score extends Score {
    fun @construct() {
        1 => this.voiceNum;

        // Load scenes
        Scene1 scene1();
        Scene2 scene2();

        this.scenes << scene1;
        this.scenes << scene2;
    }
}
