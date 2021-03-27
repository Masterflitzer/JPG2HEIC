# JPG2HEIC
Bulk convert JPG images to HEIC/HEIF with metadata in Bash.

### Installation (Homebrew)

```bash
brew install exiftool
brew install imagemagick
```

### Installation (Build & Compile)

```bash
su -
apt install exiftool
sed -Ei 's/^# deb-src /deb-src /' /etc/apt/sources.list
apt update
apt install pkg-config m4 libtool automake autoconf
apt install build-essential autoconf libtool git-core pkg-config m4 automake
apt build-dep imagemagick libmagickcore-dev libde265 libheif

cd /usr/src/ 
git clone https://github.com/strukturag/libde265.git
git clone https://github.com/strukturag/libheif.git
git clone https://github.com/ImageMagick/ImageMagick.git

cd /usr/src/libde265/
./autogen.sh && ./configure
make && make install

cd /usr/src/libheif/
./autogen.sh && ./configure
make && make install

cd /usr/src/ImageMagick/
./configure --with-heic=yes
make && make install
ldconfig /usr/local/lib
```

### Usage

```bash
cd ./Camera/
./JPG2HEIC.sh
```

### forked from fotock
https://github.com/fotock/jpg2heic
