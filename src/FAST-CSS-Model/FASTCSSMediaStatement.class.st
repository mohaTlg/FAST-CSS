"
## Relations
======================

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `childrenNodes` | `FASTCSSMediaStatement` | `mediaStatementOwner` | `FASTCSSEntity` | |



"
Class {
	#name : 'FASTCSSMediaStatement',
	#superclass : 'FASTCSSEntity',
	#instVars : [
		'#childrenNodes => FMMany type: #FASTCSSEntity opposite: #mediaStatementOwner'
	],
	#category : 'FAST-CSS-Model-Entities',
	#package : 'FAST-CSS-Model',
	#tag : 'Entities'
}

{ #category : 'meta' }
FASTCSSMediaStatement class >> annotation [

	<ignoreForCoverage>
	<FMClass: #MediaStatement super: #FASTCSSEntity>
	<package: #'FAST-CSS-Model'>
	<generated>
]

{ #category : 'adding' }
FASTCSSMediaStatement >> addChildrenNode: anObject [

	<ignoreForCoverage>
	<generated>
	^ self childrenNodes add: anObject
]

{ #category : 'accessing' }
FASTCSSMediaStatement >> childrenNodes [
	"Relation named: #childrenNodes type: #FASTCSSEntity opposite: #mediaStatementOwner"

	<ignoreForCoverage>
	<generated>
	<derived>
	^ childrenNodes
]

{ #category : 'accessing' }
FASTCSSMediaStatement >> childrenNodes: anObject [

	<ignoreForCoverage>
	<generated>
	childrenNodes value: anObject
]
