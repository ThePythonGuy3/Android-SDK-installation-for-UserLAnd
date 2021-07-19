cd ~

sudo apt update -y && sudo apt upgrade -y

wget https://dl.google.com/android/repository/commandlinetools-linux-7302050_latest.zip

mkdir android

unzip -j commandlinetools-linux-7302050_latest.zip -d android

cd android

wget https://dl.google.com/android/repository/build-tools_r30.0.3-linux.zip

mkdir build-tools

unzip -j build-tools_r30.0.3-linux.zip -d build-tools
