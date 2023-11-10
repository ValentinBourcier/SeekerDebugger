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
		  variableClassName: state node variable class name;
		  variableName: state node variable name;
		  variableValue: state variableValue;
		  sourceCode: state node parent sourceCode;
		  isImplicitRead: false;
		  inNode: state node parent;
		  endWith
]
