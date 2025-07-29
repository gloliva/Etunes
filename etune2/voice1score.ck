// Imports
@import "../notation.ck"


class Scene1 extends Scene {
    fun @construct() {
        [
            new Note("0|o-1|a0.4", "e", 25::ms, 75::ms),
            new RestNote("e"),
            new Note("0|o-1|a0.5", "e", 25::ms, 75::ms),
            new RestNote("e"),

            new Note("0|o-1|a0.6", "e", 25::ms, 75::ms),
            new RestNote("e"),
            new Note("0|o-1|a0.75", "e", 25::ms, 75::ms),
            new Note("0|o-1|a0.8", "e", 25::ms, 75::ms),

        ] @=> Note introSeq[];

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
                new Sequence(introSeq, 1),
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


class Scene2 extends Scene {
    fun @construct() {
        [
            new Note("4|o-1|a0.65", "e", 25::ms, 75::ms),
            new RestNote("e"),
            new Note("4|o-1|a0.55", "te", 25::ms, 75::ms),
            new Note("4|o-1|a0.5", "te", 25::ms, 75::ms),
            new Note("4|o-1|a0.55", "te", 25::ms, 75::ms),
            new Note("4|o-1|a0.65", "e", 25::ms, 75::ms),
            new RestNote("e"),
            new Note("4|o-1|a0.55", "te", 25::ms, 75::ms),
            new Note("4|o-1|a0.5", "te", 25::ms, 75::ms),
            new Note("4|o-1|a0.55", "te", 25::ms, 75::ms),

            new Note("0|o-1|a0.65", "e", 25::ms, 75::ms),
            new RestNote("e"),
            new Note("0|o-1|a0.55", "te", 25::ms, 75::ms),
            new Note("0|o-1|a0.5", "te", 25::ms, 75::ms),
            new Note("0|o-1|a0.55", "te", 25::ms, 75::ms),
            new Note("0|o-1|a0.65", "e", 25::ms, 75::ms),
            new RestNote("e"),
            new Note("0|o-1|a0.55", "te", 25::ms, 75::ms),
            new Note("0|o-1|a0.5", "te", 25::ms, 75::ms),
            new Note("0|o-1|a0.55", "te", 25::ms, 75::ms),
        ] @=> Note seq1A[];

        [
            new Note("17|o1|a0.65", "s/2", 10::ms, 5::ms),
            new Note("17|o1|a0.6", "s/2", 10::ms, 5::ms),
            new Note("17|o1|a0.55", "s/2", 10::ms, 5::ms),
            new Note("13|o1|a0.65", "s/2", 10::ms, 5::ms),
            new RestNote("s"),
            new Note("17|o1|a0.75", "s", 10::ms, 50::ms),
        ] @=> Note seq2A[];

        [
            new Note("17|o1|a0.65", "s/2", 10::ms, 5::ms),
            new Note("17|o1|a0.6", "s/2", 10::ms, 5::ms),
            new Note("17|o1|a0.55", "s/2", 10::ms, 0::ms),
            new Note("19|o1|a0.65", "s/2", 0::ms, 5::ms),
            new RestNote("s"),
            new Note("17|o1|a0.75", "s", 10::ms, 50::ms),
        ] @=> Note seq2B[];

        [
            new RestNote("w"),
            new RestNote("h."),
            new Note("17|o1|a0.3", "s/2", 10::ms, 5::ms),
            new Note("17|o1|a0.35", "s/2", 10::ms, 5::ms),
            new Note("17|o1|a0.4", "s/2", 10::ms, 5::ms),
            new Note("13|o1|a0.45", "s/2", 10::ms, 5::ms),
            new Note("17|o1|a0.55", "s/2", 10::ms, 5::ms),
            new Note("17|o1|a0.65", "s/2", 10::ms, 5::ms),
            new Note("17|o1|a0.70", "s/2", 10::ms, 5::ms),
            new Note("13|o1|a0.75", "s/2", 10::ms, 5::ms),
        ] @=> Note seq2C[];

        [
            new Note("19|o1|a0.78", "e", 10::ms, 50::ms),
            new RestNote("e"),
            new RestNote("h"),
            new Note("19|o1|a0.68", "e", 10::ms, 75::ms),
            new Note("19|o1|a0.68", "e", 10::ms, 75::ms),

            new RestNote("h"),

            new Note("17|o1|a0.1", "s/2", 10::ms, 5::ms),
            new Note("17|o1|a0.15", "s/2", 10::ms, 5::ms),
            new Note("19|o1|a0.2", "s/2", 10::ms, 5::ms),
            new Note("13|o1|a0.25", "s/2", 10::ms, 5::ms),
            new Note("17|o1|a0.35", "s/2", 10::ms, 5::ms),
            new Note("19|o1|a0.4", "s/2", 10::ms, 5::ms),
            new Note("17|o1|a0.45", "s/2", 10::ms, 5::ms),
            new Note("13|o1|a0.4", "s/2", 10::ms, 5::ms),

            new Note("17|o1|a0.35", "s/2", 10::ms, 5::ms),
            new Note("13|o1|a0.5", "s/2", 10::ms, 5::ms),
            new Note("19|o1|a0.6", "s/2", 10::ms, 5::ms),
            new Note("13|o1|a0.65", "s/2", 10::ms, 5::ms),
            new Note("21|o1|a0.7", "s/2", 10::ms, 5::ms),
            new Note("17|o1|a0.75", "s/2", 10::ms, 5::ms),
            new Note("17|o1|a0.78", "s/2", 10::ms, 5::ms),
            new Note("13|o1|a0.8", "s/2", 10::ms, 5::ms),
        ] @=> Note seq2D[];

        [
            new Note("4|o-1|a0.8", "e", 25::ms, 75::ms),
            new Note("17|o1|a0.65", "s/2", 10::ms, 5::ms),
            new Note("17|o1|a0.6", "s/2", 10::ms, 5::ms),
            new Note("19|o1|a0.55", "s/2", 10::ms, 5::ms),
            new Note("13|o1|a0.65", "s/2", 10::ms, 5::ms),

            new Note("4|o-1|a0.8", "e", 25::ms, 75::ms),
            new RestNote("s"),
            new Note("17|o1|a0.75", "s", 10::ms, 50::ms),

            new Note("2|o-1|a0.85", "e", 25::ms, 75::ms),
            new Note("2|o-1|a0.85", "e", 25::ms, 75::ms),

            new Note("19|o1|a0.55", "s/2", 10::ms, 5::ms),
            new Note("17|o1|a0.65", "s/2", 10::ms, 5::ms),
            new Note("2|o-1|a0.85", "e", 25::ms, 75::ms),
            new Note("13|o1|a0.65", "s", 10::ms, 5::ms),
        ] @=> Note seq3A[];

        // Add sequences to scene
        this.setSeqs(
            [
                new Sequence(seq1A, 6),
                new Sequence(seq2A, 12),
                new Sequence(seq2B, 4),
                new Sequence(seq2A, 16),
                new Sequence(seq2C, 1),
                new Sequence(seq2D, 1),
                new Sequence(seq3A, 12),
            ]
        );
    }
}


class Scene3 extends Scene {
    fun @construct() {
        [
            new Note("11|o-1|a0.7", "s", 25::ms, 25::ms),
            new Note("11|o-1|a0.6", "s", 25::ms, 25::ms),
            new Note("11|o-1|a0.7", "s", 25::ms, 25::ms),
            new Note("11|o-1|a0.65", "s", 50::ms, 50::ms),

            new Note("11|o-1|a0.7", "s", 25::ms, 25::ms),
            new Note("11|o-1|a0.6", "s", 25::ms, 25::ms),
            new Note("11|o-1|a0.7", "s", 25::ms, 25::ms),
            new Note("11|o-1|a0.65", "s", 50::ms, 50::ms),

            new Note("11|o-1|a0.7", "s", 25::ms, 25::ms),
            new Note("11|o-1|a0.6", "s", 25::ms, 25::ms),
            new Note("11|o-1|a0.7", "s", 25::ms, 25::ms),
            new Note("11|o-1|a0.65", "s", 50::ms, 50::ms),

            new Note("11|o-1|a0.68", "e", 50::ms, 50::ms),
            new Note("0|o-1|a0.65", "e", 50::ms, 50::ms),
        ] @=> Note seq1A[];

        [
            new Note("11|o-1|a0.7", "s", 25::ms, 25::ms),
            new Note("19|o-1|a0.6", "s", 25::ms, 25::ms),
            new Note("11|o-1|a0.7", "s", 25::ms, 25::ms),
            new Note("11|o-1|a0.65", "s", 50::ms, 50::ms),

            new Note("11|o-1|a0.7", "s", 25::ms, 25::ms),
            new Note("11|o-1|a0.6", "s", 25::ms, 25::ms),
            new Note("18|o-1|a0.7", "s", 25::ms, 25::ms),
            new Note("11|o-1|a0.65", "s", 50::ms, 50::ms),

            new Note("11|o-1|a0.7", "s", 25::ms, 25::ms),
            new Note("19|o-1|a0.6", "s", 25::ms, 25::ms),
            new Note("11|o-1|a0.7", "s", 25::ms, 25::ms),
            new Note("11|o-1|a0.65", "s", 50::ms, 50::ms),

            new Note("11|o-1|a0.68", "e", 50::ms, 50::ms),
            new Note("0|o-1|a0.65", "e", 50::ms, 50::ms),
        ] @=> Note seq1B[];

        // Add sequences to scene
        this.setSeqs(
            [
                new Sequence(seq1A, 3),
                new Sequence(seq1B, 1),
                new Sequence(seq1A, 3),
                new Sequence(seq1B, 1),
                new Sequence(seq1A, 3),
                new Sequence(seq1B, 1),
            ]
        );
    }
}


public class Etune2Voice1Score extends Score {
    fun @construct() {
        1 => this.voiceNum;

        // Load scenes
        this.scenes << new Scene1();
        this.scenes << new Scene2();
        this.scenes << new Scene3();
    }
}
