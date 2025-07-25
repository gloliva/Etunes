/*
    Classes for handling tuning
*/

public class Tuning {
    float octaveVolt;

    fun @construct() {
        0.1 => this.octaveVolt;
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
    }

    fun float cv(int degree, int octaveDiff) {
        return ( octaveDiff * this.octaveVolt ) + ( degree * cvStep );
    }
}
