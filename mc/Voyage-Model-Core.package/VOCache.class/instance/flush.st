accessing
flush
	self mutex critical: [
		objects := WeakValueDictionary new.
		reversedObjects := WeakIdentityKeyDictionary new.
		versions := Dictionary new ].