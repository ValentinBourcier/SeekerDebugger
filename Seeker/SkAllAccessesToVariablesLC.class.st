Class {
	#name : #SkAllAccessesToVariablesLC,
	#superclass : #SeekerLiteCommand,
	#category : #'Seeker-Commands'
}

{ #category : #accessing }
SkAllAccessesToVariablesLC >> description [

	^ self commonDescriptionIntroString
	  ,
	  'for every access to any variable'
]

{ #category : #executing }
SkAllAccessesToVariablesLC >> executeCommand [

	self showResultFor: (TTQAllAccessesToVariables
			 queryFrom: self tracer newProgramStates)
]

{ #category : #accessing }
SkAllAccessesToVariablesLC >> icon [

"Inspect the following line and choose an icon for the command

(Smalltalk ui icons)

"

	^ #objects
]

{ #category : #accessing }
SkAllAccessesToVariablesLC >> name [

	^ 'All the accesses to any variable in the program'
]

{ #category : #'as yet unclassified' }
SkAllAccessesToVariablesLC >> selectionTitleString [

	^ ' : (' , self codeSelectedText , ')'
]
