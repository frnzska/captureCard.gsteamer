now=$(date +"%Y_%m_%d_%H:%M:%S")
gst-launch-1.0  \
	decklinkvideosrc mode=14 !\
		videoconvert !\
		avenc_mpeg2video bitrate=5000000 max-key-interval=0 !\
		queue !\
		mux. \
	decklinkaudiosrc !\
		audioconvert !\
		avenc_mp2 bitrate=192000 !\
		queue !\
		mux. \
	mpegtsmux name=mux !\
		filesink location='card0_'$now'.mpeg'

