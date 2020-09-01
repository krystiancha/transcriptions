all: pdf midi mp4

pdf: $(addsuffix .pdf, $(basename $(wildcard *.ly)))

midi: $(addsuffix .midi, $(basename $(wildcard *.ly)))

avi: $(addsuffix .avi, $(basename $(wildcard *.ly)))

mp3: $(addsuffix .mp3, $(basename $(wildcard *.ly)))

mp4: $(addsuffix .mp4, $(basename $(wildcard *.ly)))

%.pdf %.midi: %.ly
	lilypond $<

%.avi: %.ly
	ly2video --videoDef 1920x1080 -f 60 -q 1 --resolution 110 -i $< -o $@

%.mp3:
	youtube-dl -o '$(basename $@).%(ext)s' --extract-audio --audio-format mp3 $(shell awk '/$(basename $@)/{print $$3}' videos.txt)

%.mp4: %.avi %.mp3
	ffmpeg -y -itsoffset $(shell awk '/$(basename $@)/{print $$2}' videos.txt) -i $< -i $(basename $<).mp3 -c:v h264 -c:a mp3 -b:a 320k -map 0:v:0 -map 1:a:0 -max_muxing_queue_size 1024 $@

clean:
	rm -f *.pdf *.midi *.avi *.mp3 *.mp4
