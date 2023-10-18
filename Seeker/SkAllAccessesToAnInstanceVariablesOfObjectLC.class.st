Class {
	#name : #SkAllAccessesToAnInstanceVariablesOfObjectLC,
	#superclass : #SeekerLiteCommand,
	#category : #'Seeker-Commands'
}

{ #category : #accessing }
SkAllAccessesToAnInstanceVariablesOfObjectLC >> description [

	^ self commonDescriptionIntroString
	  ,
	  'for every accesses to the selected instance variable the current object'
]

{ #category : #executing }
SkAllAccessesToAnInstanceVariablesOfObjectLC >> executeCommand [

	| objectOid variableName |
		objectOid := self tracer currentState receiverOid.
	variableName := self tracer selectedCode asSymbol.

	self showResultFor: (TTQAllAccessesToAnInstanceVariablesOfObject
			 queryFrom: self tracer newProgramStates
			 withObjectOid: objectOid
			 withVariableName: variableName)
]

{ #category : #accessing }
SkAllAccessesToAnInstanceVariablesOfObjectLC >> icon [

"Inspect the following line and choose an icon for the command

(Smalltalk ui icons)

"

	^ #objects
]

{ #category : #accessing }
SkAllAccessesToAnInstanceVariablesOfObjectLC >> name [

	^ 'All the accesses to an instance variable of an object'
]

{ #category : #'as yet unclassified' }
SkAllAccessesToAnInstanceVariablesOfObjectLC >> selectionTitleString [

	^ ' : (' , self codeSelectedText , ')'
]
