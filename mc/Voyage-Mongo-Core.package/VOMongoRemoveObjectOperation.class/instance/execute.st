execution
execute
	Mongo debugLog: 'removeObject'.
	self repository
		collectionAt: object class
		writingDo: [ :collection |
			| objectToDelete |
			objectToDelete := {
				repository fieldRootId -> (repository keyOf: object)
				} asDictionary.
			collection
				commandDelete: objectToDelete
				limit: 1
				writeConcern: (self repository removeConcernFor: object class) ].
	repository cache removeValue: object