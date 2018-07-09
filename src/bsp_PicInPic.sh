gst-launch-1.0 -v \
	videomixer name=mix !\
		videoconvert !\
		autovideosink \
	videotestsrc pattern=23 !\
		video/x-raw, framerate=1/1, width=800, height=400 ! \
		videoconvert !\
		mix.\
	videotestsrc pattern=1 ! \
		video/x-raw, framerate=1/1, width=200, height=150 ! \
		videoconvert !\
		videobox border-alpha=0 top=0 left=0 !\
		mix. 
