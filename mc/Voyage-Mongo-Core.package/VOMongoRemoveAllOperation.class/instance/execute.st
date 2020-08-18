execution
execute
	Mongo debugLog: 'removeAll'.
	self repository
		collectionAt: queryClass
		writingDo: [ :collection |
			collection
				commandDelete: Dictionary new
				limit: 0
				writeConcern: (self repository removeConcernFor: queryClass) ]