Class {
	#name : #QdmForReadingsAndWritings,
	#superclass : #QueryDisplayModel,
	#category : #'Seeker-UI'
}

{ #category : #'as yet unclassified' }
QdmForReadingsAndWritings >> buildContextMenuForResults: aQueryResutls withSelectedItem: selection forTracer: tracer [
	"builds a context menu for an item of this display model"

	^ SpMenuPresenter new
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
				  action: [ aQueryResutls inspect ] ];
		  yourself
]

{ #category : #'as yet unclassified' }
QdmForReadingsAndWritings >> defaultQueryTitle [ 

	^ 'All readings and writings Query'
]

{ #category : #initialization }
QdmForReadingsAndWritings >> initializeModel [

	(self addColumn: #bytecodeIndex)
		label: 'Step';
		bc.
	(self addColumn: #variableClass)
		label: 'Variable class';
		sm.
	(self addColumn: #variableName)
		label: 'Variable';
		sm.
	"(self addColumn: #value)
		label: 'Value';
		md.
	(self addColumn: #source)
		label: 'Source code';
		lg."
	(self addColumn: #isImplicitRead)
		label: 'Implicit access?';
		sm.
	"(self addColumn: #inNode)
		label: 'Node';
		lg.

	(self addColumn: #valueChangedFrom)
		label: 'Current Value';
		sm.

	(self addColumn: #valueChangedTo)
		label: 'To be Assigned';
		sm.
	(self addColumn: #receiverClassAndPackage)
		label: 'Method Class [Package]';
		md.

	(self addColumn: #methodSelector)
		label: 'Method Selector';
		sm"
]
