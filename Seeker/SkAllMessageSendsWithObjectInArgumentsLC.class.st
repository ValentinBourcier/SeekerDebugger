Class {
	#name : #SkAllMessageSendsWithObjectInArgumentsLC,
	#superclass : #SeekerLiteCommand,
	#category : #'Seeker-Commands'
}

{ #category : #accessing }
SkAllMessageSendsWithObjectInArgumentsLC >> description [

	^ self commonDescriptionIntroString
	  ,
	  'for every message passing the selected object in arguments'
]

{ #category : #executing }
SkAllMessageSendsWithObjectInArgumentsLC >> executeCommand [

	| oid |
	oid := self getSelectedObjectOid.

	self showResultFor: (TTQAllMessagesSentWithObjectInArguments
			 queryFrom: self tracer newProgramStates
			 withObjectOid: oid)
]

{ #category : #accessing }
SkAllMessageSendsWithObjectInArgumentsLC >> icon [

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
SkAllMessageSendsWithObjectInArgumentsLC >> name [

	^ 'All messages sent with the selected object in argument'
]
