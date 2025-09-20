#!/bin/bash

############################################
# Script for build FFmpeg on Cygwin x86_64 #
# Author: asdo92                           #
# Contact: asdo92@duck.com                 #
############################################

# IMPORTANT
# YOU NEED INSTALL:
#  - wget
#  - git

# Build variables
dir_build="/opt/ffmpeg-builds/build/cygwin64-shared"
dir_build_libs="/opt/ffmpeg-builds/lib/cygwin64-shared"
dir_build_packages="/opt/ffmpeg-builds/packages"

# FFmpeg version
ffmpeg_package="https://ffmpeg.org/releases/ffmpeg-6.0.tar.bz2"
ffmpeg_package_name="ffmpeg-6.0.tar.bz2@ffmpeg-6.0"

# COMPILER VARIABLES
C_COMPILER="gcc"
CXX_COMPILER="g++"

# URL Libraries Variables
lib_x264="https://code.videolan.org/videolan/x264"
lib_x264_name="x264"

lib_x265="https://bitbucket.org/multicoreware/x265_git/downloads/x265_3.5.tar.gz"
lib_x265_name="x265_3.5.tar.gz@x265_3.5"

lib_xvid="https://downloads.xvid.com/downloads/xvidcore-1.3.7.tar.gz"
lib_xvid_name="xvidcore-1.3.7.tar.gz@xvidcore"

lib_aom_msys="https://repo.msys2.org/mingw/mingw64/mingw-w64-x86_64-aom-3.6.0-1-any.pkg.tar.zst"
lib_aom_msys_name="mingw-w64-x86_64-aom-3.6.0-1-any.pkg.tar.zst@mingw64"
#https://packages.msys2.org/package/mingw-w64-i686-aom

lib_svtav1_msys="https://repo.msys2.org/mingw/mingw64/mingw-w64-x86_64-svt-av1-1.4.1-1-any.pkg.tar.zst"
lib_svtav1_msys_name="mingw-w64-x86_64-svt-av1-1.4.1-1-any.pkg.tar.zst@mingw64"

# Dependencies for aom
dep_one="https://repo.msys2.org/mingw/mingw64/mingw-w64-x86_64-gcc-libs-12.2.0-6-any.pkg.tar.zst"
dep_one_name="mingw-w64-x86_64-gcc-libs-12.2.0-6-any.pkg.tar.zst"
dep_two="https://repo.msys2.org/mingw/mingw64/mingw-w64-x86_64-libwinpthread-git-10.0.0.r0.gaa08f56da-1-any.pkg.tar.zst"
dep_two_name="mingw-w64-x86_64-libwinpthread-git-10.0.0.r0.gaa08f56da-1-any.pkg.tar.zst"
dep_three="https://repo.msys2.org/mingw/mingw64/mingw-w64-x86_64-gmp-6.2.1-5-any.pkg.tar.zst"
dep_three_name="mingw-w64-x86_64-gmp-6.2.1-5-any.pkg.tar.zst"
dep_four="https://repo.msys2.org/mingw/mingw64/mingw-w64-x86_64-mpc-1.3.1-1-any.pkg.tar.zst"
dep_four_name="mingw-w64-x86_64-mpc-1.3.1-1-any.pkg.tar.zst"
dep_five="https://repo.msys2.org/mingw/mingw64/mingw-w64-x86_64-mpfr-4.2.0-1-any.pkg.tar.zst"
dep_five_name="mingw-w64-x86_64-mpfr-4.2.0-1-any.pkg.tar.zst"

# Check root permission 
mkdir -p /etc/root &> /dev/null
administrador=$?
if [ ${administrador} -eq 0 ] ; then
  rm -rf /etc/root
else
  echo ""
  echo "* ${0}"
  echo ""
  echo "* Administrator permissions are required."
  echo ""
  exit
fi

# Create directories
mkdir -p ${dir_build}
mkdir -p ${dir_build_libs}
mkdir -p ${dir_build_packages}

# Install apt-cyg
if [ -f "/usr/bin/apt-cyg" ] ; then
  echo "* apt-cyg manager is ready"
  sleep 1
else
  cd /tmp
  git clone "https://github.com/asdo92/ffmpeg-builds"
  cd ffmpeg-builds
  cp -rfv apt-cyg /usr/bin
  echo "* apt-cyg installed"
fi

# Fix strafe.sh
if [ -f /usr/include/w32api/strsafe.h_fix ] ; then
  echo "* strsafe.h was fixed previously"
else
  cd /tmp
  git clone "https://github.com/asdo92/ffmpeg-builds"
  cd ffmpeg-builds
  cp -rfv /usr/include/w32api/strsafe.h /usr/include/w32api/strsafe.h.bck
  cp -rfv cygwin_fix_strsafe.h /usr/include/w32api/strsafe.h
  cp -rfv cygwin_fix_strsafe.h /usr/include/w32api/strsafe.h_fix
  echo "* strsafe.sh fixed"
fi

# Install dependencies
apt-cyg update
apt-cyg install wget
apt-cyg install curl
apt-cyg install nasm
apt-cyg install yasm
apt-cyg install zip
apt-cyg install perl
apt-cyg install sed
apt-cyg install fontconfig
apt-cyg install libass-devel
apt-cyg install libfreetype-devel
apt-cyg install libfontconfig-devel
apt-cyg install libbs2b-devel
apt-cyg install meson
apt-cyg install make
apt-cyg install gcc
apt-cyg install gcc-core
apt-cyg install gcc-g++
apt-cyg install zstd
apt-cyg install libfribidi-devel
apt-cyg install libgme-devel
apt-cyg install libcaca++-devel
apt-cyg install libcaca-devel
apt-cyg install libtwolame-devel
apt-cyg install libmp3lame-devel
apt-cyg install libwebp-devel
apt-cyg install libsoxr-devel
apt-cyg install libvpx-devel
apt-cyg install libtheora-devel
apt-cyg install libxml2-devel
apt-cyg install libopenjpeg-devel
apt-cyg install libgnutls-devel
apt-cyg install libvorbis-devel
apt-cyg install libogg-devel
apt-cyg install libopus-devel
apt-cyg install openssl-devel
apt-cyg install libopusfile-devel
apt-cyg install libopenjp2-devel
apt-cyg install libtheora-devel
apt-cyg install speex-devel
apt-cyg install speexdsp-devel
apt-cyg install cmake
apt-cyg install libgc-devel
apt-cyg install autoconf
apt-cyg install libtool
apt-cyg install ninja
apt-cyg install libiconv-devel
apt-cyg install clang
apt-cyg install compiler-rt
apt-cyg install libjson-c-common
apt-cyg install libc++abi-devel
apt-cyg install libc++-devel

# Build x264
if [ -f /usr/lib/pkgconfig/x264.pc ] ; then
  echo "* x264 was compiled previously"
  sleep 1
else
  cd ${dir_build_libs}
  rm -rfv ${name_package}
  rm -rfv ${name_folder}
  name_folder=$(echo ${lib_x264_name})
  name_package=$(echo ${lib_x264_name})
  git clone ${lib_x264}
  cd "${name_folder}"
  ./configure --prefix=/usr --enable-static --disable-opencl --disable-cli 
  make
  make install
fi

# Build x265
if [ -f /usr/lib/pkgconfig/x265.pc ] ; then
  echo "* x265 was compiled previously"
  sleep 1
else
  cd ${dir_build_libs}
  rm -rfv ${name_package}
  rm -rfv ${name_folder}
  name_package=$(echo ${lib_x265_name} | cut -d "@" -f 1)
  name_folder=$(echo ${lib_x265_name} | cut -d "@" -f 2)
  wget -c "${lib_x265}"
  tar zxvf ${name_package}
  cd "${name_folder}"
  cd build/linux
  cmake -G "Unix Makefiles" -DCMAKE_INSTALL_PREFIX=/usr -DSTATIC_LINK_CRT:BOOL=ON -DENABLE_CLI:BOOL=OFF ../../source
  sed -i 's/-lgcc_s/-lgcc_eh/g' x265.pc 
  make
  make install
fi

# Build xvid
if [ -f /usr/lib/xvidcore.a ] ; then
  echo "* Xvid was compiled previously"
  sleep 1
else
  cd ${dir_build_libs}
  rm -rfv ${name_package}
  rm -rfv ${name_folder}
  name_package=$(echo ${lib_xvid_name} | cut -d "@" -f 1)
  name_folder=$(echo ${lib_xvid_name} | cut -d "@" -f 2)
  wget -c "${lib_xvid}"
  tar zxvf ${name_package}
  cd "${name_folder}"/build/generic
  ./configure --prefix=/usr
  make
  make install
fi

# Build aom
if [ -f /usr/lib/pkgconfig/aom.pc ] ; then
  echo "* Aom was compiled previously"
  sleep 1
else
  cd ${dir_build_libs}
  rm -rfv ${name_package}
  name_package=$(echo ${lib_aom_msys_name} | cut -d "@" -f 1)
  name_folder=$(echo ${lib_aom_msys_name} | cut -d "@" -f 2)
  cd /tmp
  wget ${lib_aom_msys}
  tar --use-compress-program=unzstd -xvf ${name_package}
  cd ${name_folder}
  cp -rfv * /usr/
  cd ..
  rm -rfv ${name_package}
  rm -rfv ${name_folder}
  # Install binary dependencies
  cd /tmp
  wget -c ${dep_one}
  wget -c ${dep_two}
  wget -c ${dep_three}
  wget -c ${dep_four}
  wget -c ${dep_five}
  tar --use-compress-program=unzstd -xvf ${dep_one_name}
  tar --use-compress-program=unzstd -xvf ${dep_two_name}
  tar --use-compress-program=unzstd -xvf ${dep_three_name}
  tar --use-compress-program=unzstd -xvf ${dep_four_name}
  tar --use-compress-program=unzstd -xvf ${dep_five_name}
  cd ${name_folder}
  cp -rfv bin/* /usr/bin/
  cd ..
  rm -rfv ${name_package}
  rm -rfv ${name_folder}
fi

# Build SVT-AV1
if [ -f /usr/lib/pkgconfig/SvtAv1Dec.pc ] ; then
  echo "* SVT-AV1 was compiled previously"
  rm -rfv ${name_package}
  rm -rfv ${name_folder}
  sleep 1
else
  cd ${dir_build_libs}
  rm -rfv ${name_package}
  name_package=$(echo ${lib_svtav1_msys_name} | cut -d "@" -f 1)
  name_folder=$(echo ${lib_svtav1_msys_name} | cut -d "@" -f 2)
  cd /tmp
  wget ${lib_svtav1_msys}
  tar --use-compress-program=unzstd -xvf ${name_package}
  cd ${name_folder}
  cp -rfv * /usr/
  cd ..
  rm -rfv ${name_package}
  rm -rfv ${name_folder}
fi

# Download FFmpeg
cd / && ln -s usr mingw64
unlink /mingw64/usr 2> /dev/null
echo "* Building FFmpeg using system libraries"
cd ${dir_build_libs}
name_package=$(echo ${ffmpeg_package_name} | cut -d "@" -f 1)
name_folder=$(echo ${ffmpeg_package_name} | cut -d "@" -f 2)
curl "${ffmpeg_package}" > ${name_package}
wget -c ${ffmpeg_package}
tar jxvf ${name_package}
cd ${name_folder}
chmod +x configure
./configure --prefix=/usr --enable-gpl --enable-nonfree --disable-ffplay --disable-w32threads --enable-openssl --enable-libass --enable-libbs2b --enable-libcaca --enable-libfontconfig --enable-libfreetype --enable-libfribidi --enable-libmp3lame --enable-libopenjpeg --enable-libopus --enable-libsoxr --enable-libtheora --enable-libtwolame --enable-libvorbis --enable-libvpx --enable-libwebp --enable-libxml2 --enable-libxvid --enable-libspeex --enable-libx264 --enable-libx265 --enable-static --enable-version3 --enable-doc --disable-indev=dshow --disable-indev=gdigrab --enable-libsvtav1 --enable-libaom
build_error=$?
if [ ${build_error} -eq 0 ] ; then
  echo ""
  echo "* Build configuration ready"
  sleep 5
else
  echo ""
  echo "* Build configuration failed"
  echo "* Trying with build config without errors."
  echo "* Disabling the following libraries:"
  echo "   - aom"
  echo ""
  sleep 5
  ./configure --prefix=/usr --enable-gpl --enable-nonfree --disable-ffplay --disable-w32threads --enable-openssl --enable-libass --enable-libbs2b --enable-libcaca --enable-libfontconfig --enable-libfreetype --enable-libfribidi --enable-libmp3lame --enable-libopenjpeg --enable-libopus --enable-libsoxr --enable-libtheora --enable-libtwolame --enable-libvorbis --enable-libvpx --enable-libwebp --enable-libxml2 --enable-libxvid --enable-libspeex --enable-libx264 --enable-libx265 --enable-static --enable-version3 --enable-doc --disable-indev=dshow --disable-indev=gdigrab --enable-libsvtav1 --disable-libaom
fi
make
rm -rf ${dir_build}/*
make install

# Remove packages
echo "* Remove temporal files"
cd ..
rm -rfv ${name_package}
rm -rf ${name_folder}
