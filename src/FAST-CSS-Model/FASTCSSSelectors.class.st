"
## Relations
======================

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `childrenNodes` | `FASTCSSSelectors` | `selectorsOwner` | `FASTCSSEntity` | |



"
Class {
	#name : 'FASTCSSSelectors',
	#superclass : 'FASTCSSEntity',
	#instVars : [
		'#childrenNodes => FMMany type: #FASTCSSEntity opposite: #selectorsOwner'
	],
	#category : 'FAST-CSS-Model-Entities',
	#package : 'FAST-CSS-Model',
	#tag : 'Entities'
}

{ #category : 'meta' }
FASTCSSSelectors class >> annotation [

	<ignoreForCoverage>
	<FMClass: #Selectors super: #FASTCSSEntity>
	<package: #'FAST-CSS-Model'>
	<generated>
]

{ #category : 'adding' }
FASTCSSSelectors >> addChildrenNode: anObject [

	<ignoreForCoverage>
	<generated>
	^ self childrenNodes add: anObject
]

{ #category : 'accessing' }
FASTCSSSelectors >> childrenNodes [
	"Relation named: #childrenNodes type: #FASTCSSEntity opposite: #selectorsOwner"

	<ignoreForCoverage>
	<generated>
	<derived>
	^ childrenNodes
]

{ #category : 'accessing' }
FASTCSSSelectors >> childrenNodes: anObject [

	<ignoreForCoverage>
	<generated>
	childrenNodes value: anObject
]
