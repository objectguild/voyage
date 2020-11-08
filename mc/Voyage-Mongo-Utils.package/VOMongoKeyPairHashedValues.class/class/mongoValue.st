persistence
mongoValue 
	<mongoDescription>
	
	^VOToManyDescription new
		attributeName: 'value';
		convertNullTo: [ Dictionary new ];
		accessor: (MAPluggableAccessor 
			read: [ :anObject | 
				anObject value associations 
					collect: [ :each | VOMongoKeyPair fromAssociation: each ] ]
			write: [ :anObject :value | 
				anObject instVarNamed: #value put: (value collect: #asAssociation) asDictionary ]);
		yourself