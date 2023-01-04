#/bin/bash
SCTIME="`date +'%Y-%m-%d-%H-%M-%S'`"
exec ffmpeg -video_size 2560x1440 -framerate 30 -f x11grab -i :0.0 -c:v libx264 -qp 0 -preset ultrafast $HOME/NS_$SCTIME.mkv -loglevel panic 

