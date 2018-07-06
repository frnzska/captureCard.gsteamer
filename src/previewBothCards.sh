source config.sh
gst-launch-1.0 -v \
	decklinkvideosrc mode=$modeCard1 device-number=1 !\
		videoconvert !\
		videoscale !\
		"video/x-raw, width="$previewWidthCard1", height="$previewHeightCard1 !\
		autovideosink \
	decklinkvideosrc mode=$modeCard0 device-number=0 !\
		videoconvert !\
		videoscale !\
		"video/x-raw, width="$previewWidthCard0", height="$previewHeightCard0 !\
		autovideosink
