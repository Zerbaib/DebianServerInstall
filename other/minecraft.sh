#!/bin/bash

# Check if script is running with root privileges
check_root() {
  if [ "$(id -u)" != "0" ]; then
    echo "This script must be run as root"
    exit 1
  fi
}

# Install Java
install_java() {
  apt-get update
  apt-get install -y default-jdk
}

# Download the latest PaperMC JAR
download_paper() {
  wget https://papermc.io/api/v2/projects/paper/versions/latest/builds/latest/downloads/paper-latest.jar -O paper.jar
}

# Create the server directory
create_directory() {
  mkdir minecraft_server
}

# Move the PaperMC JAR to the server directory
move_jar() {
  mv paper.jar minecraft_server/
}

# Accept the Minecraft server EULA
accept_eula() {
  echo "eula=true" > minecraft_server/eula.txt
}

# Create the server.properties file
create_properties() {
  echo "server-port=25565" > minecraft_server/server.properties
  echo "level-name=world" >> minecraft_server/server.properties
  echo "gamemode=survival" >> minecraft_server/server.properties
  echo "difficulty=easy" >> minecraft_server/server.properties
}

# Start the server
start_server() {
  cd minecraft_server
  java -Xms1G -Xmx4G -jar paper.jar nogui
}

# Check for root privileges
check_root

# Install Java
install_java

# Download the latest PaperMC JAR
download_paper

# Create the server directory
create_directory

# Move the PaperMC JAR to the server directory
move_jar

# Accept the Minecraft server EULA
accept_eula

# Create the server.properties file
create_properties
