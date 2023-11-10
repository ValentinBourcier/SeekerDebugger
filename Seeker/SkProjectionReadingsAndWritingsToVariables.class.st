Class {
	#name : #SkProjectionReadingsAndWritingsToVariables,
	#superclass : #SeekerProjectionFunction,
	#category : #'Seeker-TimeTravelingQueries'
}

{ #category : #accessing }
SkProjectionReadingsAndWritingsToVariables >> value: aProgramState [

	aProgramState isAssignment ifTrue: [
		^ self valueForAssignment: aProgramState ].
	^ self valueForAccess: aProgramState
]

{ #category : #'as yet unclassified' }
SkProjectionReadingsAndWritingsToVariables >> valueForAccess: aState [

	aState isImplicitReadingOfInstanceVariable forceTrueOrFalse ifTrue: [
		^ self valueForImplicitAccess: aState ].

	^ autoType newWith
		  bytecodeIndex: aState bytecodeIndex;
		  variableClassName: aState node variable class name;
		  variableName: aState node variable name;
		  variableValue: aState variableValue;
		  sourceCode: aState node parent sourceCode;
		  isRead: true;
		  isImplicitRead: false;
		  inNode: aState node parent;
		  endWith
]

{ #category : #'as yet unclassified' }
SkProjectionReadingsAndWritingsToVariables >> valueForAssignment: aState [

	^ autoType newWith
		  bytecodeIndex: aState bytecodeIndex;
		  variableClassName: aState node variable variable class name;
		  variableName: aState node variable variable name;
		  variableValue: aState assignmentNextValue;
		  sourceCode: 'none';
		  isRead: false;
		  isImplicitRead: false;
		  inNode: aState node;
		  endWith
]

{ #category : #'as yet unclassified' }
SkProjectionReadingsAndWritingsToVariables >> valueForImplicitAccess: aState [

	^ autoType newWith
		  bytecodeIndex: aState bytecodeIndex;
		  variableClassName: aState implicitReadInstanceVariable class name;
		  variableName: aState nameOfImplicitReadInstanceVariable;
		  variableValue: aState valueOfImplicitReadInstanceVariable;
		  sourceCode: aState node sourceCode;
		  isRead: true;
		  isImplicitRead: true;
		  inNode: aState node;
		  endWith
]
