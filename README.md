# Étunes - Experiments in Modular Tuning

## Overview

### Prereqs

Install "smuck" via chump:

```bash
    chump install smuck
```

### Run

```bash
    chuck --dac:<ID_OF_ES8_INTERFACE> --out:16 --adc:<ID_OF_ES8_INTERFACE> --in:12 main.ck:<OPUS NUMBER>
```

## Étune2 - Split Channel

### Details

Number of oscillators: **4**.
All oscillators tuned to **E2**.

### How to Run

```bash
    chuck --dac:<ID_OF_ES8_INTERFACE> --out:16 --adc:<ID_OF_ES8_INTERFACE> --in:12 main.ck:2
```
