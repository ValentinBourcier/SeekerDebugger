Class {
	#name : #SkProjectionImplicitAccessToInstanceVariable,
	#superclass : #SeekerProjectionFunction,
	#category : #'Seeker-TimeTravelingQueries'
}

{ #category : #accessing }
SkProjectionImplicitAccessToInstanceVariable >> value: state [

	^ autoType newWith
		  bytecodeIndex: state bytecodeIndex;
		  variableClass: state implicitReadInstanceVariable class;
		  variableName: state nameOfImplicitReadInstanceVariable;
		  value: state valueOfImplicitReadInstanceVariable;
		  source: state node sourceCode;
		  isImplicitRead: true;
		  inNode: state node;
		  endWith
]
