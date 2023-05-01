class TrackAnalysis {
  final int numSamples;
  final double duration;
  final String sampleMd5;
  final int offsetSeconds;
  final int windowSeconds;
  final int analysisSampleRate;
  final int analysisChannels;
  final int endOfFadeIn;
  final double startOfFadeOut;
  final double loudness;
  final double tempo;
  final double tempoConfidence;
  final int timeSignature;
  final double timeSignatureConfidence;
  final int key;
  final double keyConfidence;
  final int mode;
  final double modeConfidence;
  final String codestring;
  final double codeVersion;
  final String echoprintstring;
  final double echoprintVersion;
  final String synchstring;
  final int synchVersion;
  final String rhythmstring;
  final int rhythmVersion;

  TrackAnalysis({
    required this.numSamples,
    required this.duration,
    required this.sampleMd5,
    required this.offsetSeconds,
    required this.windowSeconds,
    required this.analysisSampleRate,
    required this.analysisChannels,
    required this.endOfFadeIn,
    required this.startOfFadeOut,
    required this.loudness,
    required this.tempo,
    required this.tempoConfidence,
    required this.timeSignature,
    required this.timeSignatureConfidence,
    required this.key,
    required this.keyConfidence,
    required this.mode,
    required this.modeConfidence,
    required this.codestring,
    required this.codeVersion,
    required this.echoprintstring,
    required this.echoprintVersion,
    required this.synchstring,
    required this.synchVersion,
    required this.rhythmstring,
    required this.rhythmVersion,
  });
}
