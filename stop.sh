#!/bin/bash
# Path ke file PID
PID_FILE="my-app-1.0-SNAPSHOT.pid"

if [ -f "$PID_FILE" ]; then
    PID=$(cat $PID_FILE)
    echo "Menghentikan aplikasi dengan PID $PID..."
    kill $PID
    # Tunggu sebentar untuk memastikan aplikasi berhenti
    sleep 5
    if kill -0 $PID 2>/dev/null; then
        echo "Aplikasi tidak berhenti, mencoba kill -9"
        kill -9 $PID
    fi
    rm $PID_FILE
    echo "Aplikasi dihentikan."
else
    echo "File PID tidak ditemukan. Aplikasi mungkin tidak berjalan."
fi