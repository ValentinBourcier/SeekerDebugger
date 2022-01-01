Class {
	#name : #SeekerConfig,
	#superclass : #Object,
	#instVars : [
		'enableMouseButtonEventDebug',
		'handleMouseUpEvent',
		'handleMouseDownEvent'
	],
	#classVars : [
		'defaultInstance'
	],
	#category : #'Seeker-Helpers'
}

{ #category : #accessing }
SeekerConfig class >> default [

	^ defaultInstance
]

{ #category : #initialization }
SeekerConfig class >> initialize [

	defaultInstance := self new
]

{ #category : #accessing }
SeekerConfig >> enableMouseButtonEventDebug [

	^ enableMouseButtonEventDebug
]

{ #category : #accessing }
SeekerConfig >> enableMouseButtonEventDebug: anObject [

	enableMouseButtonEventDebug := anObject
]

{ #category : #accessing }
SeekerConfig >> handleMouseDownEvent [

	^ handleMouseDownEvent
]

{ #category : #accessing }
SeekerConfig >> handleMouseDownEvent: anObject [

	handleMouseDownEvent := anObject
]

{ #category : #accessing }
SeekerConfig >> handleMouseUpEvent [

	^ handleMouseUpEvent
]

{ #category : #accessing }
SeekerConfig >> handleMouseUpEvent: anObject [

	handleMouseUpEvent := anObject
]

{ #category : #initialization }
SeekerConfig >> initialize [

	enableMouseButtonEventDebug := false.
	handleMouseUpEvent := false.
	handleMouseDownEvent := false
]

{ #category : #'as yet unclassified' }
SeekerConfig >> releasePinnedMenus [

	SeekerSessionHelpers releasePinnedMenus
]