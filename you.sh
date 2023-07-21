; تحديد التطبيق المستهدف (Google Chrome)
targetAppTitle := "Google Chrome"

; رابط الفيديو من اليوتيوب الذي ترغب في فتحه
youtube_video_url := "https://www.youtube.com/watch?v=nYgSZvKWucA"

; عدد النوافذ التي ترغب في فتحها وتشغيل الفيديو في كل نافذة
num_windows := 10

; حلقة تكرار لفتح خمس متصفحات وخمس نوافذ في كل متصفح بشكل خفي
Loop 200
{
  ; حلقة تكرار لفتح النوافذ وتشغيل الفيديو في كل نافذة بشكل خفي
  Loop % num_windows
  {
    ; فتح متصفح جديد بوضع التصفح الخفي
    Run % "chrome.exe --incognito"

    ; انتظر قليلاً ليتم فتح المتصفح
    Sleep 1000

    ; فتح رابط الفيديو في المتصفح Google Chrome الجديد
    Run % "chrome.exe --incognito " youtube_video_url

    ; انتظر قليلاً لبدء تشغيل الفيديو
    Sleep 1000

    ; تحديد النافذة المفتوحة باستخدام عنوانها
    WinGet, hWnd, ID, % targetAppTitle

    ; إرسال مفتاح المسافة (Space) لبدء تشغيل الفيديو
    ControlSend,, {Space}, ahk_id %hWnd%

    ; انتظر قليلاً ثم إغلاق النافذة
    Sleep 10000
    WinClose, % "ahk_id " hWnd
  }

  ; انتظر قليلاً بين فتح متصفحات متتالية
  Sleep 500
}
