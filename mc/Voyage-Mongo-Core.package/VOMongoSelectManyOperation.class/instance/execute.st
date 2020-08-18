execution
execute 	
	Mongo debugLog: 'selectMany'.
	^ repository execute: [ self select ]