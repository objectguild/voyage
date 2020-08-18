execution
execute
	Mongo debugLog: 'count'.
	^ self repository
		collectionAt: queryClass
		readingDo: [ :collection |
			collection sizeForQuery: (where ifNil: [ {} ]) asMongoQuery ]