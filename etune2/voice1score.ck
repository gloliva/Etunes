// Imports
@import "../notation.ck"


class Scene1 extends Scene {
    fun @construct() {
        [
            new Note("0|o-1|a0.8", "e", 25::ms, 75::ms),
            new RestNote("e"),
            new Note("13|o-1|a0.75", "e.", 25::ms, 0::ms),
            new Note("11|o-1|a0.7", "s", 0::ms, 25::ms),
            new RestNote("q"),
            new Note("7|o-1|a0.8", "e", 25::ms, 75::ms),
            new RestNote("e"),
        ] @=> Note seq1A[];

        [
            new Note("0|o-1|a0.8", "e", 25::ms, 75::ms),
            new RestNote("e"),
            new Note("17|o-1|a0.75", "e.", 25::ms, 0::ms),
            new Note("11|o-1|a0.7", "s", 0::ms, 25::ms),
            new RestNote("q"),
            new Note("10|o-1|a0.68", "e", 25::ms, 75::ms),
            new RestNote("e"),
        ] @=> Note seq1B[];

        [
            new Note("0|o-1|a0.8", "e", 25::ms, 75::ms),
            new RestNote("e"),
            new Note("13|o-1|a0.75", "e.", 25::ms, 0::ms),
            new Note("11|o-1|a0.7", "s", 0::ms, 25::ms),
            new RestNote("q"),
            new Note("7|o-1|a0.8", "e", 25::ms, 75::ms),
            new RestNote("e"),

            new Note("0|o-1|a0.8", "e", 25::ms, 75::ms),
            new RestNote("e"),
            new Note("7|o-1|a0.75", "e", 25::ms, 75::ms),
            new RestNote("e"),
            new Note("11|o-1|a0.8", "te", 25::ms, 25::ms),
            new Note("13|o-1|a0.75", "te", 25::ms, 25::ms),
            new Note("11|o-1|a0.72", "te", 25::ms, 25::ms),
            new Note("7|o-1|a0.8", "e", 25::ms, 75::ms),
            new Note("0|o-1|a0.6", "e", 25::ms, 75::ms),
        ] @=> Note seq1C[];

        [
            new Note("0|o-1|a0.8", "te", 25::ms, 75::ms),
            new Note("0|o-1|a0.65", "te", 25::ms, 75::ms),
            new Note("0|o-1|a0.75", "te", 25::ms, 75::ms),
            new Note("0|o-1|a0.8", "te", 25::ms, 75::ms),
            new Note("0|o-1|a0.65", "te", 25::ms, 75::ms),
            new Note("0|o-1|a0.75", "te", 25::ms, 75::ms),
            new Note("15|o-1|a0.7", "te", 25::ms, 75::ms),
            new Note("15|o-1|a0.65", "te", 25::ms, 75::ms),
            new Note("15|o-1|a0.68", "te", 25::ms, 75::ms),
            new Note("11|o-1|a0.7", "te", 25::ms, 75::ms),
            new Note("11|o-1|a0.65", "te", 25::ms, 75::ms),
            new Note("11|o-1|a0.68", "te", 25::ms, 75::ms),
        ] @=> Note seq2[];

        // Add sequences to scene
        this.setSeqs(
            [
                new Sequence(seq1A, 6),
                new Sequence(seq1B, 2),
                new Sequence(seq1A, 2),
                new Sequence(seq2, 4),
                new Sequence(seq1A, 2),
                new Sequence(seq1C, 1),
            ]
        );
    }
}


class Scene3 extends Scene {
    fun @construct() {
        Sequence seq3(
            [
                new Note("15|o-1|a0.7", "q", 25::ms, 25::ms),
                new Note("11|o-1|a0.75", "s", 50::ms, 50::ms),
                new Note("15|o-1|a0.7", "e.", 50::ms, 75::ms),
                new RestNote("q"),
                new Note("15|o-1|a0.65", "e", 50::ms, 75::ms),
                new RestNote("e"),

                new Note("15|o-1|a0.7", "q", 25::ms, 50::ms),
                new Note("11|o-1|a0.75", "s", 50::ms, 50::ms),
                new Note("15|o-1|a0.7", "e.", 50::ms, 75::ms),
                new RestNote("q"),
                new Note("19|o-1|a0.65", "e", 50::ms, 75::ms),
                new RestNote("e"),

                new Note("15|o-1|a0.7", "q", 25::ms, 50::ms),
                new Note("11|o-1|a0.75", "s", 50::ms, 50::ms),
                new Note("15|o-1|a0.7", "e.", 50::ms, 75::ms),
                new RestNote("q"),
                new Note("21|o-1|a0.65", "e", 50::ms, 75::ms),
                new RestNote("e"),

                new Note("11|o-1|a0.7", "q", 25::ms, 50::ms),
                new Note("19|o-1|a0.75", "s", 50::ms, 50::ms),
                new Note("11|o-1|a0.7", "e.", 50::ms, 50::ms),
                new RestNote("q"),
                new Note("19|o-1|a0.68", "e", 50::ms, 50::ms),
                new Note("11|o-1|a0.65", "e", 50::ms, 50::ms),
            ],
            1
        );

        // Add sequences to scene
        this.setSeqs(
            [
                seq3,
            ]
        );
    }
}


public class Etune2Voice1Score extends Score {
    fun @construct() {
        1 => this.voiceNum;

        // Load scenes
        this.scenes << new Scene1();
        // this.scenes << new Scene2();
    }
}
