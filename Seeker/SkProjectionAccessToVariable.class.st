Class {
	#name : #SkProjectionAccessToVariable,
	#superclass : #SeekerProjectionFunction,
	#category : #'Seeker-TimeTravelingQueries'
}

{ #category : #accessing }
SkProjectionAccessToVariable >> value: state [

	state isImplicitReadingOfInstanceVariable forceTrueOrFalse ifTrue: [ 
		^ SkProjectionImplicitAccessToInstanceVariable new value: state ].

	^ autoType newWith
		  bytecodeIndex: state bytecodeIndex;
		  variableClass: state node variable class;
		  variableName: state node variable name;
		  value: state variableValue;
		  source: state node parent sourceCode;
		  isImplicitRead: false;
		  inNode: state node parent;
		  endWith
]
