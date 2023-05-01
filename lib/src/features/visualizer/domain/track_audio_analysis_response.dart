import 'package:spectrofy/src/features/visualizer/domain/analysis_point.dart';
import 'package:spectrofy/src/features/visualizer/domain/section.dart';
import 'package:spectrofy/src/features/visualizer/domain/segment.dart';
import 'package:spotify_sdk/models/track.dart';

class TrackAnalysisResponse {
  final ResponseMetadata meta;
  final Track track;
  final List<AnalysisPoint> bars;
  final List<AnalysisPoint> beats;
  final List<Section> sections;
  final List<Segment> segments;
  final List<AnalysisPoint> tatums;

  TrackAnalysisResponse({
    required this.meta,
    required this.track,
    required this.bars,
    required this.beats,
    required this.sections,
    required this.segments,
    required this.tatums,
  });
}

class ResponseMetadata {
  final String analyzerVersion;
  final String platform;
  final String detailedStatus;
  final int statusCode;
  final int timestamp;
  final double analysisTime;
  final String inputProcess;

  ResponseMetadata({
    required this.analyzerVersion,
    required this.platform,
    required this.detailedStatus,
    required this.statusCode,
    required this.timestamp,
    required this.analysisTime,
    required this.inputProcess,
  });
}
