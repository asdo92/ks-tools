ks-tools - Tools for upload, convert and crop/mix video/audio files.
====================================================================

### Documentation:
  * `Tools for upload:`

    * [ks-upv](https://git.q3aql.dev/q3aql/ks-tools/src/branch/main/doc/ks-upv.md) - Upload video file(s) to server with scp or rsync.
    * [ks-upa](https://git.q3aql.dev/q3aql/ks-tools/src/branch/main/doc/ks-upa.md) - Upload audio file(s) to server with scp or rsync.
    * [ks-upf](https://git.q3aql.dev/q3aql/ks-tools/src/branch/main/doc/ks-upf.md) - Upload common file(s) to server with scp or rsync.
    * [ks-upr](https://git.q3aql.dev/q3aql/ks-tools/src/branch/main/doc/ks-upr.md) - Upload recursively file(s) to server with scp or rsync.
  
  * `Tools for convert video:`

    * [ks-mp4](https://git.q3aql.dev/q3aql/ks-tools/src/branch/main/doc/ks-mp4.md) - Convert video file to compact and efficient MP4 (libx264 + aac).
    * [ks-mp4k](https://git.q3aql.dev/q3aql/ks-tools/src/branch/main/doc/ks-mp4k.md) - Convert video file to compact and efficient MP4 (4K).
    * [ks-mp4s](https://git.q3aql.dev/q3aql/ks-tools/src/branch/main/doc/ks-mp4s.md) - Convert video file to compact and efficient MP4 (Series).
    * [ks-mp4s-folder](https://git.q3aql.dev/q3aql/ks-tools/src/branch/main/doc/ks-mp4s-folder.md) - Convert videos from folder to MP4 format (Series).
    * [ks-avi](https://git.q3aql.dev/q3aql/ks-tools/src/branch/main/doc/ks-avi.md) - Convert video file to compact and efficient AVI (libxvid + mp3).
    * [ks-vob](https://git.q3aql.dev/q3aql/ks-tools/src/branch/main/doc/ks-vob.md) - Convert video file to VOB (DVD splitet) format.
    * [ks-av1](https://git.q3aql.dev/q3aql/ks-tools/src/branch/main/doc/ks-av1.md) - Convert video file to compact and efficient AV1 codec (libsvtav1 + libvorbis).
    * [ks-av1s](https://git.q3aql.dev/q3aql/ks-tools/src/branch/main/doc/ks-av1s.md) - Convert video file to compact and efficient AV1 codec (Series).
    * [ks-av1s-folder](https://git.q3aql.dev/q3aql/ks-tools/src/branch/main/doc/ks-av1s-folder.md) - Convert videos from folder to AV1 codec (Series).
  
  * `Tools for convert audio:`

    * [ks-oga](https://git.q3aql.dev/q3aql/ks-tools/src/branch/main/doc/ks-oga.md) - Convert video/audio file to OGA (OGG Audio) Format.
    * [ks-oga-album](https://git.q3aql.dev/q3aql/ks-tools/src/branch/main/doc/ks-oga-album.md) - Convert folder album to OGA (OGG Audio) Format.
    * [ks-mp3](https://git.q3aql.dev/q3aql/ks-tools/src/branch/main/doc/ks-mp3.md) - Convert video/audio file to MP3 Audio Format.
    * [ks-mp3-album](https://git.q3aql.dev/q3aql/ks-tools/src/branch/main/doc/ks-mp3-album.md) - Convert folder album to MP3 Audio Format.
  
  * `Tools for crop/mix video/audio:`

    * [ks-mix](https://git.q3aql.dev/q3aql/ks-tools/src/branch/main/doc/ks-mix.md) - Extract video/audio and mix video/audio files.
    * [ks-crop](https://git.q3aql.dev/q3aql/ks-tools/src/branch/main/doc/ks-crop.md) - Crop or change aspect ratio of a video.
  
  * `Wrappers/Configuration:`

    * [ks-mp4-wrapper](https://git.q3aql.dev/q3aql/ks-tools/src/branch/main/doc/ks-mp4-wrapper.md) - Wrapper for ks-mp4 to create graphical interfaces.
    * [ks-mp4k-wrapper](https://git.q3aql.dev/q3aql/ks-tools/src/branch/main/doc/ks-mp4k-wrapper.md) - Wrapper for ks-mp4k to create graphical interfaces.
    * [ks-mp4s-wrapper](https://git.q3aql.dev/q3aql/ks-tools/src/branch/main/doc/ks-mp4s-wrapper.md) - Wrapper for ks-mp4s to create graphical interfaces.
    * [ks-avi-wrapper](https://git.q3aql.dev/q3aql/ks-tools/src/branch/main/doc/ks-avi-wrapper.md) - Wrapper for ks-avi to create graphical interfaces.
    * [ks-vob-wrapper](https://git.q3aql.dev/q3aql/ks-tools/src/branch/main/doc/ks-vob-wrapper.md) - Wrapper for ks-vob to create graphical interfaces.
    * [ks-av1-wrapper](https://git.q3aql.dev/q3aql/ks-tools/src/branch/main/doc/ks-av1-wrapper.md) - Wrapper for ks-av1 to create graphical interfaces.
    * [ks-av1s-wrapper](https://git.q3aql.dev/q3aql/ks-tools/src/branch/main/doc/ks-av1s-wrapper.md) - Wrapper for ks-av1s to create graphical interfaces.
    * [ks-conf](https://git.q3aql.dev/q3aql/ks-tools/src/branch/main/doc/ks-conf.md) - Tool for create and modify all configuration files. 

### Installation:

  * **GNU/Linux:**
  
    * Install dependencies **(for Arch Linux)**:
    
          sudo pacman -Syu git make expect rsync openssh sshpass grep coreutils binutils bc

    * Install dependencies **(for Ubuntu/Debian)**:
    
          sudo apt install git make expect rsync openssh-client openssh-server sshpass grep binutils bc
      
    * Install dependencies **(for Fedora)**:
    
          sudo dnf install git make expect rsync openssh sshpass grep coreutils binutils bc

    * Install dependencies **(for Linux Homebrew)**:

          brew install git make expect rsync openssh grep binutils ffmpeg bc
          curl -L https://raw.githubusercontent.com/kadwanev/bigboybrew/master/Library/Formula/sshpass.rb > sshpass.rb
          brew install sshpass.rb
  
    * Install `ffmpeg` from repository or use the package [ffmpeg-7.0-linux-gnu-64bit-build.tar.bz2](https://q3aql.dev/ffmpeg-builds/ffmpeg-7.0-linux-gnu-64bit-build.tar.bz2):
    
          sudo tar jxvf ffmpeg-7.0-linux-gnu-64bit-build.tar.bz2 -C /
      
    * Install ks-tools cloning the repository:
    
          git clone https://git.q3aql.dev/q3aql/ks-tools
          cd ks-tools
          sudo make install

    * For Linux Homebrew, install with:

          make -f Makefile.linuxbrew

  * **Windows ([Cygwin](https://www.cygwin.com/)):**
  
    * Install dependencies:
    
          lynx -source rawgit.com/transcode-open/apt-cyg/master/apt-cyg > apt-cyg
          install apt-cyg /bin
          apt-cyg install git make expect rsync openssh sshpass grep coreutils binutils bc
      
    * Download package [ffmpeg-7.0-cygwin-64bit-build.tar.gz](https://q3aql.dev/ffmpeg-builds/ffmpeg-7.0-cygwin-64bit-build.tar.gz) and install it:
    
          tar zxvf ffmpeg-7.0-cygwin-64bit-build.tar.gz -C /

    * If you prefer your own ffmpeg build, use this script for build it:

          git clone https://git.q3aql.dev/q3aql/ks-tools
          cd ks-tools/cygwin
          chmod +x ffmpeg-build-cygwin64.sh
          ./ffmpeg-build-cygwin64.sh
  
    * Install ks-tools cloning the repository:

          git clone https://git.q3aql.dev/q3aql/ks-tools
          cd ks-tools
          make -f Makefile.Cygwin
      
  * **Windows ([WSL](https://learn.microsoft.com/en-us/windows/wsl/install)):**
  
    * Install dependencies:
    
          sudo apt install git make expect rsync openssh-client openssh-server sshpass grep binutils bc
      
    * Install `ffmpeg` from the package [ffmpeg-6.1-linux-gnu-64bit-build.tar.bz2](https://drive.proton.me/urls/FZH7FV29FR#5FuAfSzxhH6h) or from repository:
    
          sudo apt install ffmpeg

    * Install ks-tools cloning the repository:
    
          git clone https://git.q3aql.dev/q3aql/ks-tools
          cd ks-tools
          sudo make install
      
  * **MacOS ([HomeBrew](https://brew.sh/)):**
  
    * Install dependencies:
    
          brew install git make expect rsync openssh grep binutils ffmpeg bc
          curl -L https://raw.githubusercontent.com/kadwanev/bigboybrew/master/Library/Formula/sshpass.rb > sshpass.rb
          brew install sshpass.rb 
      
    * Install ks-tools cloning the repository **(for MacOS Intel)**:
    
          git clone https://git.q3aql.dev/q3aql/ks-tools
          cd ks-tools
          sudo make -f Makefile.macbrew

    * Install ks-tools cloning the repository **(for MacOS ARM)**:
    
          git clone https://git.q3aql.dev/q3aql/ks-tools
          cd ks-tools
          sudo make -f Makefile.macbrew.arm

### External links:

  * [ffmpeg homepage](http://ffmpeg.org/)
  * [rsync homepage](https://rsync.samba.org/)
  * [OpenSSH homepage](https://www.openssh.com/)
  * [Cygwin homepage](https://www.cygwin.com/)
  * [xterm homepage](https://invisible-island.net/xterm/)
  * [Coreutils homepage](https://www.gnu.org/software/coreutils/coreutils.html)
  * [Bash homepage](https://www.gnu.org/software/bash/)
  * [Grep homepage](https://www.gnu.org/software/grep/)
  


