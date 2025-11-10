#!/bin/bash

# Generate man files from markdown files
# Require: pandoc

# Variables
date_name="Nov 10, 2025"
date_number="2025-11-10"

# Generate man files
pandoc -s ../doc/ks-av1.md -t man -o ks-av1.1
sed -i "s/.TH \"\" \"\" \"\" \"\" \"\"/.TH \"ks-av1\" \"1\" \"${date_name}\" \"${date_number}\" \"Convert video file to compact and efficient AV1 Codec\"/g" ks-av1.1
sed -i 's/Back to README.md/Manual/g' ks-av1.1
sed -i 's/Go back/This tool is part of ks-tools/g' ks-av1.1
pandoc -s ../doc/ks-av1s-folder.md -t man -o ks-av1s-folder.1
sed -i "s/.TH \"\" \"\" \"\" \"\" \"\"/.TH \"ks-av1s-folder\" \"1\" \"${date_name}\" \"${date_number}\" \"Convert videos from folder to AV1 Codec (Series)\"/g" ks-av1s-folder.1
sed -i 's/Back to README.md/Manual/g' ks-av1s-folder.1
sed -i 's/Go back/This tool is part of ks-tools/g' ks-av1s-folder.1
pandoc -s ../doc/ks-av1s.md -t man -o ks-av1s.1
sed -i "s/.TH \"\" \"\" \"\" \"\" \"\"/.TH \"ks-av1s\" \"1\" \"${date_name}\" \"${date_number}\" \"Convert video file to compact and efficient AV1 Codec (Series)\"/g" ks-av1.1
sed -i 's/Back to README.md/Manual/g' ks-av1s.1
sed -i 's/Go back/This tool is part of ks-tools/g' ks-av1s.1
pandoc -s ../doc/ks-av1s-wrapper.md -t man -o ks-av1s-wrapper.1
sed -i "s/.TH \"\" \"\" \"\" \"\" \"\"/.TH \"ks-av1s-wrapper\" \"1\" \"${date_name}\" \"${date_number}\" \"Wrapper for ks-av1s to create graphical interfaces\"/g" ks-av1s-wrapper.1
sed -i 's/Back to README.md/Manual/g' ks-av1s-wrapper.1
sed -i 's/Go back/This tool is part of ks-tools/g' ks-av1s-wrapper.1
pandoc -s ../doc/ks-av1-wrapper.md -t man -o ks-av1-wrapper.1
sed -i "s/.TH \"\" \"\" \"\" \"\" \"\"/.TH \"ks-av1-wrapper\" \"1\" \"${date_name}\" \"${date_number}\" \"Wrapper for ks-av1 to create graphical interfaces\"/g" ks-av1-wrapper.1
sed -i 's/Back to README.md/Manual/g' ks-av1-wrapper.1
sed -i 's/Go back/This tool is part of ks-tools/g' ks-av1-wrapper.1
pandoc -s ../doc/ks-avi.md -t man -o ks-avi.1
sed -i "s/.TH \"\" \"\" \"\" \"\" \"\"/.TH \"ks-avi\" \"1\" \"${date_name}\" \"${date_number}\" \"Convert video file to compact and efficient AVI\"/g" ks-avi.1
sed -i 's/Back to README.md/Manual/g' ks-avi.1
sed -i 's/Go back/This tool is part of ks-tools/g' ks-avi.1
pandoc -s ../doc/ks-avi-wrapper.md -t man -o ks-avi-wrapper.1
sed -i "s/.TH \"\" \"\" \"\" \"\" \"\"/.TH \"ks-avi-wrapper\" \"1\" \"${date_name}\" \"${date_number}\" \"Wrapper for ks-avi to create graphical interfaces\"/g" ks-avi-wrapper.1
sed -i 's/Back to README.md/Manual/g' ks-avi-wrapper.1
sed -i 's/Go back/This tool is part of ks-tools/g' ks-avi-wrapper.1
pandoc -s ../doc/ks-conf.md -t man -o ks-conf.1
sed -i "s/.TH \"\" \"\" \"\" \"\" \"\"/.TH \"ks-conf\" \"1\" \"${date_name}\" \"${date_number}\" \"Tool for create and modify configuration files\"/g" ks-conf.1
sed -i 's/Back to README.md/Manual/g' ks-conf.1
sed -i 's/Go back/This tool is part of ks-tools/g' ks-conf.1
pandoc -s ../doc/ks-utfs.md -t man -o ks-utfs.1
sed -i "s/.TH \"\" \"\" \"\" \"\" \"\"/.TH \"ks-utfs\" \"1\" \"${date_name}\" \"${date_number}\" \"Patch UTF-8 subtitles file(s) replacing bad characters\"/g" ks-utfs.1
sed -i 's/Back to README.md/Manual/g' ks-utfs.1
sed -i 's/Go back/This tool is part of ks-tools/g' ks-utfs.1
pandoc -s ../doc/ks-crop.md -t man -o ks-crop.1
sed -i "s/.TH \"\" \"\" \"\" \"\" \"\"/.TH \"ks-crop\" \"1\" \"${date_name}\" \"${date_number}\" \"Crop or change aspect ratio of a video\"/g" ks-crop.1
sed -i 's/Back to README.md/Manual/g' ks-crop.1
sed -i 's/Go back/This tool is part of ks-tools/g' ks-crop.1
pandoc -s ../doc/ks-mix.md -t man -o ks-mix.1
sed -i "s/.TH \"\" \"\" \"\" \"\" \"\"/.TH \"ks-mix\" \"1\" \"${date_name}\" \"${date_number}\" \"Extract video\/audio and mix video\/audio files\"/g" ks-mix.1
sed -i 's/Back to README.md/Manual/g' ks-mix.1
sed -i 's/Go back/This tool is part of ks-tools/g' ks-mix.1
pandoc -s ../doc/ks-mp3-album.md -t man -o ks-mp3-album.1
sed -i "s/.TH \"\" \"\" \"\" \"\" \"\"/.TH \"ks-mp3-album\" \"1\" \"${date_name}\" \"${date_number}\" \"Convert folder album to MP3 Audio Format\"/g" ks-mp3-album.1
sed -i 's/Back to README.md/Manual/g' ks-mp3-album.1
sed -i 's/Go back/This tool is part of ks-tools/g' ks-mp3-album.1
pandoc -s ../doc/ks-mp3.md -t man -o ks-mp3.1
sed -i "s/.TH \"\" \"\" \"\" \"\" \"\"/.TH \"ks-mp3\" \"1\" \"${date_name}\" \"${date_number}\" \"Convert video\/audio file to MP3 (Audio) Format\"/g" ks-mp3.1
sed -i 's/Back to README.md/Manual/g' ks-mp3.1
sed -i 's/Go back/This tool is part of ks-tools/g' ks-mp3.1
pandoc -s ../doc/ks-mp4k.md -t man -o ks-mp4k.1
sed -i "s/.TH \"\" \"\" \"\" \"\" \"\"/.TH \"ks-mp4k\" \"1\" \"${date_name}\" \"${date_number}\" \"Convert video file to compact and efficient MP4 (4K)\"/g" ks-mp4k.1
sed -i 's/Back to README.md/Manual/g' ks-mp4k.1
sed -i 's/Go back/This tool is part of ks-tools/g' ks-mp4k.1
pandoc -s ../doc/ks-mp4k-wrapper.md -t man -o ks-mp4k-wrapper.1
sed -i "s/.TH \"\" \"\" \"\" \"\" \"\"/.TH \"ks-mp4k-wrapper\" \"1\" \"${date_name}\" \"${date_number}\" \"Wrapper for ks-mp4k to create graphical interfaces\"/g" ks-mp4k-wrapper.1
sed -i 's/Back to README.md/Manual/g' ks-mp4k-wrapper.1
sed -i 's/Go back/This tool is part of ks-tools/g' ks-mp4k-wrapper.1
pandoc -s ../doc/ks-mp4.md -t man -o ks-mp4.1
sed -i "s/.TH \"\" \"\" \"\" \"\" \"\"/.TH \"ks-mp4\" \"1\" \"${date_name}\" \"${date_number}\" \"Convert video file to compact and efficient MP4\"/g" ks-mp4.1
sed -i 's/Back to README.md/Manual/g' ks-mp4.1
sed -i 's/Go back/This tool is part of ks-tools/g' ks-mp4.1
pandoc -s ../doc/ks-mp4s-folder.md -t man -o ks-mp4s-folder.1
sed -i "s/.TH \"\" \"\" \"\" \"\" \"\"/.TH \"ks-mp4s-folder\" \"1\" \"${date_name}\" \"${date_number}\" \"Convert videos from folder to MP4 format (Series)\"/g" ks-mp4s-folder.1
sed -i 's/Back to README.md/Manual/g' ks-mp4s-folder.1
sed -i 's/Go back/This tool is part of ks-tools/g' ks-mp4s-folder.1
pandoc -s ../doc/ks-mp4s.md -t man -o ks-mp4s.1
sed -i "s/.TH \"\" \"\" \"\" \"\" \"\"/.TH \"ks-mp4s\" \"1\" \"${date_name}\" \"${date_number}\" \"Convert video file to compact and efficient MP4 (Series)\"/g" ks-mp4s.1
sed -i 's/Back to README.md/Manual/g' ks-mp4s.1
sed -i 's/Go back/This tool is part of ks-tools/g' ks-mp4s.1
pandoc -s ../doc/ks-mp4s-wrapper.md -t man -o ks-mp4s-wrapper.1
sed -i "s/.TH \"\" \"\" \"\" \"\" \"\"/.TH \"ks-mp4s-wrapper\" \"1\" \"${date_name}\" \"${date_number}\" \"Wrapper for ks-mp4s to create graphical interfaces\"/g" ks-mp4s-wrapper.1
sed -i 's/Back to README.md/Manual/g' ks-mp4s-wrapper.1
sed -i 's/Go back/This tool is part of ks-tools/g' ks-mp4s-wrapper.1
pandoc -s ../doc/ks-mp4-wrapper.md -t man -o ks-mp4-wrapper.1
sed -i "s/.TH \"\" \"\" \"\" \"\" \"\"/.TH \"ks-mp4-wrapper\" \"1\" \"${date_name}\" \"${date_number}\" \"Wrapper for ks-mp4 to create graphical interfaces\"/g" ks-mp4-wrapper.1
sed -i 's/Back to README.md/Manual/g' ks-mp4-wrapper.1
sed -i 's/Go back/This tool is part of ks-tools/g' ks-mp4-wrapper.1
pandoc -s ../doc/ks-oga-album.md -t man -o ks-oga-album.1
sed -i "s/.TH \"\" \"\" \"\" \"\" \"\"/.TH \"ks-oga-album\" \"1\" \"${date_name}\" \"${date_number}\" \"Convert folder album to OGA (OGG Audio) Format\"/g" ks-oga-album.1
sed -i 's/Back to README.md/Manual/g' ks-oga-album.1
sed -i 's/Go back/This tool is part of ks-tools/g' ks-oga-album.1
pandoc -s ../doc/ks-oga.md -t man -o ks-oga.1
sed -i "s/.TH \"\" \"\" \"\" \"\" \"\"/.TH \"ks-oga\" \"1\" \"${date_name}\" \"${date_number}\" \"Convert video\/audio file to OGA (OGG Audio) Format\"/g" ks-oga.1
sed -i 's/Back to README.md/Manual/g' ks-oga.1
sed -i 's/Go back/This tool is part of ks-tools/g' ks-oga.1
pandoc -s ../doc/ks-upa.md -t man -o ks-upa.1
sed -i "s/.TH \"\" \"\" \"\" \"\" \"\"/.TH \"ks-upa\" \"1\" \"${date_name}\" \"${date_number}\" \"Upload audio file(s) to server with scp or rsync\"/g" ks-upa.1
sed -i 's/Back to README.md/Manual/g' ks-upa.1
sed -i 's/Go back/This tool is part of ks-tools/g' ks-upa.1
pandoc -s ../doc/ks-upf.md -t man -o ks-upf.1
sed -i "s/.TH \"\" \"\" \"\" \"\" \"\"/.TH \"ks-upf\" \"1\" \"${date_name}\" \"${date_number}\" \"Upload common file(s) to server with scp or rsync\"/g" ks-upf.1
sed -i 's/Back to README.md/Manual/g' ks-upf.1
sed -i 's/Go back/This tool is part of ks-tools/g' ks-upf.1
pandoc -s ../doc/ks-upr.md -t man -o ks-upr.1
sed -i "s/.TH \"\" \"\" \"\" \"\" \"\"/.TH \"ks-upr\" \"1\" \"${date_name}\" \"${date_number}\" \"Upload recursively file(s) to server with scp or rsync\"/g" ks-upr.1
sed -i 's/Back to README.md/Manual/g' ks-upr.1
sed -i 's/Go back/This tool is part of ks-tools/g' ks-upr.1
pandoc -s ../doc/ks-upv.md -t man -o ks-upv.1
sed -i "s/.TH \"\" \"\" \"\" \"\" \"\"/.TH \"ks-upv\" \"1\" \"${date_name}\" \"${date_number}\" \"Upload videos file(s) to server with scp or rsync\"/g" ks-upv.1
sed -i 's/Back to README.md/Manual/g' ks-upv.1
sed -i 's/Go back/This tool is part of ks-tools/g' ks-upv.1
pandoc -s ../doc/ks-vob.md -t man -o ks-vob.1
sed -i "s/.TH \"\" \"\" \"\" \"\" \"\"/.TH \"ks-vob\" \"1\" \"${date_name}\" \"${date_number}\" \"Convert video file to VOB (DVD splitet) format\"/g" ks-vob.1
sed -i 's/Back to README.md/Manual/g' ks-vob.1
sed -i 's/Go back/This tool is part of ks-tools/g' ks-vob.1
pandoc -s ../doc/ks-vob-wrapper.md -t man -o ks-vob-wrapper.1
sed -i "s/.TH \"\" \"\" \"\" \"\" \"\"/.TH \"ks-vob-wrapper\" \"1\" \"${date_name}\" \"${date_number}\" \"Wrapper for ks-vob to create graphical interfaces\"/g" ks-vob-wrapper.1
sed -i 's/Back to README.md/Manual/g' ks-vob-wrapper.1
sed -i 's/Go back/This tool is part of ks-tools/g' ks-vob-wrapper.1
