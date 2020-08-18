persistence
basicSelectOne
	Mongo debugLog: 'readOne'.
	self repository
		collectionAt: queryClass
		readingDo: [ :collection | collection detect: where ]
