"
## Relations
======================

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `childrenNodes` | `FASTCSSIdSelector` | `idSelectorOwner` | `FASTCSSEntity` | |



"
Class {
	#name : 'FASTCSSIdSelector',
	#superclass : 'FASTCSSEntity',
	#instVars : [
		'#childrenNodes => FMMany type: #FASTCSSEntity opposite: #idSelectorOwner'
	],
	#category : 'FAST-CSS-Model-Entities',
	#package : 'FAST-CSS-Model',
	#tag : 'Entities'
}

{ #category : 'meta' }
FASTCSSIdSelector class >> annotation [

	<ignoreForCoverage>
	<FMClass: #IdSelector super: #FASTCSSEntity>
	<package: #'FAST-CSS-Model'>
	<generated>
]

{ #category : 'adding' }
FASTCSSIdSelector >> addChildrenNode: anObject [

	<ignoreForCoverage>
	<generated>
	^ self childrenNodes add: anObject
]

{ #category : 'accessing' }
FASTCSSIdSelector >> childrenNodes [
	"Relation named: #childrenNodes type: #FASTCSSEntity opposite: #idSelectorOwner"

	<ignoreForCoverage>
	<generated>
	<derived>
	^ childrenNodes
]

{ #category : 'accessing' }
FASTCSSIdSelector >> childrenNodes: anObject [

	<ignoreForCoverage>
	<generated>
	childrenNodes value: anObject
]
