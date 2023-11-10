Class {
	#name : #SkProjectionImplicitAccessToInstanceVariable,
	#superclass : #SeekerProjectionFunction,
	#category : #'Seeker-TimeTravelingQueries'
}

{ #category : #accessing }
SkProjectionImplicitAccessToInstanceVariable >> value: state [

	^ autoType newWith
		  bytecodeIndex: state bytecodeIndex;
		  variableClassName: state implicitReadInstanceVariable class name;
		  variableName: state nameOfImplicitReadInstanceVariable;
		  value: state valueOfImplicitReadInstanceVariable;
		  source: state node sourceCode;
		  isImplicitRead: true;
		  inNode: state node;
		  endWith
]
