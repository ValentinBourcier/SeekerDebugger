Class {
	#name : #SkSelectionReadingsAndWritingsToInstanceVariablesOfObject,
	#superclass : #SkSelectionReadingsAndWritingsToVariables,
	#instVars : [
		'objectOid'
	],
	#category : #'Seeker-TimeTravelingQueries'
}

{ #category : #initialization }
SkSelectionReadingsAndWritingsToInstanceVariablesOfObject >> initialize [

	readingSelection := SkSelectionAccessesToInstanceVariablesOfObject new.
	writingSelection := SkSelectionAssignmentsOfInstanceVariablesOfObject new
]

{ #category : #accessing }
SkSelectionReadingsAndWritingsToInstanceVariablesOfObject >> objectOid [

	^ objectOid
]

{ #category : #accessing }
SkSelectionReadingsAndWritingsToInstanceVariablesOfObject >> objectOid: anObject [

	objectOid := anObject.
	readingSelection objectOid: anObject.
	writingSelection objectOid: anObject
]
