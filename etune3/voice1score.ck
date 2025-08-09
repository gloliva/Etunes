@import "../notation.ck"


class Scene1 extends Scene {
    fun @construct() {
        [
            new Note("0|o0|a0.0", "q", 50::ms, 50::ms),
            new Note("0|o0|a0.1", "q", 50::ms, 50::ms),
            new Note("0|o0|a0.0", "q", 50::ms, 50::ms),
            new Note("0|o0|a0.1", "q", 50::ms, 50::ms),
        ] @=> Note seq1A[];

        [
            new Note("0|o0|a0.1", "q", 50::ms, 50::ms),
            new Note("0|o0|a0.2", "q", 50::ms, 50::ms),
            new Note("0|o0|a0.1", "q", 50::ms, 50::ms),
            new Note("0|o0|a0.2", "q", 50::ms, 50::ms),
        ] @=> Note seq1B[];

        [
            new Note("0|o0|a0.2", "q", 50::ms, 50::ms),
            new Note("0|o0|a0.3", "q", 50::ms, 50::ms),
            new Note("0|o0|a0.2", "q", 50::ms, 50::ms),
            new Note("0|o0|a0.3", "q", 50::ms, 50::ms),
        ] @=> Note seq2A[];

        [
            new Note("0|o0|a0.3", "q", 50::ms, 50::ms),
            new Note("0|o0|a0.4", "q", 50::ms, 50::ms),
            new Note("0|o0|a0.3", "e", 50::ms, 50::ms),
            new Note("0|o0|a0.33", "e", 50::ms, 50::ms),
            new Note("0|o0|a0.4", "q", 50::ms, 50::ms),
        ] @=> Note seq3A[];

        [
            new Note("0|o0|a0.4", "q", 50::ms, 50::ms),
            new Note("0|o0|a0.5", "q", 50::ms, 50::ms),
            new Note("0|o0|a0.4", "q", 50::ms, 50::ms),
            new Note("0|o0|a0.5", "q", 50::ms, 50::ms),
        ] @=> Note seq3B[];

        [
            new Note("0|o0|a0.45", "q", 50::ms, 50::ms),
            new Note("0|o0|a0.6", "q", 50::ms, 50::ms),
            new Note("0|o0|a0.45", "e", 50::ms, 50::ms),
            new Note("0|o0|a0.5", "e", 50::ms, 50::ms),
            new Note("0|o0|a0.6", "q", 50::ms, 50::ms),
        ] @=> Note seq4A[];

        [
            new Note("0|o0|a0.5", "q", 50::ms, 50::ms),
            new Note("0|o0|a0.6", "q", 50::ms, 50::ms),
            new Note("0|o0|a0.5", "q", 50::ms, 50::ms),
            new Note("0|o0|a0.6", "q", 50::ms, 50::ms),
        ] @=> Note seq4B[];

        [
            new RestNote("q"),
            new Note("0|o0|a0.6", "q", 50::ms, 50::ms),
            new RestNote("q"),
            new Note("0|o0|a0.6", "q", 50::ms, 50::ms),
        ] @=> Note seq5A[];

        [
            new RestNote("h"),
            new Note("0|o0|a0.6", "q", 50::ms, 50::ms),
            new RestNote("q"),
        ] @=> Note seq5B[];

        // Add sequences to scene
        this.setSeqs(
            [
                new Sequence(seq1A, 4),
                new Sequence(seq1B, 4),
                new Sequence(seq2A, 8),
                new Sequence(seq3A, 4),
                new Sequence(seq3B, 4),
                new Sequence(seq4A, 4),
                new Sequence(seq4B, 4),
                new Sequence(seq5A, 2),
                new Sequence(seq5B, 2),
            ]
        );
    }
}


public class Etune3Voice1Score extends Score {
    fun @construct() {
        1 => this.voiceNum;

        // Load scenes
        this.scenes << new Scene1();
        // this.scenes << new Scene2();
        // this.scenes << new Scene3();
        // this.scenes << new Scene4();
    }
}
