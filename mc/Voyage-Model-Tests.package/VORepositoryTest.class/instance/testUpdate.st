tests
testUpdate
	| pilot pilots id |
	
	pilot := VOTestPilot new
		name: 'Esteban';
		pet: (VOTestDog new name: 'Doggie').
	self repository save: pilot.
	self waitForWriteOperation.
	
	id := self repository idOf: pilot.
	
	pilot name: 'Another Pilot'.
	self repository save: pilot.
	self waitForWriteOperation.
	
	pilots := self repository selectAll: VOTestPilot.
	self assert: pilots size equals: 1.
	self assert: pilots anyOne equals: pilot.
	self assert: (self repository idOf: pilot) equals: id.