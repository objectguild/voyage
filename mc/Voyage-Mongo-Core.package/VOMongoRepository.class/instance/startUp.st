system startup
startUp
	super startUp.
	sdamClient ifNil: [ ^ self ].
	sdamClient isStarted ifTrue: [ ^ self ].
	sdamClient start.