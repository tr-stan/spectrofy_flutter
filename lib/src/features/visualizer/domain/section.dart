class Section {
  /// The starting point (in seconds) of the section.
  ///
  /// Example value: 0
  final int start;

  /// The duration (in seconds) of the section.
  ///
  /// Example value: 6.97092
  final double duration;

  /// The confidence, from 0.0 to 1.0, of the reliability of the section's "designation".
  ///
  /// Example value: 1
  ///
  /// Range: 0 - 1
  final int confidence;

  /// The overall loudness of the section in decibels (dB).
  /// Loudness values are useful for comparing relative loudness of sections within tracks.
  ///
  /// Example value: -14.938
  final double loudness;

  /// The overall estimated tempo of the section in beats per minute (BPM).
  /// In musical terminology, tempo is the speed or pace of a given piece and derives directly from the average beat duration.
  ///
  /// Example value: 113.178
  final double tempo;

  /// The confidence, from 0.0 to 1.0, of the reliability of the tempo. Some tracks contain tempo changes or sounds which don't contain tempo (like pure speech) which would correspond to a low value in this field.
  ///
  /// Example value: 0.647
  ///
  /// Range: 0 - 1
  final double tempoConfidence;

  /// The estimated overall key of the section. The values in this field ranging from 0 to 11 mapping to pitches using standard Pitch Class notation (E.g. 0 = C, 1 = C♯/D♭, 2 = D, and so on). If no key was detected, the value is -1.
  ///
  /// Example value: 9
  final int key;

  /// The confidence, from 0.0 to 1.0, of the reliability of the key. Songs with many key changes may correspond to low values in this field.
  ///
  /// Example value: 0.297
  ///
  /// Range: 0 - 1
  final double keyConfidence;

  /// Indicates the modality (major or minor) of a section, the type of scale
  /// from which its melodic content is derived.
  ///
  /// This field will contain a 0 for "minor", a 1 for "major", or a -1 for no result.
  /// Note that the major key (e.g. C major) could more likely be confused with
  /// the minor key at 3 semitones lower (e.g. A minor) as both keys carry the same pitches.
  final int mode;

  /// The confidence, from 0.0 to 1.0, of the reliability of the mode.
  ///
  /// Example value: 0.471
  ///
  /// Range: 0 - 1
  final double modeConfidence;

  /// An estimated time signature. The time signature (meter) is a notational convention to specify how many beats are in each bar (or measure). The time signature ranges from 3 to 7 indicating time signatures of "3/4", to "7/4".
  ///
  /// Example value: 4
  ///
  /// Range: 3 - 7
  final int timeSignature;

  /// The confidence, from 0.0 to 1.0, of the reliability of the time_signature. Sections with time signature changes may correspond to low values in this field.
  ///
  /// Example value: 1
  ///
  /// Range: 0 - 1
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
