#!/bin/bash

# رابط الفيديو من اليوتيوب الذي ترغب في فتحه
youtube_video_url="https://www.youtube.com/watch?v=nYgSZvKWucA"

# عدد النوافذ التي ترغب في فتحها وتشغيل الفيديو في كل نافذة
num_windows=55

# حلقة تكرار لفتح النوافذ وتشغيل الفيديو في كل نافذة بشكل خفي
for ((i = 1; i <= num_windows; i++))
do
  # افتح رابط الفيديو في المتصفح Google Chrome بوضع التصفح الخفي
  start chrome --headless --disable-gpu --incognito "$youtube_video_url" &

  # انتظر ثانية واحدة بين فتح كل نافذة لتجنب تداخلها
  sleep 1
done
