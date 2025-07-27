// Imports
@import "../notation.ck"


class Scene1 extends Scene {
    fun @construct() {
        Sequence seq1A(
            [
                new RestNote("h."),
                new Note("7|o1|a0.8", "q/3", 25::ms, 25::ms),
                new Note("7|o1|a0.65", "q/6", 25::ms, 25::ms),
                new Note("8|o1|a0.65", "q/6", 25::ms, 25::ms),
                new Note("7|o1|a0.7", "q/3", 25::ms, 25::ms),
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
        2 => this.voiceNum;

        this.scenes << new Scene1();
        // this.scenes << new Scene2();
    }
}
