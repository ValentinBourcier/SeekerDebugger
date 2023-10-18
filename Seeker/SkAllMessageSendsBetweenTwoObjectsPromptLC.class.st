Class {
	#name : #SkAllMessageSendsBetweenTwoObjectsPromptLC,
	#superclass : #SeekerLiteCommand,
	#category : #'Seeker-Commands'
}

{ #category : #accessing }
SkAllMessageSendsBetweenTwoObjectsPromptLC >> description [

	^ self commonDescriptionIntroString
	  , 'for every message sent between the selected object and another object specified by its OID'
]

{ #category : #executing }
SkAllMessageSendsBetweenTwoObjectsPromptLC >> executeCommand [

	| firstOid secondOid|
	firstOid := self getSelectedObjectOid.
	secondOid := SkInteractivelyQueryFromHelper requestOID.
	self showResultFor: (TTQAllMessagesSentBetweenTwoObjects
			 queryFrom: self tracer newProgramStates
			 withFirstObjectOid: firstOid
			 withSecondObjectOid: secondOid)
]

{ #category : #accessing }
SkAllMessageSendsBetweenTwoObjectsPromptLC >> icon [

"Inspect the following line and choose an icon for the command

(Smalltalk ui icons)
history
objects
smallLoadProject
smallPushpin
"
"#glamorousSaveToUrl"
	^ #smallExport
]

{ #category : #accessing }
SkAllMessageSendsBetweenTwoObjectsPromptLC >> name [

	^ 'All messages sent between two chosen objects'
]
