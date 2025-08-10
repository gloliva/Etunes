@import "../notation.ck"


class Scene1 extends Scene {
    fun @construct() {
        [
            new RestNote("w"),
        ] @=> Note restMeasure[];

        [
            new Note("0|o-1|a0.3", "w", 1500::ms, 0::ms),
        ] @=> Note seq1A[];

        [
            new Note("0|o-1|a0.3", "w", 0::ms, 0::ms),
        ] @=> Note seq1B[];

        [
            new Note("0|o-1|a0.3", "w", 0::ms, 1500::ms),
        ] @=> Note seq1C[];


        // Add sequences to scene
        this.setSeqs(
            [
                new Sequence(restMeasure, 23),
                new Sequence(seq1A, 1),
                new Sequence(seq1B, 7),
                new Sequence(seq1C, 1),
                new Sequence(restMeasure, 5),
            ]
        );
    }
}


class Scene2 extends Scene {
    fun @construct() {
        [
            new RestNote("w"),
        ] @=> Note restMeasure[];


        [
            new Note("0|o-1|a0.25", "w", 250::ms, 0::ms),
            new Note("0|o-1|a0.3", "h.", 0::ms, 50::ms),
            new Note("0|o0|a0.3", "q", 50::ms, 250::ms),
        ] @=> Note seq1A[];

        [
            new Note("1|o-1|a0.3", "w", 250::ms, 0::ms),
            new Note("1|o-1|a0.25", "h.", 0::ms, 50::ms),
            new Note("1|o0|a0.3", "q", 50::ms, 250::ms),
        ] @=> Note seq1B[];



        // Add sequences to scene
        this.setSeqs(
            [
                new Sequence(seq1A, 1),
                new Sequence(seq1B, 1),
                new Sequence(seq1A, 1),
                new Sequence(seq1B, 1),
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
            new Note("1|o1|a0.25", "w", 300::ms, 0::ms),
            new Note("1|o1|a0.25", "w", 0::ms, 0::ms),
            new Note("0|o1|a0.25", "w", 0::ms, 0::ms),
            new Note("0|o1|a0.25", "w", 0::ms, 300::ms),
        ] @=> Note seq1A[];

        [
            new Note("1|o1|a0.25", "w", 300::ms, 0::ms),
            new Note("1|o1|a0.25", "w", 0::ms, 0::ms),
            new Note("2|o0|a0.25", "w", 0::ms, 0::ms),
            new Note("2|o0|a0.25", "w", 0::ms, 300::ms),
        ] @=> Note seq1B[];

        // Add sequences to scene
        this.setSeqs(
            [
                new Sequence(seq1A, 1),
                new Sequence(seq1B, 1),
            ]
        );
    }
}


public class Etune3Voice3Score extends Score {
    fun @construct() {
        3 => this.voiceNum;

        // Load scenes
        this.scenes << new Scene1();
        this.scenes << new Scene2();
        this.scenes << new Scene3();
        // this.scenes << new Scene4();
    }
}
