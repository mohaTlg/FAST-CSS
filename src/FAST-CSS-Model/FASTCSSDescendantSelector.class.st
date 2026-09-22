"
## Relations
======================

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `childrenNodes` | `FASTCSSDescendantSelector` | `descendantSelectorOwner` | `FASTCSSEntity` | |



"
Class {
	#name : 'FASTCSSDescendantSelector',
	#superclass : 'FASTCSSEntity',
	#instVars : [
		'#childrenNodes => FMMany type: #FASTCSSEntity opposite: #descendantSelectorOwner'
	],
	#category : 'FAST-CSS-Model-Entities',
	#package : 'FAST-CSS-Model',
	#tag : 'Entities'
}

{ #category : 'meta' }
FASTCSSDescendantSelector class >> annotation [

	<ignoreForCoverage>
	<FMClass: #DescendantSelector super: #FASTCSSEntity>
	<package: #'FAST-CSS-Model'>
	<generated>
]

{ #category : 'adding' }
FASTCSSDescendantSelector >> addChildrenNode: anObject [

	<ignoreForCoverage>
	<generated>
	^ self childrenNodes add: anObject
]

{ #category : 'accessing' }
FASTCSSDescendantSelector >> childrenNodes [
	"Relation named: #childrenNodes type: #FASTCSSEntity opposite: #descendantSelectorOwner"

	<ignoreForCoverage>
	<generated>
	<derived>
	^ childrenNodes
]

{ #category : 'accessing' }
FASTCSSDescendantSelector >> childrenNodes: anObject [

	<ignoreForCoverage>
	<generated>
	childrenNodes value: anObject
]
