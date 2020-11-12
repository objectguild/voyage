*Voyage-Model-Core
revert: anObject
	self isVoyageRoot 
		ifTrue: [ ^ self voyageRepository revert: anObject ]
		ifFalse: [ ^ anObject ]