class Section {
  final int start;
  final double duration;
  final int confidence;
  final double loudness;
  final double tempo;
  final double tempoConfidence;
  final int key;
  final double keyConfidence;
  final int mode;
  final double modeConfidence;
  final int timeSignature;
  final int timeSignatureConfidence;

  Section({
    required this.start,
    required this.duration,
    required this.confidence,
    required this.loudness,
    required this.tempo,
    required this.tempoConfidence,
    required this.key,
    required this.keyConfidence,
    required this.mode,
    required this.modeConfidence,
    required this.timeSignature,
    required this.timeSignatureConfidence,
  });
}
