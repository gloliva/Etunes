// Local imports
@import "clock.ck"
@import "tuning.ck"

// Package imports
@import "smuck"


public class Note {
    // Note and amplitude
    float degree;
    int octaveDiff;
    float amp;
    float releaseAmp;

    // Timing variables
    float beatValue;
    dur attack;
    dur release;

    fun @construct(string noteInfo, string rhythmInfo) {
        Note(noteInfo, rhythmInfo, 0::ms, 0::ms);
    }

    fun @construct(string noteInfo, string rhythmInfo, dur attack, dur release) {
        // Parse pitch information
        // Replace delimeter "|" with empty space " " for string tokenizer
        noteInfo.replace("|", " ");

        // Go through each token to get note information
        StringTokenizer strtok;
        strtok.set(noteInfo);

        0. => float degree;
        0 => int octaveDiff;
        0.5 => float amp;
        0. => float releaseAmp;

        while (strtok.more()) {
            strtok.next() => string token;

            // Check for octave
            if (token.charAt(0) == "o".charAt(0)) {
                token.substring(1).toInt() => octaveDiff;

            // Check for amplitude
            } else if (token.charAt(0) == "a".charAt(0)) {
                token.substring(1).toFloat() => amp;

            // Check for release amplitude
            } else if (token.charAt(0) == "r".charAt(0)) {
                token.substring(1).toFloat() => releaseAmp;

            // Else pitch info
            } else {
                token.toFloat() => degree;
            }
        }

        // Pitch variables
        degree => this.degree;
        octaveDiff => this.octaveDiff;
        amp => this.amp;
        releaseAmp => this.releaseAmp;

        // Parse rhythm information
        Smuckish.rhythms(rhythmInfo)[0] => float beatValue;

        // Rhythm variables
        beatValue => this.beatValue;
        attack => this.attack;
        release => this.release;
    }
}


public class RestNote extends Note {
    fun @construct(string rhythmInfo) {
        Note("0|a0.", rhythmInfo);
    }
}


public class Sequence {
    Note notes[];
    int repeats;
    int size;
    float totalBeatValue;

    fun @construct(Note notes[]) {
        Sequence(notes, 1);
    }

    fun @construct(Note notes[], int repeats) {
        notes @=> this.notes;
        repeats => this.repeats;
        this.notes.size() => this.size;
        0. => this.totalBeatValue;

        for (Note note : this.notes) {
            this.totalBeatValue + note.beatValue => this.totalBeatValue;
        }
    }
}


public class Scene {
    Sequence seqs[0];

    fun void setSeqs(Sequence seqs[]) {
        seqs @=> this.seqs;
    }

    fun void addSeq(Sequence seq) {
        this.seqs << seq;
    }
}


public class Score {
    Scene scenes[0];
    int voiceNum;

    fun void printDur(Clock clock) {
        chout <= "Voice Number: " <= this.voiceNum <= IO.nl();

        for (int idx; idx < this.scenes.size(); idx++) {
            this.scenes[idx] @=> Scene scene;
            0::ms => dur sceneDur;

            for (Sequence seq : scene.seqs) {
                ((seq.totalBeatValue * clock.quarterNote) * seq.repeats) + sceneDur => sceneDur;
            }

            <<< "   ", "Scene", idx + 1, "Approv duration:", sceneDur / 44100., "based on Tempo BPM:", clock.tempo >>>;
        }
    }
}
