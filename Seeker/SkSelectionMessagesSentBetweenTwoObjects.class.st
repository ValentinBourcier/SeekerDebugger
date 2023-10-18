Class {
	#name : #SkSelectionMessagesSentBetweenTwoObjects,
	#superclass : #SkSelectionMessageSends,
	#instVars : [
		'firstObjectOid',
		'secondObjectOid'
	],
	#category : #'Seeker-TimeTravelingQueries'
}

{ #category : #accessing }
SkSelectionMessagesSentBetweenTwoObjects >> firstObjectOid [

	^ firstObjectOid
]

{ #category : #accessing }
SkSelectionMessagesSentBetweenTwoObjects >> firstObjectOid: anObjectOid [

	firstObjectOid := anObjectOid
]

{ #category : #accessing }
SkSelectionMessagesSentBetweenTwoObjects >> secondObjectOid [

	^ secondObjectOid
]

{ #category : #accessing }
SkSelectionMessagesSentBetweenTwoObjects >> secondObjectOid: anObjectOid [

	secondObjectOid := anObjectOid
]

{ #category : #accessing }
SkSelectionMessagesSentBetweenTwoObjects >> value: programState [

	programState isMessageSend ifFalse: [ ^ false ].
	^ programState receiverOid ~~ programState messageReceiverOid and: [ 
		  { 
			  firstObjectOid.
			  secondObjectOid } includesAll: { 
				  programState receiverOid.
				  programState messageReceiverOid } ]
]
