"5|o4|a0.8" => string noteInfo;


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


<<< "Degree:", degree, "Octave diff:", octaveDiff, "Amp:", amp >>>;
