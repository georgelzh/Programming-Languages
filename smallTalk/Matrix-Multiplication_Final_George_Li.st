Object subclass: #SelfMadeMatrix
	instanceVariableNames: 'rowNum columnNum arrayMatrix'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Matrix-Multiplication'!

!SelfMadeMatrix methodsFor: 'accessing' stamp: 'onetime 10/22/2019 16:21'!
arrayMatrix

	^ arrayMatrix! !

!SelfMadeMatrix methodsFor: 'accessing' stamp: 'onetime 10/22/2019 16:21'!
arrayMatrix: anObject

	arrayMatrix := anObject.! !

!SelfMadeMatrix methodsFor: 'accessing' stamp: 'onetime 10/22/2019 16:12'!
columnNum

	^ columnNum! !

!SelfMadeMatrix methodsFor: 'accessing' stamp: 'onetime 10/22/2019 16:12'!
columnNum: anObject

	columnNum := anObject.! !

!SelfMadeMatrix methodsFor: 'accessing' stamp: 'onetime 10/22/2019 16:12'!
rowNum

	^ rowNum! !

!SelfMadeMatrix methodsFor: 'accessing' stamp: 'onetime 10/22/2019 16:12'!
rowNum: anObject

	rowNum := anObject.! !


!SelfMadeMatrix methodsFor: 'as yet unclassified' stamp: 'onetime 10/22/2019 16:47'!
at: rowNumber at: columnNumber put: value
		(self arrayMatrix at: rowNumber) at: columnNumber put: value.
		Transcript show: value;cr.! !

!SelfMadeMatrix methodsFor: 'as yet unclassified' stamp: 'onetime 10/27/2019 14:47'!
multiply: anSelfMadeMatrix
		| sum |
		sum:=0.
		(self columnNum) = (anSelfMadeMatrix columnNum)
			ifTrue:[
				1 to: (self rowNum) do: 	"loop through each row of matrix 1"
					[ :r |
					1 to: (anSelfMadeMatrix columnNum) do: 	"loop through each column of matrix 2"
						[ :c2 |
							1 to: (self columnNum) do:		"loop through each column of matrix 1"
								[ :c|
								sum:= sum + (((self arrayMatrix at: r) at: c) *  "add all the sum together for multiplication"
								(((anSelfMadeMatrix arrayMatrix) at: c) at: c2)).
								
								"Transcript show: 'r: ' , r,' c: ', c;cr.
								Transcript show: 'c2: ' , column2, 'r: ', r;cr."
								].
						Transcript show: sum.	"print the sum for each matrix multiplication result"
						Transcript show: '  '.
						sum:= 0.		"reset the sum once it starts the next multiplication"
						].
					Transcript show: '';cr.
					].
				Transcript show: '';cr.
				].
			
"example:
d:= SelfMadeMatrix new.
d setRow: 2 column: 3.
d at: 1 at: 1 put: 2.
d at: 1 at: 2 put: 4.
d at: 1 at: 3 put: 5.
d at: 2 at: 1 put: 6.
d at: 2 at: 2 put: 1.
d at: 2 at: 3 put: 0.
d.

b:= SelfMadeMatrix new.
b setRow: 3 column: 3.
b at: 1 at: 1 put: 3.
b at: 1 at: 2 put: 1.
b at: 1 at: 3 put: 2.
b at: 2 at: 1 put: 2.
b at: 2 at: 2 put: 5.
b at: 2 at: 3 put: 3.
b at: 3 at: 1 put: 5.
b at: 3 at: 2 put: 7.
b at: 3 at: 3 put: 9.
b.

d multiply: b.
"! !

!SelfMadeMatrix methodsFor: 'as yet unclassified' stamp: 'onetime 10/27/2019 14:46'!
setRow: rowNumber column: columnNumber
	super initialize.
	self columnNum: columnNumber. 
	self rowNum: rowNumber.
	self arrayMatrix: (Array new: rowNumber).
	"set up the matrix"
	1 to: self rowNum do: [
		:i | self arrayMatrix at: i put: (Array new: columnNumber).]! !
