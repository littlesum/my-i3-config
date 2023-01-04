#!/bin/env bash
if [ "$PLAYER_EVENT" = "start" ] || [ "$PLAYER_EVENT" = "change" ];
then
	trackName=$(playerctl -p spotifyd,%any metadata title)
	artistAndAlbumName=$(playerctl -p spotifyd,%any metadata --format "{{ artist }} ({{ album }})")
	curl -o /tmp/spotifyd.png `playerctl -p spotifyd metadata mpris:artUrl`
	notify-send -u low "$trackName" "$artistAndAlbumName " -i "/tmp/spotifyd.png"
fi
