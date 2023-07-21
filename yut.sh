#!/bin/bash

read -p "Enter the video url: " url
read -p "Enter the refresh rate in seconds: " refreshrate
read -p "Enter your default browser name: " browserr
read -p "How many views do you want: " views

function letsdoit {
    killall "$browserr"
    xdg-open "$url"
    sleep "$refreshrate"
}

for ((i = 0; i <= views; i++)); do
    letsdoit
done
