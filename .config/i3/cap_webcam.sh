#/bin/sh
ffmpeg -f v4l2 -video_size 640x480 -i /dev/video0 -f alsa -i default -c:v libx264 -preset ultrafast -c:a aac $HOME/Video/NS_webcam_`date +%Y-%m-%d-%H-%M-%S`.mp4
