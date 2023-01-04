#/bin/sh
ffmpeg -f v4l2 -video_size 640x480 -i /dev/video0 -c:v libx264 -preset ultrafast $HOME/Video/Webcam/NS_webcam-`date +%Y-%m-%d-%H-%M-%S`.mp4
