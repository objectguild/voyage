private
mongoDatabaseFrom: mongo
	| db |
	db := mongo databaseNamed: self databaseName.
	self username isEmptyOrNil 
		ifFalse: [ db username: self username password: self password ].
	^ db