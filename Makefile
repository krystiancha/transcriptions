all: pdf midi mp4

pdf: $(addsuffix .pdf, $(basename $(wildcard *.ly)))

midi: $(addsuffix .midi, $(basename $(wildcard *.ly)))

avi: $(addsuffix .avi, $(basename $(wildcard *.ly)))

mp3: $(addsuffix .mp3, $(basename $(wildcard *.ly)))

mp4: $(addsuffix .mp4, $(basename $(wildcard *.ly)))

%.pdf %.midi: %.ly
	lilypond $<

%.avi: %.ly
	ly2video \
		--input $< \
		--output $@ \
		--fps 60 \
		--quality 1

%.mp3:
	youtube-dl \
		--output '$(basename $@).%(ext)s' \
		--extract-audio \
		--audio-format mp3 \
		--audio-quality 0 \
		$(shell awk '/$(basename $@)/{print $$3}' videos.txt)

%.mp4: %.avi %.mp3
	ffmpeg \
		-y \
		-itsoffset $(shell awk '/$(basename $@)/{print $$2}' videos.txt) \
		-i $< \
		-i $(basename $<).mp3 \
		$(shell awk '/$(basename $@)/{print $$4 ? "-t "$$4" -ss "$$2 : ""}' videos.txt) \
		-r 60 \
		-c:v h264 \
		-c:a mp3 \
		-map 0:v:0 \
		-map 1:a:0 \
		-max_muxing_queue_size 2048 \
		$@

clean:
	rm -f *.pdf *.midi *.avi *.mp3 *.mp4
