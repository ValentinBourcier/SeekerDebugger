Class {
	#name : #SkSelectionAccessesToVariables,
	#superclass : #SeekerSelectionFunction,
	#category : #'Seeker-TimeTravelingQueries'
}

{ #category : #accessing }
SkSelectionAccessesToVariables >> value: programState [

	^ programState isVariable or: [ programState isImplicitReadingOfInstanceVariable ]
]
