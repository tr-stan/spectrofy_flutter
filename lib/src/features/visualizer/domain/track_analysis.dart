class TrackAnalysis {
  /// The exact number of audio samples analyzed from this track. See also analysis_sample_rate.
  ///
  /// Example value: 4585515
  final int numSamples;

  /// Length of the track in seconds.
  ///
  /// Example value: 207.95985
  final double duration;

  /// This field will always contain the empty string.
  final String sampleMd5;

  /// An offset to the start of the region of the track that was analyzed. (As the entire track is analyzed, this should always be 0.)
  ///
  /// Example value: 0
  final int offsetSeconds;

  /// The length of the region of the track was analyzed, if a subset of the track was analyzed. (As the entire track is analyzed, this should always be 0.)
  ///
  /// Example value: 0
  final int windowSeconds;

  /// The sample rate used to decode and analyze this track. May differ from the actual sample rate of this track available on Spotify.
  ///
  /// Example value: 22050
  final int analysisSampleRate;

  /// The number of channels used for analysis. If 1, all channels are summed together to mono before analysis.
  ///
  /// Example value: 1
  final int analysisChannels;

  /// The time, in seconds, at which the track's fade-in period ends. If the track has no fade-in, this will be 0.0.
  ///
  /// Example value: 0
  final int endOfFadeIn;

  /// The time, in seconds, at which the track's fade-out period starts. If the track has no fade-out, this should match the track's length.
  ///
  /// Example value: 201.13705
  final double startOfFadeOut;

  /// The overall loudness of a track in decibels (dB). Loudness values are averaged across the entire track and are useful for comparing relative loudness of tracks. Loudness is the quality of a sound that is the primary psychological correlate of physical strength (amplitude). Values typically range between -60 and 0 db.
  ///
  /// Example value: -5.883
  final double loudness;

  /// The overall estimated tempo of a track in beats per minute (BPM). In musical terminology, tempo is the speed or pace of a given piece and derives directly from the average beat duration.
  ///
  /// Example value: 118.211
  final double tempo;

  /// The confidence, from 0.0 to 1.0, of the reliability of the tempo.
  ///
  /// Example value: 0.73
  ///
  /// Range: 0 - 1
  final double tempoConfidence;

  /// An estimated time signature. The time signature (meter) is a notational convention to specify how many beats are in each bar (or measure). The time signature ranges from 3 to 7 indicating time signatures of "3/4", to "7/4".
  ///
  /// Example value: 4
  ///
  /// Range: 3 - 7
  final int timeSignature;

  /// The confidence, from 0.0 to 1.0, of the reliability of the time_signature.
  ///
  /// Example value: 0.994
  ///
  /// Range: 0 - 1
  final double timeSignatureConfidence;

  /// The key the track is in. Integers map to pitches using standard Pitch Class notation. E.g. 0 = C, 1 = C♯/D♭, 2 = D, and so on. If no key was detected, the value is -1.
  ///
  /// Example value: 9
  ///
  /// Range: -1 - 11
  final int key;

  /// The confidence, from 0.0 to 1.0, of the reliability of the key.
  ///
  /// Example value: 0.408
  ///
  /// Range: 0 - 1
  final double keyConfidence;

  /// Mode indicates the modality (major or minor) of a track, the type of scale from which its melodic content is derived. Major is represented by 1 and minor is 0.
  ///
  /// Example value: 0
  final int mode;

  /// The confidence, from 0.0 to 1.0, of the reliability of the mode.
  ///
  /// Example value: 0.485
  ///
  /// Range: 0 - 1
  final double modeConfidence;

  /// An Echo Nest Musical Fingerprint (ENMFP) codestring for this track.
  final String codestring;

  /// A version number for the Echo Nest Musical Fingerprint format used in the codestring field.
  ///
  /// Example value: 3.15
  final double codeVersion;

  /// An EchoPrint codestring for this track.
  final String echoprintstring;

  /// A version number for the EchoPrint format used in the echoprintstring field.
  ///
  /// Example value: 4.15
  final double echoprintVersion;

  /// A Synchstring for this track.
  final String synchstring;

  /// A version number for the Synchstring used in the synchstring field.
  ///
  /// Example value: 1
  final int synchVersion;

  /// A Rhythmstring for this track. The format of this string is similar to the Synchstring.
  final String rhythmstring;

  /// A version number for the Rhythmstring used in the rhythmstring field.
  ///
  /// Example value: 1
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
