ks-av1s-wrapper - Wrapper for ks-av1s to create graphical interfaces.
=====================================================================

### TRACKS/CONFIG DETECT:

```shell
$ ks-av1s-wrapper --show-info <video_file>
$ ks-av1s-wrapper --show-video-default <video_file>
$ ks-av1s-wrapper --show-audio-default <video_file>
$ ks-av1s-wrapper --show-subtitle-default <video_file>
$ ks-av1s-wrapper --show-resolution-default
```

### METADATA DETECT:
  
```shell
$ ks-av1s-wrapper --show-name-title-default <video_file>
$ ks-av1s-wrapper --show-year-default
$ ks-av1s-wrapper --show-genre-default
```
    
### CONVERT:
  
```shell
$ ks-av1s-wrapper --conv </path/video_file> </path/output_prefix> <video-track> <audio-track> <resolution> "<name-title>" <year> "<genre>" [patch]
$ ks-av1s-wrapper --conv-with-sub </path/video_file> </path/output_prefix> <video-track> <audio-track> <subs-track> <resolution> "<name-title>" <year> "<genre>" [patch]
$ ks-av1s-wrapper --conv-widescreen </path/video_file> </path/output_prefix> <video-track> <audio-track> <subs-track> <resolution> "<name-title>" <year> "<genre>" [patch]
$ ks-av1s-wrapper --conv-with-sub-widescreen </path/video_file> </path/output_prefix> <video-track> <audio-track> <subs-track> <resolution> "<name-title>" <year> "<genre>" [patch]
```
    
### CONVERT WITH DEFAULT DETECTION (NOT RECOMMENDED):

```shell
$ ks-av1s-wrapper --conv </path/video_file> </path/output_prefix>
$ ks-av1s-wrapper --conv-with-sub </path/video_file> </path/output_prefix>
$ ks-av1s-wrapper --conv-widescreen </path/video_file> </path/output_prefix>
$ ks-av1s-wrapper --conv-with-sub-widescreen </path/video_file> </path/output_prefix>
```
    
### EXAMPLES:

```shell
$ ks-av1s-wrapper --conv /tmp/video.mkv /tmp/output 0:0 0:1 720x404 "My video" 2018 "Comedy"
$ ks-av1s-wrapper --conv-with-sub /tmp/video.mkv /tmp/output 0:0 0:1 0:3 1280x720 "My video" 2018 "Comedy"
$ ks-av1s-wrapper --conv-widescreen /tmp/video.mkv /tmp/output 0:0 0:1 720x480 "My video" 2018 "Comedy" patch
$ ks-av1s-wrapper --conv-with-sub-widescreen /tmp/video.mkv /tmp/output 0:0 0:1 0:3 720x480 "My video" 2018 "Comedy"
```
    
### Notes:

  * The option `patch` apply the `-max_muxing_queue_size 9999` patch to ffmpeg.
  * If you specify a path or file with spaces, you must use quotes.
    
### Back to README.md
    
* [Go back](/README.md)
  
