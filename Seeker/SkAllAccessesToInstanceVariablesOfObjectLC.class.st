Class {
	#name : #SkAllAccessesToInstanceVariablesOfObjectLC,
	#superclass : #SeekerLiteCommand,
	#category : #'Seeker-Commands'
}

{ #category : #accessing }
SkAllAccessesToInstanceVariablesOfObjectLC >> description [

	^ self commonDescriptionIntroString
	  , 'for every accesses to any instance variable the selected object'
]

{ #category : #executing }
SkAllAccessesToInstanceVariablesOfObjectLC >> executeCommand [

	| objectOid |
	objectOid := self getSelectedObjectOid.

	self showResultFor: (TTQAllAccessesToInstanceVariablesOfObject
			 queryFrom: self tracer newProgramStates
			 withObjectOid: objectOid)
]

{ #category : #accessing }
SkAllAccessesToInstanceVariablesOfObjectLC >> icon [

"Inspect the following line and choose an icon for the command

(Smalltalk ui icons)

"

	^ #objects
]

{ #category : #accessing }
SkAllAccessesToInstanceVariablesOfObjectLC >> name [

	^ 'All the accesses to any instance variable of an object'
]

{ #category : #'as yet unclassified' }
SkAllAccessesToInstanceVariablesOfObjectLC >> selectionTitleString [

	^ ' : (' , self codeSelectedText , ')'
]
