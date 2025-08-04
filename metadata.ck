// Imports
@import "notation.ck"
@import "tuning.ck"


public class ScoreMetadata {
    int numVoices;
    float tempo;

    Score voiceScores[0];

    float tempoSceneMap[0];
    Tuning tuningSceneMap[0];

    int excludedVoices[0];
    int excludedScenes[0];

    fun void setTempoChange(float tempo, int sceneNum) {
        tempo => this.tempoSceneMap[Std.itoa(sceneNum)];
    }

    fun int hasTempoChange(int sceneNum) {
        return this.tempoSceneMap.isInMap(Std.itoa(sceneNum));
    }

    fun float getTempoChange(int sceneNum) {
        return this.tempoSceneMap[Std.itoa(sceneNum)];
    }

    fun void setTuning(Tuning tuning, int voiceNum, int sceneNum) {
        Std.itoa(voiceNum) + Std.itoa(sceneNum) => string key;
        tuning @=> this.tuningSceneMap[key];
    }

    fun int hasTuning(int voiceNum, int sceneNum) {
        Std.itoa(voiceNum) + Std.itoa(sceneNum) => string key;
        return this.tuningSceneMap.isInMap(key);
    }

    fun Tuning getTuning(int voiceNum, int sceneNum) {
        Std.itoa(voiceNum) + Std.itoa(sceneNum) => string key;
        return this.tuningSceneMap[key];
    }

    fun int voiceExcluded(int voiceNum) {
        for (int excludedVoice : this.excludedVoices) {
            if (voiceNum == excludedVoice) return true;
        }

        return false;
    }

    fun int sceneExcluded(int sceneNum) {
        for (int excludedScene : this.excludedScenes) {
            if (sceneNum == excludedScene) return true;
        }

        return false;
    }
}
