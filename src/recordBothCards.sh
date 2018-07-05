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
	decklinkvideosrc mode=$modeCard1 device-number=1 !\
		videoconvert !\
		avenc_mpeg2video bitrate=$bitrateCard1vid max-key-interval=0 !\
		queue !\
		mux2. \
	decklinkaudiosrc device-number=1 !\
		audioconvert !\
		avenc_mp2 bitrate=$bitrateCard1aud !\
		queue !\
		mux2. \
	mpegtsmux name=mux !\
		filesink location=$filenameCard0 \
	mpegtsmux name=mux2 !\
		filesink location=$filenameCard1 \


