# spectrofy

A flutter app that visualizes track audio data returned from Spotify's [`audio-analysis` endpoint](https://developer.spotify.com/documentation/web-api/reference/get-audio-analysis).

## Current Features/Stories

The main feature of this app is the 'Visualizer', which paints a picture on a canvas using the data returned for a given track from Spotify's web API.
To start, the goal is to produce a semi-random, generated, abstract image using various datapoints from the audio analysis to determine each stroke.

`Segment`s will be the first subject of the visualizer. The Spotify Web API's audio analysis endpoint provides a rich set of data on each song, breaking it down into segments as short as a few hundred milliseconds.

An example of the segments section of the api's response data:

```
"segments": [
  {
    "start": 0.70154,
    "duration": 0.19891,
    "confidence": 0.435,
    "loudness_start": -23.053,
    "loudness_max": -14.25,
    "loudness_max_time": 0.07305,
    "loudness_end": 0,
    "pitches": [
      0.212,
      0.141,
      0.294
    ],
    "timbre": [
      42.115,
      64.373,
      -0.233
    ]
  }
]
```

Each stroke will represent one segment, varying based on the duration, confidence, loudness, pitches, and timbre. In the future, I would like to add flair with the loudness properties being fully utilized, and maybe even sync the visualization with each song's playback, sine the start and duration are given for each segment.