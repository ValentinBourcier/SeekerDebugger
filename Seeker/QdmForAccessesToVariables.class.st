Class {
	#name : #QdmForAccessesToVariables,
	#superclass : #QueryDisplayModel,
	#category : #'Seeker-UI'
}

{ #category : #'as yet unclassified' }
QdmForAccessesToVariables >> buildContextMenuForResults: aQueryResutls withSelectedItem: selection forTracer: tracer [

	"builds a context menu for an item of this display model"

	^ SpMenuPresenter new
		  addItem: [ :item | 
			  item
				  name: 'Inspect the variable value';
				  action: [ selection value inspect ] ];
		  addItem: [ :item | 
			  item
				  name: 'Time-Travel to its instantiation message';
				  action: [ 
					  tracer timeTravelToBytecodeIndex: selection bytecodeIndex ] ];
		  addItem: [ :item | 
			  item
				  name: 'Inspect the query result item';
				  action: [ selection inspect ] ];
		  addItem: [ :item | 
			  item
				  name: 'Inspect the query result collection';
				  action: [ aQueryResutls inspect ] ];yourself
]

{ #category : #'as yet unclassified' }
QdmForAccessesToVariables >> defaultQueryTitle [

	^ 'Accesses to variable query'
]

{ #category : #initialization }
QdmForAccessesToVariables >> initializeModel [

	(self addColumn: #bytecodeIndex)
		label: 'Step';
		bc.
	(self addColumn: #variableClass)
		label: 'Variable class';
		sm.
	(self addColumn: #variableName)
		label: 'Variable';
		sm.
	(self addColumn: #variableName)
		label: 'Value';
		md.
	(self addColumn: #source)
		label: 'Source code';
		lg.
	(self addColumn: #isImplicitRead)
		label: 'Implicit access?';
		sm.
	(self addColumn: #inNode)
		label: 'Node';
		lg
]
