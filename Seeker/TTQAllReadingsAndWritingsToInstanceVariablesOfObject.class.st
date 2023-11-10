Class {
	#name : #TTQAllReadingsAndWritingsToInstanceVariablesOfObject,
	#superclass : #TTQAllReadingsAndWritingsToVariables,
	#instVars : [
		'objectOid'
	],
	#category : #'Seeker-TimeTravelingQueries'
}

{ #category : #'as yet unclassified' }
TTQAllReadingsAndWritingsToInstanceVariablesOfObject class >> queryFrom: source withObjectOid: anObject [

	^ (self queryFrom: source)
		  objectOid: anObject;
		  yourself
]

{ #category : #'as yet unclassified' }
TTQAllReadingsAndWritingsToInstanceVariablesOfObject class >> selectionFunction [

	^ SkSelectionReadingsAndWritingsToInstanceVariablesOfObject
]

{ #category : #accessing }
TTQAllReadingsAndWritingsToInstanceVariablesOfObject >> objectOid [

	^ objectOid
]

{ #category : #accessing }
TTQAllReadingsAndWritingsToInstanceVariablesOfObject >> objectOid: anObject [

	objectOid := anObject.
	selectionFunction objectOid: anObject
]
