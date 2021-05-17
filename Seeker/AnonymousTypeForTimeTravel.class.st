Class {
	#name : #AnonymousTypeForTimeTravel,
	#superclass : #AnonymousType,
	#instVars : [
		'privateTracer'
	],
	#category : #'Seeker-Components-Experimental'
}

{ #category : #'instance creation' }
AnonymousTypeForTimeTravel class >> newWith: anAssocArray forTracer: tracer [
|annonymousObj|
annonymousObj := self new.
annonymousObj privateFields: anAssocArray asDictionary.
annonymousObj privateTracer: tracer.
^annonymousObj 
]

{ #category : #accessing }
AnonymousTypeForTimeTravel >> privateTracer [

	^ privateTracer
]

{ #category : #accessing }
AnonymousTypeForTimeTravel >> privateTracer: anObject [

	privateTracer := anObject
]

{ #category : #'as yet unclassified' }
AnonymousTypeForTimeTravel >> timeTravelToThis [

	"Needs the stepIndex key"

	privateTracer restartAndStepToIndex: self stepIndex
]