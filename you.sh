#!/bin/bash

# رابط الفيديو من اليوتيوب الذي ترغب في فتحه
youtube_video_url="https://www.youtube.com/watch?v=nYgSZvKWucA"

# عدد النوافذ التي ترغب في فتحها وتشغيل الفيديو في كل نافذة
num_windows=2000

# حلقة تكرار لفتح النوافذ وتشغيل الفيديو في كل نافذة
for ((i = 1; i <= num_windows; i++))
do
  # افتح رابط الفيديو في المتصفح الافتراضي
  xdg-open "$youtube_video_url" &

  # انتظر ثانية واحدة بين فتح كل نافذة لتجنب تداخلها
  sleep 1
done
