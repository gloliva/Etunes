// Imports
@import "../notation.ck"


class Scene1 extends Scene {
    fun @construct() {
        Sequence seq1A(
            [
                new Note("0|o-1|a0.7", "e", 25::ms, 75::ms),
                new RestNote("e"),
                new Note("13|o-1|a0.65", "q", 25::ms, 75::ms),
                new RestNote("q"),
                new Note("7|o-1|a0.7", "e", 25::ms, 75::ms),
                new RestNote("e"),
            ],
            2
        );

        Sequence seq1B(
            [
                new Note("0|o-1|a0.7", "e", 25::ms, 75::ms),
                new RestNote("e"),
                new Note("4|o-1|a0.65", "q", 25::ms, 75::ms),
                new RestNote("q"),
                new Note("7|o-1|a0.7", "e", 25::ms, 75::ms),
                new RestNote("e"),
            ],
            2
        );

        // Add sequences to scene
        this.setSeqs(
            [
                seq1A,
                seq1A,
                seq1B,
                seq1A,
            ]
        );
    }
}


class Scene2 extends Scene {
    fun @construct() {
        Sequence seq1A(
            [
                new Note("3|a1.0", "e", 25::ms, 75::ms),
                new Note("10|a0.8", "e", 25::ms, 75::ms),
                new Note("7|a0.6", "e", 25::ms, 75::ms),
                new Note("10|a0.8", "e", 25::ms, 75::ms),
            ],
            4
        );

        // Add sequences to scene
        this.addSeq(seq1A);
    }
}


public class Etune2Voice4Score extends Score {
    fun @construct() {
        4 => this.voiceNum;

        // Load scenes
        this.scenes << new Scene1();
        // this.scenes << new Scene2();
    }
}
