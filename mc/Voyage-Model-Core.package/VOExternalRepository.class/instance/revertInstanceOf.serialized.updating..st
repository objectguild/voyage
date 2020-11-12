private
revertInstanceOf: aClass serialized: serialized updating: anObject
	| id serializedVersion result cacheForClass | 

	id := self idFromSerialized: serialized.
	serializedVersion := self versionFromSerialized: serialized.
	
	cacheForClass := self cacheFor: aClass.
	cacheForClass removeValue: anObject.

	result := self 
		materializeInstanceOf: aClass 
		serialized: serialized 
		updating: anObject 
		id: id 
		version: serializedVersion.

	cacheForClass at: id put: result.

	^ result