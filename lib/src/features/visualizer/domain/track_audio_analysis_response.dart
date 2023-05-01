import 'package:spectrofy/src/features/visualizer/domain/analysis_point.dart';
import 'package:spectrofy/src/features/visualizer/domain/section.dart';
import 'package:spectrofy/src/features/visualizer/domain/segment.dart';
import 'package:spotify_sdk/models/track.dart';

class TrackAnalysisResponse {
  final ResponseMetadata meta;
  final Track track;

  /// The time intervals of the bars throughout the track.
  ///
  /// A bar (or measure) is a segment of time defined as a given number of beats.
  final List<AnalysisPoint> bars;

  /// The time intervals of beats throughout the track.
  ///
  /// A beat is the basic time unit of a piece of music;
  ///
  /// for example, each tick of a metronome. Beats are typically multiples of tatums.
  final List<AnalysisPoint> beats;

  /// Sections are defined by large variations in rhythm or timbre,
  ///
  /// e.g. chorus, verse, bridge, guitar solo, etc.
  ///
  /// Each section contains its own descriptions of
  /// tempo, key, mode, time_signature, and loudness.
  final List<Section> sections;

  /// Each segment contains a roughly conisistent sound throughout its duration.
  final List<Segment> segments;

  /// A tatum represents the lowest regular pulse train that a listener
  /// intuitively infers from the timing of perceived musical events (segments).
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
  /// The version of the Analyzer used to analyze this track.
  ///
  /// Example value: "4.0.0"
  final String analyzerVersion;

  /// The platform used to read the track's audio data.
  ///
  /// Example value: "Linux"
  final String platform;

  /// A detailed status code for this track. If analysis data is missing, this code may explain why.
  ///
  /// Example value: "OK"
  final String detailedStatus;

  /// The return code of the analyzer process.
  ///
  /// 0 if successful, 1 if any errors occurred.
  ///
  /// Example value: 0
  final int statusCode;

  /// The Unix timestamp (in seconds) at which this track was analyzed.
  ///
  /// Example value: 1495193577
  final int timestamp;

  /// The amount of time taken to analyze this track.
  ///
  /// Example value: 6.93906
  final double analysisTime;

  /// The method used to read the track's audio data.
  ///
  /// Example value: "libvorbisfile L+R 44100->22050"
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
