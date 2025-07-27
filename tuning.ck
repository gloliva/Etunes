/*
    Classes for handling tuning
*/

public class Tuning {
    float octaveVolt;
    string name;

    fun @construct() {
        0.1 => this.octaveVolt;
        "Default Tuning" => this.name;
    }

    fun float cv(int degree) {
        return this.cv(degree, 0);
    }

    fun float cv(int degree, int octaveDiff) {
        cherr <= "ERROR: Override this function based on Child Tuning." <= IO.nl();
        return -1;
    }
}


public class EDO extends Tuning {
    int divisions;
    float cvStep;

    fun @construct(int divisions) {
        Tuning();
        divisions => this.divisions;
        this.octaveVolt / divisions => cvStep;
        "EDO " + Std.itoa(this.divisions) => this.name;
    }

    fun float cv(int degree, int octaveDiff) {
        return ( octaveDiff * this.octaveVolt ) + ( degree * cvStep );
    }
}
