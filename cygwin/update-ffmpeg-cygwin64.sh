#!/bin/bash

# Script to install and update ffmpeg on Cygwin x86_64
# Author: asdo92@duck.com
# Require: unzip, wget and curl installed.

mkdir -p /etc/root 2> /dev/null
rootperm=$?
if [ $rootperm -eq 0 ] ; then
  rm -rf /etc/root
else
  echo "Root permission is required to run this script"
  exit
fi

install_ffmpeg_gen(){
  echo "Downloading ffmpeg"
  rm -rf /tmp/ffmpeg.zip
  wget -q --show-progress -c "https://github.com/BtbN/FFmpeg-Builds/releases/download/latest/ffmpeg-master-latest-win64-gpl.zip" -O /tmp/ffmpeg.zip
  echo "Installing ffmpeg"
  cd /tmp/
  unzip -q -o ffmpeg.zip
  if [ -f /tmp/ffmpeg-master-latest-win64-gpl/bin/ffmpeg.exe ] ; then
    cp -rf /tmp/ffmpeg-master-latest-win64-gpl/bin/ffmpeg.exe /usr/bin/
    chmod +x /usr/bin/ffmpeg
  fi
  if [ -f /tmp/ffmpeg-master-latest-win64-gpl/bin/ffprobe.exe ] ; then
    cp -rf /tmp/ffmpeg-master-latest-win64-gpl/bin/ffprobe.exe /usr/bin/
    chmod +x /usr/bin/ffprobe
  fi
  if [ -f /tmp/ffmpeg-master-latest-win64-gpl/bin/ffplay.exe ] ; then
    cp -rf /tmp/ffmpeg-master-latest-win64-gpl/bin/ffplay.exe /usr/bin/
    chmod +x /usr/bin/ffplay
  fi
  if [ -d /tmp/ffmpeg-master-latest-win64-gpl/man ] ; then
    cp -rf /tmp/ffmpeg-master-latest-win64-gpl/man/* /usr/share/man/
  fi
  rm -rf /tmp/ffmpeg.zip
  rm -rf /tmp/ffmpeg-master-latest-win64-gpl
  echo "Installation ffmpeg done"
}

echo "Checking ffmpeg version"
touch /etc/ffmpeg_version.conf
version_ffmpeg=$(curl "https://github.com/BtbN/FFmpeg-Builds/releases/tag/latest" 2> /dev/null | grep "<title>" | cut -d ">" -f 2 | cut -d "<" -f 1)
version_ffmpeg_current=$(cat /etc/ffmpeg_version.conf)
if [ "${version_ffmpeg}" != "${version_ffmpeg_current}" ] ; then
  echo "New ffmpeg version detected"
  install_ffmpeg_gen
  error_install=$?
  if [ ${error_install} -eq 0 ] ; then
    echo "${version_ffmpeg}" > /etc/ffmpeg_version.conf
  fi
else
  echo "No updates for ffmpeg"
fi
