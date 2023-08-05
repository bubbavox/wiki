---
title: video_work
description: 
published: true
date: 2023-07-22T17:44:25.294Z
tags: 
editor: markdown
dateCreated: 2021-01-27T23:20:46.760Z
---

# video work

## video editors

Adobe Premiere Pro

[DaVinci Resolve](https://www.blackmagicdesign.com/nz/products/davinciresolve/)

[Shotcut](https://shotcut.org/) - simple; free

[Lightworks](https://www.lwks.com/) - simple; free version limited to 720p H.264

[Avid Media Composer First](https://my.avid.com/get/media-composer-first) - Free version of the powerful Avid; reviewer found it cumbersome & heavy

[Hitfilm Express](https://fxhome.com/hitfilm-express) - very similar to Premiere

[Kdenlive](https://kdenlive.org/en/) - free & opensource

[filmora pro](https://filmora.wondershare.net/filmorapro-video-editor/) - *free version leaves watermark*; $150 pro version; very similar to Premiere

## other software

[HandBrake](https://handbrake.fr/) - open source video transcoder

[FFmpeg](https://ffmpeg.org/) - _"FFmpeg is the leading multimedia framework to decode, encode, transcode, mux, demux, stream, filter and play. All builds require at least Windows 7 or Mac OS X 10.10."_
- Example usage: since Adobe software can't handle MKV files (probably because Adobe is evil) I used FFmpeg to demux the mkv container to mp4, which Adobe can handle.  Unlike transcoding, demuxing should unpack the container losslessly, AFAIK.  There's no official GUI (although lots of software uses FFmpeg) so the demuxing was done via commandline:

  `ffmpeg -i input.mkv -codec copy output.mp4`

  ...substituting `input.mkv` and `output.mp4` with the actual filenames (see [post](https://askubuntu.com/a/195346)). And as usual, first we must add `ffmpeg` to PATH.  

[OBS Studio](https://obsproject.com/) - Screen recording & streaming
- [OBS plugin: input-overlay](https://github.com/univrsal/input-overlay)

