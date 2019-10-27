Object subclass: #Card
	instanceVariableNames: 'name attack defend'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CardGame'!

!Card methodsFor: 'accessing' stamp: 'JL 10/14/2019 10:41'!
attack

	^ attack! !

!Card methodsFor: 'accessing' stamp: 'JL 10/14/2019 10:41'!
attack: anObject

	attack := anObject.! !

!Card methodsFor: 'accessing' stamp: 'JL 10/14/2019 10:41'!
defend

	^ defend! !

!Card methodsFor: 'accessing' stamp: 'JL 10/14/2019 10:41'!
defend: anObject

	defend := anObject.! !

!Card methodsFor: 'accessing' stamp: 'JL 10/14/2019 10:42'!
name

	^ name! !

!Card methodsFor: 'accessing' stamp: 'JL 10/14/2019 10:42'!
name: anObject

	name := anObject.! !


Object subclass: #Dasdjsadj
	instanceVariableNames: 'nLife'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CardGame'!

!Dasdjsadj methodsFor: 'accessing' stamp: 'JL 10/14/2019 10:44'!
nLife

	^ nLife! !

!Dasdjsadj methodsFor: 'accessing' stamp: 'JL 10/14/2019 10:44'!
nLife: anObject

	nLife := anObject.! !


Object subclass: #Deck
	instanceVariableNames: 'cards'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CardGame'!

!Deck methodsFor: 'initialize-release' stamp: 'JL 10/14/2019 11:07'!
initialize
	|card1 card2|
	super initialize.
	card1 := Card new.
	
	card1 name: 'card1'.
	card1 attack: 100.
	card1 defend: 200.
	
	card2 := Card new.
	
	card2 name: 'card2'.
	card2 attack: 500.
	card2 defend: 290.
	
	
	
	cards := Array new:2.
	cards at: 1 put: card1.
	! !


!Deck methodsFor: 'accessing' stamp: 'JL 10/14/2019 10:45'!
cards

	^ cards! !

!Deck methodsFor: 'accessing' stamp: 'JL 10/14/2019 11:06'!
cards: anObject

	cards := anObject.! !


Object subclass: #Play
	instanceVariableNames: 'card1 card2'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CardGame'!

!Play methodsFor: 'accessing' stamp: 'JL 10/14/2019 11:08'!
card1

	^ card1! !

!Play methodsFor: 'accessing' stamp: 'JL 10/14/2019 11:08'!
card1: anObject

	card1 := anObject.! !

!Play methodsFor: 'accessing' stamp: 'JL 10/14/2019 11:08'!
card2

	^ card2! !

!Play methodsFor: 'accessing' stamp: 'JL 10/14/2019 11:08'!
card2: anObject

	card2 := anObject.! !

!Play methodsFor: 'accessing' stamp: 'JL 10/14/2019 11:42'!
winnerBetween: card1 and: card2
  	"
	|winner|
	
	
		power1:= powerof: card1.
		power2:=  powerof: card2.
		
		winner:= biggestof: power1 and: power2.
		
		^winner.
		"! !
