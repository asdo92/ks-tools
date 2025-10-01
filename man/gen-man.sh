#!/bin/bash

# Generate man files from markdown files
# Require: pandoc

pandoc -s ../doc/ks-av1.md -t man -o ks-av1.1
pandoc -s ../doc/ks-av1s-folder.md -t man -o ks-av1s-folder.1
pandoc -s ../doc/ks-av1s.md -t man -o ks-av1s.1
pandoc -s ../doc/ks-av1s-wrapper.md -t man -o ks-av1s-wrapper.1
pandoc -s ../doc/ks-av1-wrapper.md -t man -o ks-av1-wrapper.1
pandoc -s ../doc/ks-avi.md -t man -o ks-avi.1
pandoc -s ../doc/ks-avi-wrapper.md -t man -o ks-avi-wrapper.1
pandoc -s ../doc/ks-conf.md -t man -o ks-conf.1
pandoc -s ../doc/ks-crop.md -t man -o ks-crop.1
pandoc -s ../doc/ks-mix.md -t man -o ks-mix.1
pandoc -s ../doc/ks-mp3-album.md -t man -o ks-mp3-album.1
pandoc -s ../doc/ks-mp3.md -t man -o ks-mp3.1
pandoc -s ../doc/ks-mp4k.md -t man -o ks-mp4k.1
pandoc -s ../doc/ks-mp4k-wrapper.md -t man -o ks-mp4k-wrapper.1
pandoc -s ../doc/ks-mp4.md -t man -o ks-mp4.1
pandoc -s ../doc/ks-mp4s-folder.md -t man -o ks-mp4s-folder.1
pandoc -s ../doc/ks-mp4s.md -t man -o ks-mp4s.1
pandoc -s ../doc/ks-mp4s-wrapper.md -t man -o ks-mp4s-wrapper.1
pandoc -s ../doc/ks-mp4-wrapper.md -t man -o ks-mp4-wrapper.1
pandoc -s ../doc/ks-oga-album.md -t man -o ks-oga-album.1
pandoc -s ../doc/ks-oga.md -t man -o ks-oga.1
pandoc -s ../doc/ks-upa.md -t man -o ks-upa.1
pandoc -s ../doc/ks-upf.md -t man -o ks-upf.1
pandoc -s ../doc/ks-upr.md -t man -o ks-upr.1
pandoc -s ../doc/ks-upv.md -t man -o ks-upv.1
pandoc -s ../doc/ks-vob.md -t man -o ks-vob.1
pandoc -s ../doc/ks-vob-wrapper.md -t man -o ks-vob-wrapper.1
