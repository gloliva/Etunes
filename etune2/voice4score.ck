// Imports
@import "../notation.ck"


class Scene1 extends Scene {
    fun @construct() {

        [
            new RestNote("w")
        ] @=> Note restMeasure[];

        // [
        //     new RestNote("h."),
        //     new Note("3|o1|a0.7", "s", 25::ms, 25::ms),
        //     new Note("0|o1|a0.75", "s", 25::ms, 25::ms),
        //     new Note("1|o1|a0.68", "e", 25::ms, 25::ms),
        // ] @=> Note seq1A[];

        [
            new RestNote("q"),
            new Note("3|o1|a0.7", "s", 25::ms, 0::ms),
            new Note("0|o1|a0.75", "s", 0::ms, 25::ms),
            new RestNote("e"),
            new Note("1|o1|a0.68", "e", 25::ms, 25::ms),
            new Note("0|o1|a0.7", "s", 25::ms, 0::ms),
            new Note("3|o1|a0.75", "s", 0::ms, 25::ms),
            new RestNote("q"),

            new RestNote("q"),
            new Note("3|o1|a0.7", "s", 25::ms, 0::ms),
            new Note("0|o1|a0.75", "s", 0::ms, 25::ms),
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


        // Add sequences to scene
        this.setSeqs(
            [
                new Sequence(restMeasure, 2),
                new Sequence(seq1A, 1),
                new Sequence(seq1B, 2),
                new Sequence(seq1C, 2),
                new Sequence(seq1D, 1),
                new Sequence(seq1E, 1),
            ]
        );
    }
}


class Scene2 extends Scene {
    fun @construct() {

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
