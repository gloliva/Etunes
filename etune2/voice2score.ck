// Imports
@import "../notation.ck"


class Scene1 extends Scene {
    fun @construct() {
        Sequence seq1A(
            [
                new Note("5|o1|a0.5", "e", 25::ms, 75::ms),
                new Note("5|o1|a1.0", "e", 25::ms, 75::ms),
                new Note("5|o1|a0.7", "e", 25::ms, 75::ms),
                new Note("5|o1|a1.0", "e", 25::ms, 75::ms),
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
                new Note("3|o1|a1.0", "e", 25::ms, 75::ms),
                new Note("3|o1|a1.0", "e", 25::ms, 75::ms),
                new Note("10|o1|a0.7", "e", 25::ms, 75::ms),
                new Note("10|o1|a1.0", "e", 25::ms, 75::ms),
            ],
            4
        );

        // Add sequences to scene
        this.addSeq(seq1A);
    }
}


public class Etune2Voice2Score extends Score {
    fun @construct() {
        1 => this.voiceNum;

        // Load scenes
        Scene1 scene1();
        Scene2 scene2();

        this.scenes << scene1;
        this.scenes << scene2;
    }
}
