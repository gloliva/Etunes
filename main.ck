/*

    Étunes - Three Experiments in Modular Tuning

    ```
        chuck --dac:<ID_OF_YOUR_AUDIO_INTERFACE> --out:16 main.ck:<EXPERIMENT NUMBER>
    ```

*/

// Imports
@import "clock.ck"
@import "orchestration.ck"


// Command line args
0 => int opusIdx;
if (me.args()) me.arg(0) => Std.atoi => opusIdx;


// Defs
// TODO: these should be piece specific
140. => float TEMPO;
2 => int NUM_VOICES;


// Clock
Clock clock(TEMPO);
clock.connectToDac(14, 15);


// Orchestration
Orchestrator orchestrator(NUM_VOICES);


// Run
spork ~ clock.signalPulse();
clock.turnOn();

orchestrator.run(opusIdx);
clock.turnOff();
