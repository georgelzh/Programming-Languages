Object subclass: #CoinToss
	instanceVariableNames: 'head tail'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Coin_Toss'!

!CoinToss methodsFor: 'initialize' stamp: 'onetime 10/14/2019 00:19'!
initialize
"
usage eg.
aCoin := CoinToss new. 
aCoin flip.
"
	| a |
	super initialize.
	self head: 0.
	self tail: 0.

	1 to: 100 do: [ :i|
		a := #('Head' 'Tail') atRandom.
		Transcript show: a, ' '.
		a = 'Head' 
			ifTrue:[self head: self head + 1]
			ifFalse:[self tail: self tail + 1].
		].
	Transcript show: '';cr.
	Transcript show: 'Head appeared ', self head, ' times'; cr.
	Transcript show: 'Tail appeared ', self tail, ' times'; cr.
	
		"
	reference:
	https://medium.com/learn-how-to-program/chapter-2-introducing-smalltalk-b00cec93b25f
	http://rigaux.org/language-study/syntax-ss-languages-per-language/Smalltalk.html
	"
	! !


!CoinToss methodsFor: 'accessing' stamp: 'onetime 10/13/2019 15:26'!
head

	^ head! !

!CoinToss methodsFor: 'accessing' stamp: 'onetime 10/13/2019 15:26'!
head: anObject

	head := anObject.! !

!CoinToss methodsFor: 'accessing' stamp: 'onetime 10/13/2019 15:26'!
tail

	^ tail! !

!CoinToss methodsFor: 'accessing' stamp: 'onetime 10/13/2019 15:26'!
tail: anObject

	tail := anObject.! !


!CoinToss methodsFor: 'as yet unclassified' stamp: 'onetime 10/13/2019 21:30'!
flip
	| a |
	self head: 0.
	self tail: 0.

	1 to: 100 do: [ :i|
		a := #('1' '0') atRandom.
		Transcript show: a, ' '.
		a = '1' 
			ifTrue:[self head: self head + 1]
			ifFalse:[self tail: self tail + 1].
		].
	Transcript show: '';cr.
	Transcript show: 'Head appeared ', self head, ' times'; cr.
	Transcript show: 'Tail appeared ', self tail, ' times'; cr.
	
		"
	reference:
	https://medium.com/learn-how-to-program/chapter-2-introducing-smalltalk-b00cec93b25f
	http://rigaux.org/language-study/syntax-ss-languages-per-language/Smalltalk.html
	"
	! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

CoinToss class
	instanceVariableNames: 'myArray'!
