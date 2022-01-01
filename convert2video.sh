# clean up old video
rm siparty.mp4

# convert to png images
convert -density 160 siparty.pdf siparty.png

# convert to video
ffmpeg -ss 00:00:00 -i siparty-%d.png -ss 00:00:05 -i Metric_System_For_Kids_-_Explained_Through_Song-h6vca9PnlyI.m4a -shortest siparty_raw.mp4

# repair video
HandBrakeCLI --crop 0:0:0:0  -i siparty_raw.mp4 -o siparty.mp4

# clean up
rm siparty-*.png
rm siparty_raw.mp4

# view :)
open siparty.mp4
