Class {
	#name : #TTQAllAccessesToVariables,
	#superclass : #TimeTravelingQuery,
	#category : #'Seeker-TimeTravelingQueries'
}

{ #category : #'as yet unclassified' }
TTQAllAccessesToVariables class >> displayModel [

	^ QdmForAccessesToVariables
]

{ #category : #'as yet unclassified' }
TTQAllAccessesToVariables class >> projectionFunction [

	^ SkProjectionAccessToVariable
]

{ #category : #'as yet unclassified' }
TTQAllAccessesToVariables class >> selectionFunction [

	^ SkSelectionAccessesToVariables
]
