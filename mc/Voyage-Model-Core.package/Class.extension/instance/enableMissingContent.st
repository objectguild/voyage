*Voyage-Model-Core
enableMissingContent
	self isVoyageRoot ifFalse: [ ^ self ].

	(self voyageRepository descriptionBuilder for: self) 
		enableMissingContent.
	self crTrace: 'Enabled missing content for Voyage root: ' , self name.