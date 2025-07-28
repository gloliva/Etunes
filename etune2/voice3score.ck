// Imports
@import "../notation.ck"


class Scene1 extends Scene {
    fun @construct() {
        [
            new Note("0|o-1|a0.8", "e", 25::ms, 75::ms),
            new Note("3|o-1|a0.7", "s", 25::ms, 75::ms),
            new Note("3|o-1|a0.7", "s", 25::ms, 75::ms),
            new RestNote("s"),
            new Note("0|o-1|a0.7", "s", 25::ms, 75::ms),
            new Note("3|o-1|a0.75", "e", 25::ms, 75::ms),
        ] @=> Note seq1[];

        [
            new Note("0|o-1|a0.8", "s", 15::ms, 15::ms),
            new RestNote("s"),
            new Note("3|o-1|a0.65", "s", 15::ms, 0::ms),
            new Note("0|o-1|a0.65", "s", 0::ms, 15::ms),

            new Note("0|o-1|a0.8", "s", 15::ms, 15::ms),
            new RestNote("s"),
            new Note("3|o-1|a0.65", "s", 15::ms, 0::ms),
            new Note("0|o-1|a0.65", "s", 0::ms, 15::ms),

            new Note("5|o-1|a0.8", "s", 15::ms, 15::ms),
            new RestNote("s"),
            new Note("5|o-1|a0.65", "s", 15::ms, 0::ms),
            new Note("6|o-1|a0.65", "s", 0::ms, 15::ms),

            new Note("5|o-1|a0.8", "s", 15::ms, 15::ms),
            new RestNote("s"),
            new Note("5|o-1|a0.65", "s", 15::ms, 0::ms),
            new Note("6|o-1|a0.65", "s", 0::ms, 15::ms),
        ] @=> Note seq2[];

        [
            new Note("0|o-1|a0.8", "e", 25::ms, 75::ms),
            new Note("3|o-1|a0.7", "s", 25::ms, 75::ms),
            new Note("3|o-1|a0.7", "s", 25::ms, 75::ms),
            new RestNote("s"),
            new Note("0|o-1|a0.7", "s", 25::ms, 75::ms),
            new Note("3|o-1|a0.75", "e", 25::ms, 75::ms),

            new Note("0|o-1|a0.8", "e", 25::ms, 75::ms),
            new Note("3|o-1|a0.7", "s", 25::ms, 75::ms),
            new Note("3|o-1|a0.7", "s", 25::ms, 75::ms),
            new RestNote("s"),
            new Note("0|o-1|a0.7", "s", 25::ms, 75::ms),
            new RestNote("e"),
        ] @=> Note seq3[];

        // Add sequences to scene
        this.setSeqs(
            [
                new Sequence(seq1, 20),
                new Sequence(seq2, 4),
                new Sequence(seq3, 4),
            ]
        );
    }
}


class Scene3 extends Scene {
    fun @construct() {
        Sequence seq3A(
            [
                new Note("5|o-1|a0.7", "q", 25::ms, 75::ms),
                new Note("6|o-1|a0.65", "s", 25::ms, 75::ms),
                new Note("0|o-1|a0.65", "s", 25::ms, 75::ms),

                new Note("5|o-1|a0.7", "q", 25::ms, 75::ms),
                new Note("6|o-1|a0.65", "s", 25::ms, 75::ms),
                new Note("0|o-1|a0.65", "s", 25::ms, 75::ms),

                new Note("6|o-1|a0.7", "e", 25::ms, 75::ms),
                new Note("5|o-1|a0.65", "e", 25::ms, 75::ms),
            ],
            3
        );

        Sequence seq3B(
            [
                new Note("5|o-1|a0.7", "q", 25::ms, 75::ms),
                new Note("3|o-1|a0.65", "s", 25::ms, 75::ms),
                new Note("5|o-1|a0.65", "s", 25::ms, 75::ms),

                new Note("5|o-1|a0.7", "q", 25::ms, 75::ms),
                new Note("3|o-1|a0.65", "s", 25::ms, 75::ms),
                new Note("5|o-1|a0.65", "s", 25::ms, 75::ms),

                new Note("6|o-1|a0.7", "e", 25::ms, 75::ms),
                new Note("5|o-1|a0.65", "e", 25::ms, 75::ms),
            ],
            1
        );

        // Add sequences to scene
        this.setSeqs(
            [
                seq3A,
                seq3B,
            ]
        );
    }
}


public class Etune2Voice3Score extends Score {
    fun @construct() {
        3 => this.voiceNum;

        // Load scenes
        this.scenes << new Scene1();
        // this.scenes << new Scene2();
    }
}
