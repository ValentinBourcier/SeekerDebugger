Class {
	#name : #SkSelectionReadingsAndWritingsToVariables,
	#superclass : #SeekerSelectionFunction,
	#instVars : [
		'readingSelection',
		'writingSelection'
	],
	#category : #'Seeker-TimeTravelingQueries'
}

{ #category : #initialization }
SkSelectionReadingsAndWritingsToVariables >> initialize [

	readingSelection := SkSelectionAccessesToVariables new.
	writingSelection := SkSelectionAssignments new
]

{ #category : #accessing }
SkSelectionReadingsAndWritingsToVariables >> value: aProgramState [

	^ (readingSelection value: aProgramState) or: [
		  writingSelection value: aProgramState ]
]
