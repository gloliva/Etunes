// Imports
@import "../notation.ck"


class Scene1 extends Scene {
    fun @construct() {

        [
            new RestNote("w")
        ] @=> Note restMeasure[];

        [
            new RestNote("h."),
            new Note("7|o1|a0.8", "q/3", 25::ms, 25::ms),
            new Note("8|o1|a0.7", "q/3", 25::ms, 25::ms),
            new Note("7|o1|a0.75", "q/3", 25::ms, 25::ms),
        ] @=> Note seq1A[];

        [
            new Note("0|o1|a0.6", "e", 25::ms, 25::ms),
            new RestNote("e"),
            new RestNote("h"),
            new Note("7|o1|a0.8", "q/3", 25::ms, 25::ms),
            new Note("8|o1|a0.7", "q/3", 25::ms, 25::ms),
            new Note("7|o1|a0.75", "q/3", 25::ms, 25::ms),
        ] @=> Note seq1B[];

        [
            new Note("4|o1|a0.6", "e", 25::ms, 25::ms),
            new RestNote("e"),
            new RestNote("h"),
            new Note("7|o1|a0.7", "e", 25::ms, 25::ms),
            new Note("13|o1|a0.75", "s", 25::ms, 0::ms),
            new Note("7|o1|a0.75", "s", 0::ms, 25::ms),
        ] @=> Note seq1C[];

        [
            new Note("4|o1|a0.6", "e", 25::ms, 25::ms),
            new RestNote("e"),
            new Note("11|o1|a0.65", "e", 25::ms, 25::ms),
            new Note("13|o1|a0.7", "s", 25::ms, 0::ms),
            new Note("11|o1|a0.65", "s", 0::ms, 25::ms),
            new Note("7|o1|a0.6", "e", 25::ms, 25::ms),
            new RestNote("e"),
            new Note("7|o1|a0.7", "e", 25::ms, 25::ms),
            new Note("13|o1|a0.75", "s", 25::ms, 0::ms),
            new Note("7|o1|a0.75", "s", 0::ms, 25::ms),
        ] @=> Note seq1D[];

        [
            new Note("13|o1|a0.7", "e", 25::ms, 25::ms),
            new RestNote("e"),
            new Note("13|o1|a0.6", "e", 25::ms, 25::ms),
            new RestNote("e"),
            new Note("13|o1|a0.7", "e", 25::ms, 25::ms),
            new RestNote("e"),
            new Note("13|o1|a0.6", "e", 25::ms, 25::ms),
            new RestNote("e"),
        ] @=> Note seq2A[];

        [
            new RestNote("h."),
            new RestNote("e"),
            new Note("13|o1|a0.6", "e", 25::ms, 25::ms),
        ] @=> Note seq3A[];

        [
            new Note("7|o1|a0.6", "e", 25::ms, 10::ms),
            new RestNote("s"),
            new Note("4|o1|a0.6", "s", 25::ms, 0::ms),
            new Note("11|o1|a0.65", "e.", 0::ms, 25::ms),
            new Note("4|o1|a0.58", "s", 25::ms, 0::ms),
            new Note("13|o1|a0.7", "e", 0::ms, 25::ms),
            new RestNote("q."),
        ] @=> Note seq3B[];


        // Add sequences to scene
        this.setSeqs(
            [
                new Sequence(restMeasure, 2),
                new Sequence(seq1A, 2),
                new Sequence(seq1B, 2),
                new Sequence(seq1C, 1),
                new Sequence(seq1D, 1),
                new Sequence(seq1B, 2),

                new Sequence(seq2A, 4),

                new Sequence(seq3A, 3),
                new Sequence(seq3B, 1),
            ]
        );
    }
}


class Scene2 extends Scene {
    fun @construct() {
        [
            new Note("4|o0|a0.65", "s", 25::ms, 75::ms),
            new Note("4|o0|a0.60", "s", 25::ms, 75::ms),
            new Note("4|o0|a0.55", "s", 25::ms, 75::ms),
            new Note("4|o0|a0.60", "s", 25::ms, 75::ms),
            new Note("4|o0|a0.65", "s", 25::ms, 75::ms),
            new Note("4|o0|a0.60", "s", 25::ms, 75::ms),
            new Note("4|o0|a0.55", "s", 25::ms, 75::ms),
            new Note("4|o0|a0.60", "s", 25::ms, 75::ms),
            new Note("4|o0|a0.65", "s", 25::ms, 75::ms),
            new Note("4|o0|a0.60", "s", 25::ms, 75::ms),
            new Note("4|o0|a0.55", "s", 25::ms, 75::ms),
            new Note("4|o0|a0.60", "s", 25::ms, 75::ms),
            new Note("4|o0|a0.65", "s", 25::ms, 75::ms),
            new Note("4|o0|a0.60", "s", 25::ms, 75::ms),
            new Note("4|o0|a0.55", "s", 25::ms, 75::ms),
            new Note("4|o0|a0.60", "s", 25::ms, 75::ms),

            new Note("0|o0|a0.65", "s", 25::ms, 75::ms),
            new Note("0|o0|a0.60", "s", 25::ms, 75::ms),
            new Note("0|o0|a0.55", "s", 25::ms, 75::ms),
            new Note("0|o0|a0.60", "s", 25::ms, 75::ms),
            new Note("0|o0|a0.65", "s", 25::ms, 75::ms),
            new Note("0|o0|a0.60", "s", 25::ms, 75::ms),
            new Note("0|o0|a0.55", "s", 25::ms, 75::ms),
            new Note("0|o0|a0.60", "s", 25::ms, 75::ms),
            new Note("0|o0|a0.65", "s", 25::ms, 75::ms),
            new Note("0|o0|a0.60", "s", 25::ms, 75::ms),
            new Note("0|o0|a0.55", "s", 25::ms, 75::ms),
            new Note("0|o0|a0.60", "s", 25::ms, 75::ms),
            new Note("0|o0|a0.65", "s", 25::ms, 75::ms),
            new Note("0|o0|a0.60", "s", 25::ms, 75::ms),
            new Note("0|o0|a0.55", "s", 25::ms, 75::ms),
            new Note("0|o0|a0.60", "s", 25::ms, 75::ms),
        ] @=> Note seq1A[];

        // Add sequences to scene
        this.setSeqs(
            [
                new Sequence(seq1A, 4),
            ]
        );
    }
}


class Scene3 extends Scene {
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
        this.scenes << new Scene2();
    }
}
