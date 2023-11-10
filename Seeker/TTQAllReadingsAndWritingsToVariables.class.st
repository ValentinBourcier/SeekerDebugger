Class {
	#name : #TTQAllReadingsAndWritingsToVariables,
	#superclass : #TimeTravelingQuery,
	#category : #'Seeker-TimeTravelingQueries'
}

{ #category : #'as yet unclassified' }
TTQAllReadingsAndWritingsToVariables class >> displayModel [

	^ QdmForReadingsAndWritings
]

{ #category : #'as yet unclassified' }
TTQAllReadingsAndWritingsToVariables class >> projectionFunction [

	^ SkProjectionReadingsAndWritingsToVariables
]

{ #category : #'as yet unclassified' }
TTQAllReadingsAndWritingsToVariables class >> selectionFunction [

	^ SkSelectionAccessesToVariables
]
