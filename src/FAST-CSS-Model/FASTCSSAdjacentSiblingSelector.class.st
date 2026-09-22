"
## Relations
======================

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `childrenNodes` | `FASTCSSAdjacentSiblingSelector` | `adjacentSiblingSelectorOwner` | `FASTCSSEntity` | |



"
Class {
	#name : 'FASTCSSAdjacentSiblingSelector',
	#superclass : 'FASTCSSEntity',
	#instVars : [
		'#childrenNodes => FMMany type: #FASTCSSEntity opposite: #adjacentSiblingSelectorOwner'
	],
	#category : 'FAST-CSS-Model-Entities',
	#package : 'FAST-CSS-Model',
	#tag : 'Entities'
}

{ #category : 'meta' }
FASTCSSAdjacentSiblingSelector class >> annotation [

	<ignoreForCoverage>
	<FMClass: #AdjacentSiblingSelector super: #FASTCSSEntity>
	<package: #'FAST-CSS-Model'>
	<generated>
]

{ #category : 'adding' }
FASTCSSAdjacentSiblingSelector >> addChildrenNode: anObject [

	<ignoreForCoverage>
	<generated>
	^ self childrenNodes add: anObject
]

{ #category : 'accessing' }
FASTCSSAdjacentSiblingSelector >> childrenNodes [
	"Relation named: #childrenNodes type: #FASTCSSEntity opposite: #adjacentSiblingSelectorOwner"

	<ignoreForCoverage>
	<generated>
	<derived>
	^ childrenNodes
]

{ #category : 'accessing' }
FASTCSSAdjacentSiblingSelector >> childrenNodes: anObject [

	<ignoreForCoverage>
	<generated>
	childrenNodes value: anObject
]
