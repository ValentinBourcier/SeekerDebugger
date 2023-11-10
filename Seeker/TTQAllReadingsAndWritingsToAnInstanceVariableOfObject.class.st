Class {
	#name : #TTQAllReadingsAndWritingsToAnInstanceVariableOfObject,
	#superclass : #TTQAllReadingsAndWritingsToVariables,
	#instVars : [
		'objectOid',
		'variableName'
	],
	#category : #'Seeker-TimeTravelingQueries'
}

{ #category : #'as yet unclassified' }
TTQAllReadingsAndWritingsToAnInstanceVariableOfObject class >> queryFrom: source withObjectOid: anObject withVariableName: aVariableName [

	^ (self queryFrom: source)
		  objectOid: anObject;
		  variableName: aVariableName;
		  yourself
]

{ #category : #'as yet unclassified' }
TTQAllReadingsAndWritingsToAnInstanceVariableOfObject class >> selectionFunction [

	^ SkSelectionReadingsAndWritingsToAnInstanceVariableOfObject
]

{ #category : #accessing }
TTQAllReadingsAndWritingsToAnInstanceVariableOfObject >> objectOid [

	^ objectOid
]

{ #category : #accessing }
TTQAllReadingsAndWritingsToAnInstanceVariableOfObject >> objectOid: anObject [

	objectOid := anObject.
	selectionFunction objectOid: anObject
]

{ #category : #accessing }
TTQAllReadingsAndWritingsToAnInstanceVariableOfObject >> variableName [

	^ variableName
]

{ #category : #accessing }
TTQAllReadingsAndWritingsToAnInstanceVariableOfObject >> variableName: anObject [

	variableName := anObject.
	selectionFunction variableName: anObject
]
