public class ScoreMetadata {
    int numVoices;
    float tempo;

    int excludedVoices[0];
    int excludedScenes[0];

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
