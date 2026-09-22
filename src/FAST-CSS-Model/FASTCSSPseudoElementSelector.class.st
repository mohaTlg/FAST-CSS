"
## Relations
======================

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `childrenNodes` | `FASTCSSPseudoElementSelector` | `pseudoElementSelectorOwner` | `FASTCSSEntity` | |



"
Class {
	#name : 'FASTCSSPseudoElementSelector',
	#superclass : 'FASTCSSEntity',
	#instVars : [
		'#childrenNodes => FMMany type: #FASTCSSEntity opposite: #pseudoElementSelectorOwner'
	],
	#category : 'FAST-CSS-Model-Entities',
	#package : 'FAST-CSS-Model',
	#tag : 'Entities'
}

{ #category : 'meta' }
FASTCSSPseudoElementSelector class >> annotation [

	<ignoreForCoverage>
	<FMClass: #PseudoElementSelector super: #FASTCSSEntity>
	<package: #'FAST-CSS-Model'>
	<generated>
]

{ #category : 'adding' }
FASTCSSPseudoElementSelector >> addChildrenNode: anObject [

	<ignoreForCoverage>
	<generated>
	^ self childrenNodes add: anObject
]

{ #category : 'accessing' }
FASTCSSPseudoElementSelector >> childrenNodes [
	"Relation named: #childrenNodes type: #FASTCSSEntity opposite: #pseudoElementSelectorOwner"

	<ignoreForCoverage>
	<generated>
	<derived>
	^ childrenNodes
]

{ #category : 'accessing' }
FASTCSSPseudoElementSelector >> childrenNodes: anObject [

	<ignoreForCoverage>
	<generated>
	childrenNodes value: anObject
]
