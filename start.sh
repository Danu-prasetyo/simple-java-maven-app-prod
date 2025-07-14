#!/bin/bash
# Nama file JAR Anda
JAR_FILE="my-app-1.0-SNAPSHOT.jar"
# Path ke log file
LOG_FILE="my-app-1.0-SNAPSHOT.log"

# Jalankan aplikasi Spring Boot di background
nohup java -jar $JAR_FILE > $LOG_FILE 2>&1 &
echo $! > my-app-1.0-SNAPSHOT.pid # Simpan PID ke file
echo "Aplikasi dimulai dengan PID $(cat my-app-1.0-SNAPSHOT.pid)"