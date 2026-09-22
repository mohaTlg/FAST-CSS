"
## Relations
======================

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `childrenNodes` | `FASTCSSPostcssStatement` | `postcssStatementOwner` | `FASTCSSEntity` | |



"
Class {
	#name : 'FASTCSSPostcssStatement',
	#superclass : 'FASTCSSEntity',
	#instVars : [
		'#childrenNodes => FMMany type: #FASTCSSEntity opposite: #postcssStatementOwner'
	],
	#category : 'FAST-CSS-Model-Entities',
	#package : 'FAST-CSS-Model',
	#tag : 'Entities'
}

{ #category : 'meta' }
FASTCSSPostcssStatement class >> annotation [

	<ignoreForCoverage>
	<FMClass: #PostcssStatement super: #FASTCSSEntity>
	<package: #'FAST-CSS-Model'>
	<generated>
]

{ #category : 'adding' }
FASTCSSPostcssStatement >> addChildrenNode: anObject [

	<ignoreForCoverage>
	<generated>
	^ self childrenNodes add: anObject
]

{ #category : 'accessing' }
FASTCSSPostcssStatement >> childrenNodes [
	"Relation named: #childrenNodes type: #FASTCSSEntity opposite: #postcssStatementOwner"

	<ignoreForCoverage>
	<generated>
	<derived>
	^ childrenNodes
]

{ #category : 'accessing' }
FASTCSSPostcssStatement >> childrenNodes: anObject [

	<ignoreForCoverage>
	<generated>
	childrenNodes value: anObject
]
