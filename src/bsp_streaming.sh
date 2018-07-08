gst-launch-1.0 \
	videotestsrc ! \
		vaapiencode_h264 !\
		rtph264pay config-interval=10 pt=96 !\
		udpsink host=127.0.0.1 port=5000
