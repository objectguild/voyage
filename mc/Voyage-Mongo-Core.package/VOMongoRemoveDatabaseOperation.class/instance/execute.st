execution
execute
	Mongo debugLog: 'removeDatabase'.
	self repository databaseWritingDo: [ :db | db drop ].
	repository reset