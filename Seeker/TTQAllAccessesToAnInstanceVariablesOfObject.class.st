Class {
	#name : #TTQAllAccessesToAnInstanceVariablesOfObject,
	#superclass : #TTQAllAccessesToVariables,
	#category : #'Seeker-TimeTravelingQueries'
}

{ #category : #'as yet unclassified' }
TTQAllAccessesToAnInstanceVariablesOfObject class >> queryFrom: source withObjectOid: anObject withVariableName: aVariableName [

	^ (self queryFrom: source)
		  objectOid: anObject;
		  variableName: aVariableName;
		  yourself
]

{ #category : #'as yet unclassified' }
TTQAllAccessesToAnInstanceVariablesOfObject class >> selectionFunction [

	^ SkSelectionAccessesToAnInstanceVariablesOfObject
]

{ #category : #accessing }
TTQAllAccessesToAnInstanceVariablesOfObject >> objectOid [

	^ selectionFunction objectOid
]

{ #category : #accessing }
TTQAllAccessesToAnInstanceVariablesOfObject >> objectOid: anObject [

	selectionFunction objectOid: anObject
]

{ #category : #accessing }
TTQAllAccessesToAnInstanceVariablesOfObject >> variableName [

	^selectionFunction variableName
]

{ #category : #accessing }
TTQAllAccessesToAnInstanceVariablesOfObject >> variableName: aVariableName [

	^ selectionFunction variableName: aVariableName
]
