Class {
	#name : #TTQAllAccessesToInstanceVariablesOfObject,
	#superclass : #TTQAllAccessesToVariables,
	#category : #'Seeker-TimeTravelingQueries'
}

{ #category : #'as yet unclassified' }
TTQAllAccessesToInstanceVariablesOfObject class >> queryFrom: source withObjectOid: anObject [
	^ (self queryFrom: source)
		  objectOid: anObject;
		  yourself
]

{ #category : #'as yet unclassified' }
TTQAllAccessesToInstanceVariablesOfObject class >> selectionFunction [

	^ SkSelectionAccessesToInstanceVariablesOfObject
]

{ #category : #accessing }
TTQAllAccessesToInstanceVariablesOfObject >> objectOid [

	^ selectionFunction objectOid
]

{ #category : #accessing }
TTQAllAccessesToInstanceVariablesOfObject >> objectOid: anObject [

	selectionFunction objectOid: anObject
]
