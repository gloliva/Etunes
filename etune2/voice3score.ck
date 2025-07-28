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


class Scene2 extends Scene {
    fun @construct() {
        [
            new Note("4|o-1|a0.65", "w", 25::ms, 50::ms),
            new Note("0|o-1|a0.65", "w", 25::ms, 50::ms),
        ] @=> Note seq1A[];

        [
            new Note("6|o1|a0.7", "s", 10::ms, 10::ms),
            new Note("6|o1|a0.75", "s/2", 10::ms, 5::ms),
            new Note("5|o1|a0.75", "s/2", 10::ms, 5::ms),
            new RestNote("s"),
            new Note("6|o1|a0.75", "s", 10::ms, 50::ms),
        ] @=> Note seq2A[];

        [
            new RestNote("w"),
            new RestNote("h."),
            new Note("6|o1|a0.3", "s/2", 10::ms, 5::ms),
            new Note("6|o1|a0.35", "s/2", 10::ms, 5::ms),
            new Note("6|o1|a0.4", "s/2", 10::ms, 5::ms),
            new Note("5|o1|a0.45", "s/2", 10::ms, 5::ms),
            new Note("6|o1|a0.55", "s/2", 10::ms, 5::ms),
            new Note("6|o1|a0.65", "s/2", 10::ms, 5::ms),
            new Note("6|o1|a0.70", "s/2", 10::ms, 5::ms),
            new Note("5|o1|a0.75", "s/2", 10::ms, 5::ms),
        ] @=> Note seq2B[];

        [
            new Note("5|o1|a0.78", "e", 10::ms, 50::ms),
            new RestNote("e"),
            new RestNote("h."),

            new RestNote("h"),

            new Note("6|o1|a0.1", "s/2", 10::ms, 5::ms),
            new Note("6|o1|a0.15", "s/2", 10::ms, 5::ms),
            new Note("6|o1|a0.2", "s/2", 10::ms, 5::ms),
            new Note("5|o1|a0.25", "s/2", 10::ms, 5::ms),
            new Note("6|o1|a0.35", "s/2", 10::ms, 5::ms),
            new Note("6|o1|a0.4", "s/2", 10::ms, 5::ms),
            new Note("6|o1|a0.45", "s/2", 10::ms, 5::ms),
            new Note("5|o1|a0.4", "s/2", 10::ms, 5::ms),

            new Note("6|o1|a0.35", "s/2", 10::ms, 5::ms),
            new Note("6|o1|a0.5", "s/2", 10::ms, 5::ms),
            new Note("6|o1|a0.6", "s/2", 10::ms, 5::ms),
            new Note("5|o1|a0.65", "s/2", 10::ms, 5::ms),
            new Note("6|o1|a0.7", "s/2", 10::ms, 5::ms),
            new Note("6|o1|a0.75", "s/2", 10::ms, 5::ms),
            new Note("6|o1|a0.78", "s/2", 10::ms, 5::ms),
            new Note("5|o1|a0.8", "s/2", 10::ms, 5::ms),
        ] @=> Note seq2C[];

        [
            new Note("4|o-1|a0.8", "e", 25::ms, 75::ms),
            new Note("4|o-1|a0.7", "e", 25::ms, 75::ms),

            new Note("6|o1|a0.65", "s/2", 10::ms, 5::ms),
            new Note("6|o1|a0.6", "s/2", 10::ms, 5::ms),
            new Note("7|o1|a0.55", "s/2", 10::ms, 5::ms),
            new Note("5|o1|a0.65", "s/2", 10::ms, 5::ms),
            new RestNote("s"),
            new Note("6|o1|a0.75", "s", 10::ms, 50::ms),

            new Note("1|o-1|a0.85", "e", 25::ms, 75::ms),
            new Note("6|o1|a0.55", "s/2", 10::ms, 5::ms),
            new Note("5|o1|a0.65", "s/2", 10::ms, 5::ms),

            new Note("1|o-1|a0.85", "e", 25::ms, 75::ms),
            new Note("1|o-1|a0.85", "e", 25::ms, 75::ms),
            new Note("6|o1|a0.65", "s", 10::ms, 5::ms),
        ] @=> Note seq3A[];

        // Add sequences to scene
        this.setSeqs(
            [
                new Sequence(seq1A, 4),
                new Sequence(seq2A, 16),
                new Sequence(seq1A, 2),
                new Sequence(seq2A, 16),
                new Sequence(seq2B, 1),
                new Sequence(seq2C, 1),
                new Sequence(seq3A, 12),
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
        this.scenes << new Scene2();
    }
}
