// Imports
@import "../notation.ck"


class Scene1 extends Scene {
    fun @construct() {

        [
            new RestNote("w")
        ] @=> Note restMeasure[];

        [
            new RestNote("q"),
            new Note("3|o1|a0.6", "s", 25::ms, 0::ms),
            new Note("0|o1|a0.65", "s", 0::ms, 25::ms),
            new RestNote("e"),
            new Note("1|o1|a0.68", "e", 25::ms, 25::ms),
            new Note("0|o1|a0.7", "s", 25::ms, 0::ms),
            new Note("3|o1|a0.75", "s", 0::ms, 25::ms),
            new RestNote("q"),

            new RestNote("q"),
            new Note("3|o1|a0.6", "s", 25::ms, 0::ms),
            new Note("0|o1|a0.65", "s", 0::ms, 25::ms),
            new RestNote("e"),
            new Note("1|o1|a0.68", "e", 25::ms, 0::ms),
            new Note("0|o1|a0.7", "s", 0::ms, 25::ms),
            new Note("0|o1|a0.75", "s", 25::ms, 25::ms),
            new RestNote("q"),
        ] @=> Note seq1A[];

        [
            new Note("0|o1|a0.7", "e", 25::ms, 25::ms),
            new RestNote("e"),
            new RestNote("h"),
            new Note("3|o1|a0.75", "q/3", 25::ms, 25::ms),
            new Note("0|o1|a0.68", "q/3", 25::ms, 25::ms),
            new Note("3|o1|a0.75", "q/3", 25::ms, 25::ms),
        ] @=> Note seq1B[];

        [
            new Note("1|o1|a0.6", "e", 25::ms, 25::ms),
            new RestNote("e"),
            new RestNote("q"),
            new Note("0|o1|a0.7", "s", 25::ms, 20::ms),
            new Note("0|o1|a0.7", "s", 25::ms, 20::ms),
            new Note("0|o1|a0.7", "s", 25::ms, 20::ms),
            new RestNote("s"),
            new Note("3|o1|a0.6", "s", 25::ms, 0::ms),
            new Note("5|o1|a0.6", "s", 0::ms, 0::ms),
            new Note("1|o1|a0.65", "e", 0::ms, 50::ms),
        ] @=> Note seq1C[];

        [
            new Note("0|o1|a0.6", "s", 25::ms, 25::ms),
            new RestNote("s"),
            new Note("4|o1|a0.6", "e", 25::ms, 25::ms),

            new RestNote("s"),
            new Note("4|o1|a0.6", "s", 25::ms, 0::ms),
            new Note("1|o1|a0.65", "e", 0::ms, 25::ms),

            new RestNote("s"),
            new Note("0|o1|a0.6", "s", 25::ms, 0::ms),
            new Note("4|o1|a0.58", "s", 0::ms, 25::ms),
            new Note("4|o1|a0.65", "s", 25::ms, 25::ms),
            new RestNote("s"),
            new Note("3|o1|a0.68", "s", 25::ms, 0::ms),
            new Note("1|o1|a0.65", "e", 0::ms, 25::ms),
        ] @=> Note seq1D[];

        [
            new Note("0|o1|a0.7", "s", 25::ms, 25::ms),
            new Note("0|o1|a0.6", "s", 25::ms, 25::ms),
            new Note("0|o1|a0.65", "e", 25::ms, 25::ms),
            new RestNote("h"),
            new Note("3|o1|a0.6", "q/3", 25::ms, 25::ms),
            new Note("0|o1|a0.65", "q/3", 25::ms, 25::ms),
            new Note("3|o1|a0.6", "q/3", 25::ms, 25::ms),
        ] @=> Note seq1E[];

        [
            new RestNote("e"),
            new Note("1|o1|a0.6", "e", 25::ms, 25::ms),
            new RestNote("e"),
            new Note("0|o1|a0.7", "e", 25::ms, 25::ms),
            new RestNote("e"),
            new Note("1|o1|a0.6", "e", 25::ms, 25::ms),
            new RestNote("e"),
            new Note("0|o1|a0.7", "e", 25::ms, 25::ms),
        ] @=> Note seq2A[];

        [
            new RestNote("e"),
            new Note("4|o1|a0.6", "e", 25::ms, 25::ms),
            new RestNote("e"),
            new Note("0|o1|a0.7", "e", 25::ms, 25::ms),
            new RestNote("e"),
            new Note("4|o1|a0.6", "e", 25::ms, 25::ms),
            new RestNote("e"),
            new Note("0|o1|a0.7", "e", 25::ms, 25::ms),

            new Note("1|o1|a0.6", "e", 25::ms, 25::ms),
            new Note("0|o1|a0.7", "e", 25::ms, 25::ms),
            new Note("1|o1|a0.6", "e", 25::ms, 25::ms),
            new Note("0|o1|a0.7", "e", 25::ms, 25::ms),
            new Note("4|o1|a0.6", "e", 25::ms, 25::ms),
            new Note("0|o1|a0.7", "e", 25::ms, 25::ms),
            new Note("4|o1|a0.6", "s", 25::ms, 0::ms),
            new Note("1|o1|a0.6", "s", 0::ms, 25::ms),
            new Note("0|o1|a0.6", "s/2", 10::ms, 10::ms),
            new Note("0|o1|a0.6", "s/2", 10::ms, 10::ms),
            new Note("0|o1|a0.6", "s/2", 10::ms, 10::ms),
            new Note("0|o1|a0.6", "s/2", 10::ms, 10::ms),
        ] @=> Note seq2B[];

        [
            new RestNote("h."),
            new RestNote("e"),
            new Note("4|o1|a0.6", "s", 25::ms, 25::ms),
            new Note("4|o1|a0.6", "s", 25::ms, 25::ms),
        ] @=> Note seq3A[];

        [
            new RestNote("h."),
            new Note("4|o1|a0.6", "e", 25::ms, 75::ms),
            new Note("1|o1|a0.6", "e", 25::ms, 75::ms),
        ] @=> Note seq3B[];

        [
            new Note("4|o1|a0.6", "s", 25::ms, 25::ms),
            new Note("1|o1|a0.6", "s", 25::ms, 25::ms),
            new Note("4|o1|a0.6", "s", 25::ms, 25::ms),
            new Note("1|o1|a0.6", "s", 25::ms, 25::ms),
            new Note("4|o1|a0.6", "s", 25::ms, 25::ms),
            new Note("1|o1|a0.6", "s", 25::ms, 25::ms),
            new Note("4|o1|a0.6", "s", 25::ms, 25::ms),
            new Note("1|o1|a0.6", "s", 25::ms, 25::ms),
            new Note("4|o1|a0.6", "e", 25::ms, 25::ms),
            new RestNote("q."),
        ] @=> Note seq3C[];


        // Add sequences to scene
        this.setSeqs(
            [
                new Sequence(restMeasure, 3),
                new Sequence(seq1A, 1),
                new Sequence(seq1B, 2),
                new Sequence(seq1C, 2),
                new Sequence(seq1D, 1),
                new Sequence(seq1E, 1),

                new Sequence(seq2A, 2),
                new Sequence(seq2B, 1),

                new Sequence(seq3A, 1),
                new Sequence(seq3B, 1),
                new Sequence(seq3A, 1),
                new Sequence(seq3C, 1),
            ]
        );
    }
}


class Scene2 extends Scene {
    fun @construct() {
        [
            new RestNote("w")
        ] @=> Note restMeasure[];

        [
            new Note("4|o-1|a0.65", "s", 25::ms, 75::ms),
            new Note("4|o-1|a0.60", "s", 25::ms, 75::ms),
            new Note("4|o-1|a0.55", "s", 25::ms, 75::ms),
            new Note("4|o-1|a0.60", "s", 25::ms, 75::ms),
            new Note("4|o-1|a0.65", "s", 25::ms, 75::ms),
            new Note("4|o-1|a0.60", "s", 25::ms, 75::ms),
            new Note("4|o-1|a0.55", "s", 25::ms, 75::ms),
            new Note("4|o-1|a0.60", "s", 25::ms, 75::ms),
            new Note("4|o-1|a0.65", "s", 25::ms, 75::ms),
            new Note("4|o-1|a0.60", "s", 25::ms, 75::ms),
            new Note("4|o-1|a0.55", "s", 25::ms, 75::ms),
            new Note("4|o-1|a0.60", "s", 25::ms, 75::ms),
            new Note("4|o-1|a0.65", "s", 25::ms, 75::ms),
            new Note("4|o-1|a0.60", "s", 25::ms, 75::ms),
            new Note("4|o-1|a0.55", "s", 25::ms, 75::ms),
            new Note("4|o-1|a0.60", "s", 25::ms, 75::ms),

            new Note("0|o-1|a0.65", "s", 25::ms, 75::ms),
            new Note("0|o-1|a0.60", "s", 25::ms, 75::ms),
            new Note("0|o-1|a0.55", "s", 25::ms, 75::ms),
            new Note("0|o-1|a0.60", "s", 25::ms, 75::ms),
            new Note("0|o-1|a0.65", "s", 25::ms, 75::ms),
            new Note("0|o-1|a0.60", "s", 25::ms, 75::ms),
            new Note("0|o-1|a0.55", "s", 25::ms, 75::ms),
            new Note("0|o-1|a0.60", "s", 25::ms, 75::ms),
            new Note("0|o-1|a0.65", "s", 25::ms, 75::ms),
            new Note("0|o-1|a0.60", "s", 25::ms, 75::ms),
            new Note("0|o-1|a0.55", "s", 25::ms, 75::ms),
            new Note("0|o-1|a0.60", "s", 25::ms, 75::ms),
            new Note("0|o-1|a0.65", "s", 25::ms, 75::ms),
            new Note("0|o-1|a0.60", "s", 25::ms, 75::ms),
            new Note("0|o-1|a0.55", "s", 25::ms, 75::ms),
            new Note("0|o-1|a0.60", "s", 25::ms, 75::ms),
        ] @=> Note seq1A[];

        [
            new RestNote("h"),
            new Note("6|o2|a0.4", "e", 25::ms, 50::ms),
            new Note("5|o2|a0.5", "e", 25::ms, 50::ms),
            new Note("6|o2|a0.6", "e", 25::ms, 50::ms),
            new Note("6|o2|a0.7", "e", 25::ms, 50::ms),
        ] @=> Note seq3A[];

        [
            new Note("6|o2|a0.6", "e", 50::ms, 75::ms),
            new Note("5|o2|a0.5", "e", 50::ms, 75::ms),
            new Note("6|o2|a0.6", "e/3", 20::ms, 0::ms),
            new Note("4|o2|a0.55", "e/3", 0::ms, 0::ms),
            new Note("6|o2|a0.65", "e/3", 0::ms, 20::ms),
            new Note("1|o2|a0.7", "e", 50::ms, 75::ms),

            new Note("6|o2|a0.65", "e", 50::ms, 0::ms),
            new Note("5|o2|a0.55", "e", 0::ms, 75::ms),
            new Note("1|o2|a0.6", "s", 25::ms, 0::ms),
            new Note("4|o2|a0.6", "s", 0::ms, 0::ms),
            new Note("5|o2|a0.7", "e", 0::ms, 75::ms),
        ] @=> Note seq3B[];

        [
            new Note("6|o2|a0.6", "e", 25::ms, 50::ms),
            new Note("5|o2|a0.5", "e", 25::ms, 50::ms),
            new Note("6|o2|a0.55", "e", 25::ms, 50::ms),
            new Note("5|o2|a0.7", "e", 25::ms, 50::ms),
            new Note("6|o2|a0.6", "e", 25::ms, 50::ms),
            new Note("5|o2|a0.5", "e", 25::ms, 50::ms),
            new Note("6|o2|a0.66", "e", 25::ms, 50::ms),
            new Note("5|o2|a0.6", "e", 25::ms, 50::ms),
        ] @=> Note seq3C[];

        // Add sequences to scene
        this.setSeqs(
            [
                new Sequence(seq1A, 12),
                new Sequence(restMeasure, 7),
                new Sequence(seq3A, 1),
                new Sequence(seq3B, 2),
                new Sequence(seq3C, 1),
                new Sequence(seq3B, 1),
            ]
        );
    }
}


class Scene3 extends Scene {
    fun @construct() {

        [
            new RestNote("w")
        ] @=> Note restMeasure[];

        [
            new Note("5|o2|a0.7", "s", 25::ms, 75::ms),
            new Note("5|o2|a0.5", "s", 25::ms, 75::ms),
            new Note("2|o2|a0.6", "s", 25::ms, 75::ms),
            new Note("5|o2|a0.7", "s", 25::ms, 75::ms),

            new Note("5|o2|a0.7", "s", 25::ms, 75::ms),
            new Note("2|o2|a0.5", "s", 25::ms, 75::ms),
            new Note("5|o2|a0.6", "s", 25::ms, 75::ms),
            new Note("5|o2|a0.7", "s", 25::ms, 75::ms),

            new Note("5|o2|a0.7", "s", 25::ms, 75::ms),
            new Note("5|o2|a0.5", "s", 25::ms, 75::ms),
            new Note("2|o2|a0.6", "s", 25::ms, 75::ms),
            new Note("5|o2|a0.7", "s", 25::ms, 75::ms),

            new Note("5|o2|a0.7", "e", 25::ms, 75::ms),
            new Note("0|o2|a0.6", "e", 25::ms, 75::ms),
        ] @=> Note seq1A[];

        [
            new Note("5|o2|a0.7", "s", 25::ms, 75::ms),
            new Note("2|o2|a0.5", "s", 25::ms, 75::ms),
            new Note("1|o2|a0.6", "s", 25::ms, 75::ms),
            new Note("5|o2|a0.7", "s", 25::ms, 75::ms),

            new Note("2|o2|a0.7", "s", 25::ms, 75::ms),
            new Note("1|o2|a0.5", "s", 25::ms, 75::ms),
            new RestNote("s"),
            new Note("2|o2|a0.7", "s", 25::ms, 75::ms),

            new Note("2|o2|a0.7", "s", 25::ms, 75::ms),
            new Note("2|o2|a0.5", "s", 25::ms, 75::ms),
            new Note("1|o2|a0.6", "s", 25::ms, 75::ms),
            new Note("2|o2|a0.7", "s", 25::ms, 75::ms),

            new Note("1|o2|a0.7", "e", 25::ms, 75::ms),
            new Note("0|o2|a0.6", "e", 25::ms, 75::ms),
        ] @=> Note seq1B[];

        [
            new Note("5|o0|a0.7", "s", 25::ms, 75::ms),
            new Note("5|o2|a0.5", "s", 25::ms, 75::ms),
            new Note("2|o0|a0.6", "s", 25::ms, 75::ms),
            new Note("5|o1|a0.7", "s", 25::ms, 75::ms),

            new Note("5|o0|a0.7", "s", 25::ms, 75::ms),
            new Note("2|o1|a0.5", "s", 25::ms, 75::ms),
            new Note("5|o0|a0.6", "s", 25::ms, 75::ms),
            new Note("5|o2|a0.7", "s", 25::ms, 75::ms),

            new Note("5|o2|a0.7", "s", 25::ms, 75::ms),
            new Note("5|o0|a0.5", "s", 25::ms, 75::ms),
            new Note("2|o2|a0.6", "s", 25::ms, 75::ms),
            new Note("5|o1|a0.7", "s", 25::ms, 75::ms),

            new Note("5|o1|a0.7", "e", 25::ms, 75::ms),
            new Note("0|o2|a0.6", "e", 25::ms, 75::ms),
        ] @=> Note seq1C[];

        // Add sequences to scene
        this.setSeqs(
            [
                new Sequence(restMeasure, 4),
                new Sequence(seq1A, 3),
                new Sequence(seq1B, 1),
                new Sequence(seq1C, 3),
                new Sequence(seq1B, 1),
            ]
        );
    }
}


public class Etune2Voice4Score extends Score {
    fun @construct() {
        4 => this.voiceNum;

        // Load scenes
        this.scenes << new Scene1();
        this.scenes << new Scene2();
        this.scenes << new Scene3();
    }
}
