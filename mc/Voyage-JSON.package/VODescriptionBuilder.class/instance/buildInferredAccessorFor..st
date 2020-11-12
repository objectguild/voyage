private building
buildInferredAccessorFor: aString

	^ MAPluggableAccessor 
		read: [ :anObject | 
			VOInferredAccessorUtil readInstVarNamed: aString ofObject: anObject ]
		write: [ :anObject :value | 
			VOInferredAccessorUtil writeValue: value toInstVarNamed: aString ofObject: anObject ].