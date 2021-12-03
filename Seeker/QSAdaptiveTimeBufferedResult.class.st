Class {
	#name : #QSAdaptiveTimeBufferedResult,
	#superclass : #QuerySolver,
	#instVars : [
		'bufferReadyCallback'
	],
	#category : #'Seeker-Query'
}

{ #category : #'instance creation' }
QSAdaptiveTimeBufferedResult class >> newForQuery: aQuery withBufferCompletedCallback: aBlock [

	^ (self newForQuery: aQuery)
		  bufferReadyCallback: aBlock;
		  yourself
]

{ #category : #accessing }
QSAdaptiveTimeBufferedResult >> bufferReadyCallback [

	^ bufferReadyCallback
]

{ #category : #accessing }
QSAdaptiveTimeBufferedResult >> bufferReadyCallback: anObject [

	bufferReadyCallback := anObject
]

{ #category : #initialization }
QSAdaptiveTimeBufferedResult >> initialize [

	bufferReadyCallback := [ :o |  ]
]

{ #category : #navigating }
QSAdaptiveTimeBufferedResult >> resolve [

	"This will call the buffer callback every x milliseconds or when the buffer reaches its full capacity"

	| currentBuffer shouldEmitBuffer iterationCounter minTime maxTime  timeFormulaIterationsMin timeFormulaIterationMax |
	minTime := 250.
	maxTime := 1500.
	timeFormulaIterationsMin := 1000.
	timeFormulaIterationMax := 150000.
	shouldEmitBuffer := false.
	currentBuffer := OrderedCollection new: 1000.
	iterationCounter := 0.
	query
		do: [ :each | 
			iterationCounter := iterationCounter + 1.
			currentBuffer add: each.
			shouldEmitBuffer ifTrue: [ 
				bufferReadyCallback value: currentBuffer copy.
				currentBuffer := currentBuffer removeAll ].
			shouldEmitBuffer := false ]
		withTimedCallback: [ shouldEmitBuffer := true ]
		every: [ 
			| normalized |
			normalized := SeekerMath clampedInverseLerp: iterationCounter  a: timeFormulaIterationsMin b:timeFormulaIterationMax .
		SeekerMath clampedLerp: normalized a: minTime b: maxTime  ].
	currentBuffer ifNotEmpty: [ bufferReadyCallback value: currentBuffer ]
]