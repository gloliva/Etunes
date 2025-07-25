/*
    Clock handles tempo control and Run gate signal
*/

public class Clock {
    float tempo;
    int PPQN;
    dur quarterNote;
    dur pulseDur;

    Step pulse;
    Step run;

    int start;

    fun @construct(float tempo) {
        Clock(tempo, 24);
    }

    fun @construct(float tempo, int PPQN) {
        tempo => this.tempo;
        PPQN => this.PPQN;

        // Calculate durations
        (60. / tempo)::second => this.quarterNote;
        this.quarterNote / PPQN => this.pulseDur;

        0 => this.start;
    }

    fun void connectToDac(int clockIdx, int runIdx) {
        dac.channels() => int numChannels;

        if (clockIdx < 0 || clockIdx >= numChannels || runIdx < 0 || runIdx >= numChannels) {
            cherr <= "ERROR: Clock connecting to DAC failed because of clockIdx and/or runIdx value" <= IO.nl();
        }

        this.pulse => dac.chan(clockIdx);
        this.run => dac.chan(runIdx);
    }

    fun void turnOn() {
        1. => this.run.next;
        1 => this.start;
    }

    fun void turnOff() {
        0. => this.run.next;
        0 => this.start;
    }

    fun void setTempo(float tempo) {
        tempo => this.tempo;

        // Recalculate durations
        (60. / tempo)::second => this.quarterNote;
        this.quarterNote / PPQN => this.pulseDur;
    }

    fun void rampTempo(float tempo, dur totalDur, int numDivisions) {
        // TODO: complete rampTempo
    }

    fun void signalPulse() {
        while (!this.start) {
            this.pulseDur => now;
        }

        while (true) {
            (1. - this.pulse.next()) => this.pulse.next;
            this.pulseDur / 2 => now;
        }
    }
}


public class TempoChangeMsg {
    float tempo;
    dur length;

    fun @construct(float tempo, dur length) {
        tempo => this.tempo;
        length => this.length;
    }
}
