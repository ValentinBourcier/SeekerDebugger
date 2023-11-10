Class {
	#name : #SkProjectionReadingsAndWritingsToVariables,
	#superclass : #SeekerProjectionFunction,
	#category : #'Seeker-TimeTravelingQueries'
}

{ #category : #accessing }
SkProjectionReadingsAndWritingsToVariables >> value: aProgramState [

	^ [
	  aProgramState isAssignment
		  ifTrue: [ self valueWriting: aProgramState ]
		  ifFalse: [ self valueReading: aProgramState ] ] onErrorDo: [ :e |
		  AutoTypeErrorObject new: e ]
]

{ #category : #'as yet unclassified' }
SkProjectionReadingsAndWritingsToVariables >> valueImplicitReading: state [

	autoType
		variableClass: state implicitReadInstanceVariable owningClass;
		variableName: state nameOfImplicitReadInstanceVariable;
		"value: state valueOfImplicitReadInstanceVariable;
		source: state node sourceCode;"
		isImplicitRead: true
]

{ #category : #'as yet unclassified' }
SkProjectionReadingsAndWritingsToVariables >> valueReading: state [

	autoType newWith
		"methodSelector: 'NAW';
		receiverClass: 'NAW';
		receiverClassAndPackage: 'NAW';"
		bytecodeIndex: state bytecodeIndex.
		"node: 'NAW';
		receiverAlias: 'NAW';
		variableNode: 'NAW';
		valueChangedFrom: 'NAW';
		valueChangedTo: 'NAW';
		receiverPackage: 'NAW'."

	state isImplicitReadingOfInstanceVariable "forceTrueOrFalse"
		ifTrue: [ self valueImplicitReading: state ]
		ifFalse: [
			autoType
				variableName: state node variable name;
				variableClass: state node variable class;
				"value: state variableValue;
				source: state node parent sourceCode;"
				isImplicitRead: false
				"inNode: state node parent "].

	^ autoType endWith
]

{ #category : #'as yet unclassified' }
SkProjectionReadingsAndWritingsToVariables >> valueWriting: state [

	^ autoType newWith
		  "methodSelector: state methodSelector;
		  receiverClass: state receiverClass;
		  receiverClassAndPackage:
			  state receiverClass name , ' [' , state receiverPackage name
			  , ']';"
		  bytecodeIndex: state bytecodeIndex;
		  "node: state node;
		  receiverAlias: state receiverAlias;
		  variableNode: state node variable;"
		  variableName: state node variable variable name;
		  "valueChangedFrom:
			  (state node variable variable readInContext: state context);
		  valueChangedTo: state assignmentNextValue;
		  receiverPackage: state receiverPackage;"
		  variableClass: state node variable variable class;
		  "value: 'NAR';
		  source: 'NAR';"
		  isImplicitRead: false;
		  "inNode: 'NAR';"
		  endWith
]
