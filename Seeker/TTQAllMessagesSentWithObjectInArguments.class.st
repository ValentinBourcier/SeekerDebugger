Class {
	#name : #TTQAllMessagesSentWithObjectInArguments,
	#superclass : #TTQAllMessageSends,
	#category : #'Seeker-TimeTravelingQueries'
}

{ #category : #'as yet unclassified' }
TTQAllMessagesSentWithObjectInArguments class >> performWith: tracer withArg: arg [

	tracer ui showInResult:
		(self queryFrom: tracer newProgramStates withObjectOid: arg) displayModel 
]

{ #category : #'as yet unclassified' }
TTQAllMessagesSentWithObjectInArguments class >> queryFrom: source withObjectOid: aNumber [

	^ (self queryFrom: source)
		  objectOid: aNumber;
		  yourself
]

{ #category : #'as yet unclassified' }
TTQAllMessagesSentWithObjectInArguments class >> selectionFunction [

	^ SkSelectionMessagesSentWithObjectInArguments
]

{ #category : #accessing }
TTQAllMessagesSentWithObjectInArguments >> objectOid [

	^ selectionFunction objectOid
]

{ #category : #accessing }
TTQAllMessagesSentWithObjectInArguments >> objectOid: anObject [

	selectionFunction objectOid: anObject
]
