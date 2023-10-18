Class {
	#name : #SkSelectionAccessesToAnInstanceVariablesOfObject,
	#superclass : #SkSelectionAccessesToVariables,
	#instVars : [
		'objectOid',
		'variableName'
	],
	#category : #'Seeker-TimeTravelingQueries'
}

{ #category : #accessing }
SkSelectionAccessesToAnInstanceVariablesOfObject >> objectOid [

	^ objectOid
]

{ #category : #accessing }
SkSelectionAccessesToAnInstanceVariablesOfObject >> objectOid: anObject [

	objectOid := anObject
]

{ #category : #accessing }
SkSelectionAccessesToAnInstanceVariablesOfObject >> value: programState [

	^ programState receiverOid = objectOid and: [ 
		  (programState isVariable and: [ 
			   programState node variable isInstanceVariable and: [ 
				   programState node variable name == variableName ] ]) 
			  or: [ 
				  programState isImplicitReadingOfInstanceVariable and: [ 
					  programState nameOfImplicitReadInstanceVariable == variableName ] ] ]
]

{ #category : #accessing }
SkSelectionAccessesToAnInstanceVariablesOfObject >> variableName [

	^ variableName
]

{ #category : #accessing }
SkSelectionAccessesToAnInstanceVariablesOfObject >> variableName: aVariableName [

	variableName := aVariableName
]
