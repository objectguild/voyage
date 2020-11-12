tests
testRevert
	| pilot id aVersion sameId anotherVersion |
	
	pilot := VOTestPilot new name: 'Jonathan'.
	self assert: (self repository isNew: pilot).

	self repository save: pilot.
	self deny: (self repository isNew: pilot).

	id := self repository idOf: pilot.
	aVersion := self repository versionAt: id.

	self assert: pilot name equals: 'Jonathan'.

	pilot name: 'Another Pilot'.
	self assert: pilot name equals: 'Another Pilot'.

	self repository revert: pilot.
	self deny: (self repository isNew: pilot).

	sameId := self repository idOf: pilot.
	anotherVersion := self repository versionAt: id.
	
	self assert: pilot name equals: 'Jonathan'.
	self assert: id equals: sameId.
	self assert: aVersion equals: anotherVersion.