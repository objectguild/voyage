external projects
mongoTalk: spec
	spec 
		baseline: 'MongoTalk' 
			with: [ spec repository: 'github://objectguild/mongotalk:master';
			loads: #( 'Client Core' ) ];
		import: 'MongoTalk'
