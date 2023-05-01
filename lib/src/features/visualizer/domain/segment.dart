class Segment {
  final double start;
  final double duration;
  final double confidence;
  final double loudnessStart;
  final double loudnessMax;
  final double loudnessMaxTime;
  final int loudnessEnd;
  final List<double> pitches;
  final List<double> timbre;

  Segment({
    required this.start,
    required this.duration,
    required this.confidence,
    required this.loudnessStart,
    required this.loudnessMax,
    required this.loudnessMaxTime,
    required this.loudnessEnd,
    required this.pitches,
    required this.timbre,
  });
}
