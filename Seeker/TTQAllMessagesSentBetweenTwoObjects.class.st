Class {
	#name : #TTQAllMessagesSentBetweenTwoObjects,
	#superclass : #TTQAllMessageSends,
	#category : #'Seeker-TimeTravelingQueries'
}

{ #category : #'as yet unclassified' }
TTQAllMessagesSentBetweenTwoObjects class >> queryFrom: source withFirstObjectOid: aFirstObjectOid withSecondObjectOid: aSecondObjectOid [

	^ (self queryFrom: source)
		firstObjectOid: aFirstObjectOid;
		secondObjectOid: aSecondObjectOid;
		  yourself
]

{ #category : #'as yet unclassified' }
TTQAllMessagesSentBetweenTwoObjects class >> selectionFunction [

	^ SkSelectionMessagesSentBetweenTwoObjects 
]

{ #category : #accessing }
TTQAllMessagesSentBetweenTwoObjects >> firstObjectOid [

	^selectionFunction firstObjectOid
]

{ #category : #accessing }
TTQAllMessagesSentBetweenTwoObjects >> firstObjectOid: anObjectOid [

	selectionFunction firstObjectOid: anObjectOid
]

{ #category : #accessing }
TTQAllMessagesSentBetweenTwoObjects >> secondObjectOid [

	^ selectionFunction secondObjectOid
]

{ #category : #accessing }
TTQAllMessagesSentBetweenTwoObjects >> secondObjectOid: anObjectOid [

	selectionFunction secondObjectOid: anObjectOid
]
