Class {
	#name : #SkSelectionAccessesToInstanceVariablesOfObject,
	#superclass : #SkSelectionAccessesToVariables,
	#instVars : [
		'objectOid'
	],
	#category : #'Seeker-TimeTravelingQueries'
}

{ #category : #accessing }
SkSelectionAccessesToInstanceVariablesOfObject >> objectOid [

	^ objectOid
]

{ #category : #accessing }
SkSelectionAccessesToInstanceVariablesOfObject >> objectOid: anObject [

	objectOid := anObject
]

{ #category : #accessing }
SkSelectionAccessesToInstanceVariablesOfObject >> value: programState [

	^ programState receiverOid = objectOid and: [ ((programState isVariable and: [ 
		    programState node variable isInstanceVariable ]) or: [ 
		   programState isImplicitReadingOfInstanceVariable ])]
		  
]
