cd

sudo apt-get install -y wget apt-transport-https gnupg

wget https://adoptopenjdk.jfrog.io/adoptopenjdk/api/gpg/key/public

gpg --no-default-keyring --keyring ./adoptopenjdk-keyring.gpg --import public

gpg --no-default-keyring --keyring ./adoptopenjdk-keyring.gpg --export --output adoptopenjdk-archive-keyring.gpg

rm adoptopenjdk-keyring.gpg

sudo mv adoptopenjdk-archive-keyring.gpg /usr/share/keyrings

echo "deb [signed-by=/usr/share/keyrings/adoptopenjdk-archive-keyring.gpg] https://adoptopenjdk.jfrog.io/adoptopenjdk/deb buster main" | sudo tee /etc/apt/sources.list.d/adoptopenjdk.list

sudo apt-get update

sudo apt-cache search adoptopenjdk

sudo apt-get install adoptopenjdk-15-hotspot

clear

java -version
