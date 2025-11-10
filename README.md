ks-tools - Tools for upload, convert and crop/mix video/audio files.
====================================================================

### Documentation:
  * `Tools for upload:`

    * [ks-upv](/doc/ks-upv.md) - Upload video file(s) to server with scp or rsync.
    * [ks-upa](/doc/ks-upa.md) - Upload audio file(s) to server with scp or rsync.
    * [ks-upf](/doc/ks-upf.md) - Upload common file(s) to server with scp or rsync.
    * [ks-upr](/doc/ks-upr.md) - Upload recursively file(s) to server with scp or rsync.
  
  * `Tools for convert video:`

    * [ks-mp4](/doc/ks-mp4.md) - Convert video file to compact and efficient MP4 (libx264 + aac).
    * [ks-mp4k](/doc/ks-mp4k.md) - Convert video file to compact and efficient MP4 (4K).
    * [ks-mp4s](/doc/ks-mp4s.md) - Convert video file to compact and efficient MP4 (Series).
    * [ks-mp4s-folder](/doc/ks-mp4s-folder.md) - Convert videos from folder to MP4 format (Series).
    * [ks-avi](/doc/ks-avi.md) - Convert video file to compact and efficient AVI (libxvid + mp3).
    * [ks-vob](/doc/ks-vob.md) - Convert video file to VOB (DVD splitet) format.
    * [ks-av1](/doc/ks-av1.md) - Convert video file to compact and efficient AV1 codec (libsvtav1 + libvorbis).
    * [ks-av1s](/doc/ks-av1s.md) - Convert video file to compact and efficient AV1 codec (Series).
    * [ks-av1s-folder](/doc/ks-av1s-folder.md) - Convert videos from folder to AV1 codec (Series).
  
  * `Tools for convert audio:`

    * [ks-oga](/doc/ks-oga.md) - Convert video/audio file to OGA (OGG Audio) Format.
    * [ks-oga-album](/doc/ks-oga-album.md) - Convert folder album to OGA (OGG Audio) Format.
    * [ks-mp3](/doc/ks-mp3.md) - Convert video/audio file to MP3 Audio Format.
    * [ks-mp3-album](/doc/ks-mp3-album.md) - Convert folder album to MP3 Audio Format.
  
  * `Tools for crop/mix video/audio:`

    * [ks-mix](/doc/ks-mix.md) - Extract video/audio and mix video/audio files.
    * [ks-crop](/doc/ks-crop.md) - Crop or change aspect ratio of a video.
  
  * `Wrappers/Configuration:`

    * [ks-mp4-wrapper](/doc/ks-mp4-wrapper.md) - Wrapper for ks-mp4 to create graphical interfaces.
    * [ks-mp4k-wrapper](/doc/ks-mp4k-wrapper.md) - Wrapper for ks-mp4k to create graphical interfaces.
    * [ks-mp4s-wrapper](/doc/ks-mp4s-wrapper.md) - Wrapper for ks-mp4s to create graphical interfaces.
    * [ks-avi-wrapper](/doc/ks-avi-wrapper.md) - Wrapper for ks-avi to create graphical interfaces.
    * [ks-vob-wrapper](/doc/ks-vob-wrapper.md) - Wrapper for ks-vob to create graphical interfaces.
    * [ks-av1-wrapper](/doc/ks-av1-wrapper.md) - Wrapper for ks-av1 to create graphical interfaces.
    * [ks-av1s-wrapper](/doc/ks-av1s-wrapper.md) - Wrapper for ks-av1s to create graphical interfaces.
    * [ks-utfs](README.md) - Patch UTF-8 subtitles file(s) replacing bad caracters.
    * [ks-conf](/doc/ks-conf.md) - Tool for create and modify all configuration files. 

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
  
    * Install ffmpeg using this script (use [BtbN Builds](https://github.com/BtbN/FFmpeg-Builds)):
    
          curl -L "https://asdo92.yougeek.dev/ffmpeg/scripts/update-ffmpeg-linux64.sh" | sudo bash
      
    * Install ks-tools cloning the repository:
    
          git clone https://github.com/asdo92/ks-tools
          cd ks-tools
          sudo make install

    * For Linux Homebrew, install with:

          make -f Makefile.linuxbrew

  * **Windows ([Cygwin](https://www.cygwin.com/)):**
  
    * Install dependencies:
    
          lynx -source rawgit.com/transcode-open/apt-cyg/master/apt-cyg > apt-cyg
          install apt-cyg /bin
          apt-cyg install git make expect rsync openssh sshpass grep coreutils binutils bc wget curl unzip
          curl -L "https://asdo92.yougeek.dev/ffmpeg/scripts/update-ffmpeg-cygwin64.sh" | bash
      
    * Install ks-tools cloning the repository:

          git clone https://github.com/asdo92/ks-tools
          cd ks-tools
          make -f Makefile.Cygwin
      
  * **Windows ([WSL](https://learn.microsoft.com/en-us/windows/wsl/install)):**
  
    * Install dependencies:
    
          sudo apt install git make expect rsync openssh-client openssh-server sshpass grep binutils bc wgt curl tar
          curl -L "https://asdo92.yougeek.dev/ffmpeg/scripts/update-ffmpeg-wsl.sh" | sudo bash
      
    * Install ks-tools cloning the repository:
    
          git clone https://github.com/asdo92/ks-tools
          cd ks-tools
          sudo make install
      
  * **MacOS ([HomeBrew](https://brew.sh/)):**
  
    * Install dependencies:
    
          brew install git make expect rsync openssh grep binutils ffmpeg bc
          curl -L https://raw.githubusercontent.com/kadwanev/bigboybrew/master/Library/Formula/sshpass.rb > sshpass.rb
          brew install sshpass.rb 
      
    * Install ks-tools cloning the repository **(for MacOS Intel)**:
    
          git clone https://github.com/asdo92/ks-tools
          cd ks-tools
          sudo make -f Makefile.macbrew

    * Install ks-tools cloning the repository **(for MacOS ARM)**:
    
          git clone https://github.com/asdo92/ks-tools
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
  


