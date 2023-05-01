abstract class AnalysisPoint {
  /// The starting point (in seconds) of the time interval.

  /// Example value: 0.49567
  final double start;

  /// The duration (in seconds) of the time interval.

  /// Example value: 2.18749
  final double duration;

  /// The confidence, from 0.0 to 1.0, of the reliability of the interval.

  /// Example value: 0.925
  /// Range: 0 - 1
  final double confidence;

  AnalysisPoint({
    required this.start,
    required this.duration,
    required this.confidence,
  });
}
