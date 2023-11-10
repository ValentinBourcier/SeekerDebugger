Class {
	#name : #SkSelectionReadingsAndWritingsToAnInstanceVariableOfObject,
	#superclass : #SkSelectionReadingsAndWritingsToVariables,
	#instVars : [
		'objectOid',
		'variableName'
	],
	#category : #'Seeker-TimeTravelingQueries'
}

{ #category : #initialization }
SkSelectionReadingsAndWritingsToAnInstanceVariableOfObject >> initialize [

	readingSelection := SkSelectionAccessesToAnInstanceVariablesOfObject new.
	writingSelection := SkSelectionAssignmentsOfAnInstanceVariableOfObject new
]

{ #category : #accessing }
SkSelectionReadingsAndWritingsToAnInstanceVariableOfObject >> objectOid [

	^ objectOid
]

{ #category : #accessing }
SkSelectionReadingsAndWritingsToAnInstanceVariableOfObject >> objectOid: anObject [

	objectOid := anObject.
	readingSelection objectOid: anObject.
	writingSelection objectOid: anObject
]

{ #category : #accessing }
SkSelectionReadingsAndWritingsToAnInstanceVariableOfObject >> variableName [

	^ variableName
]

{ #category : #accessing }
SkSelectionReadingsAndWritingsToAnInstanceVariableOfObject >> variableName: anObject [

	variableName := anObject.
	readingSelection variableName: anObject.
	readingSelection variableName: anObject
]
