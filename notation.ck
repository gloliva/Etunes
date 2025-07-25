// Imports
@import "tuning.ck"


public class Note {
    // Note and amplitude
    int degree;
    int octaveDiff;
    float amp;

    // Timing variables
    dur beat;
    dur attack;
    dur sustain;
    dur release;

    fun @construct(string noteInfo, dur beat) {
        Note(noteInfo, beat, 0::ms, 0::ms);
    }

    fun @construct(string noteInfo, dur beat, dur attack, dur release) {
        // Replace delimeter "|" with empty space " " for string tokenizer
        noteInfo.replace("|", " ");

        // Go through each token to get note information
        StringTokenizer strtok;
        strtok.set(noteInfo);

        0 => int degree;
        0 => int octaveDiff;
        1. => float amp;

        while (strtok.more()) {
            strtok.next() => string token;

            // Check for octave
            if (token.charAt(0) == "o".charAt(0)) {
                token.substring(1).toInt() => octaveDiff;

            // Check for amplitude
            } else if (token.charAt(0) == "a".charAt(0)) {
                token.substring(1).toFloat() => amp;

            // Else pitch info
            } else {
                token.toInt() => degree;
            }
        }

        // Note variables
        degree => this.degree;
        octaveDiff => this.octaveDiff;
        amp => this.amp;

        // Duration variables
        beat => this.beat;
        attack => this.attack;
        release => this.release;
        beat - attack - release => this.sustain;
    }
}


public class RestNote extends Note {
    fun @construct(dur beat) {
        Note("0|a0.", beat);
    }
}


public class Sequence {
    Note notes[];
    int repeats;
    int size;
    dur seqDur;

    fun @construct(Note notes[], int repeats) {
        notes @=> this.notes;
        repeats => this.repeats;
        this.notes.size() => this.size;
        0::samp => this.seqDur;

        for (Note note : this.notes) {
            this.seqDur + note.beat => this.seqDur;
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

    fun void printDur() {
        chout <= "Voice Number: " <= this.voiceNum <= IO.nl();

        for (int idx; idx < this.scenes.size(); idx++) {
            this.scenes[idx] @=> Scene scene;
            0::ms => dur sceneLength;

            for (Sequence seq : scene.seqs) {
                (seq.seqDur * seq.repeats) + sceneLength => sceneLength;
            }

            <<< "   ", "Scene", idx, "duration: ", sceneLength / 44100. >>>;
        }
    }
}
