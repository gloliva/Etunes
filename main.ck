/*

    Étunes - Three Experiments in Modular Tuning

    ```
        chuck --dac:<ID_OF_YOUR_AUDIO_INTERFACE> --out:16 main.ck:<EXPERIMENT NUMBER>
    ```

*/

// Imports
@import "clock.ck"
@import "metadata.ck"
@import "orchestration.ck"


// Command line args
0 => int opusIdx;
if (me.args()) me.arg(0) => Std.atoi => opusIdx;


// Score Metadata
Orchestrator.getScoreMetadata(opusIdx) @=> ScoreMetadata metadata;


// Clock
Clock clock(metadata.tempo);
clock.connectToDac(14, 15);


// Orchestration
Orchestrator orchestrator(metadata);


// Run
spork ~ clock.signalPulse();
clock.turnOn();

orchestrator.run(opusIdx, clock);
clock.turnOff();
