cd ~

sudo apt update -y && sudo apt upgrade -y

wget https://dl.google.com/android/repository/commandlinetools-linux-7302050_latest.zip

mkdir android

unzip -j commandlinetools-linux-7302050_latest.zip -d android

cd android

wget https://dl.google.com/android/repository/build-tools_r30.0.3-linux.zip

mkdir build-tools

unzip -j build-tools_r30.0.3-linux.zip -d build-tools

cd bin

./sdkmanager --sdk_root=~/android "platforms;android-30" "platform-tools"

cd ~

echo "export ANDROID_HOME=~/android" >> ~/.bashrc

echo "export PATH=$PATH:$ANDROID_HOME/build-tools" >> ~/.bashrc

export ANDROID_HOME=~/android

export PATH=$PATH:$ANDROID_HOME/build-tools
