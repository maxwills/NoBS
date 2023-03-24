Class {
	#name : #BaselineOfNoBS,
	#superclass : #BaselineOf,
	#category : #BaselineOfNoBS
}

{ #category : #baselines }
BaselineOfNoBS >> baseline: spec [

	<baseline>
	spec for: #common do: [ spec package: 'NoBS'.
		spec postLoadDoIt: #'postload:package:'. ]
]

{ #category : #baselines }
BaselineOfNoBS >> postload: loader package: packageSpec [

	(self class environment at: #NoBS) fixBS
]
