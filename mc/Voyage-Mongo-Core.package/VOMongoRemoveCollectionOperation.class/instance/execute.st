execution
execute
	Mongo debugLog: 'removeCollection'.
	self repository
		collectionAt: queryClass
		writingDo: [ :collection | collection drop ]