Class {
	#name : #SkSelectionMessagesSentWithObjectInArguments,
	#superclass : #SkSelectionMessageSends,
	#instVars : [
		'objectOid'
	],
	#category : #'Seeker-TimeTravelingQueries'
}

{ #category : #accessing }
SkSelectionMessagesSentWithObjectInArguments >> objectOid [

	^objectOid
]

{ #category : #accessing }
SkSelectionMessagesSentWithObjectInArguments >> objectOid: anObjectOid [

	objectOid := anObjectOid
]

{ #category : #accessing }
SkSelectionMessagesSentWithObjectInArguments >> value: programState [

	programState isMessageSend ifFalse: [ ^ false ].
	^ (programState messageArguments collect: [ :a | programState aliasOfObject: a ]) 
		  includes: objectOid
]
