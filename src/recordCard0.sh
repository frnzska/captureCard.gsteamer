source ./config.sh

gst-launch-1.0  \
	decklinkvideosrc mode=$modeCard0 !\
		videoconvert !\
		avenc_mpeg2video bitrate=$bitrateCard0vid max-key-interval=0 !\
		queue !\
		mux. \
	decklinkaudiosrc !\
		audioconvert !\
		avenc_mp2 bitrate=$bitrateCard0aud !\
		queue !\
		mux. \
	mpegtsmux name=mux !\
		filesink location=$filenameCard0 \


