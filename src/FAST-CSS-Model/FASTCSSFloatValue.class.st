"
## Relations
======================

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `childrenNode` | `FASTCSSFloatValue` | `floatValueOwner` | `FASTCSSEntity` | |



"
Class {
	#name : 'FASTCSSFloatValue',
	#superclass : 'FASTCSSEntity',
	#instVars : [
		'#childrenNode => FMOne type: #FASTCSSEntity opposite: #floatValueOwner'
	],
	#category : 'FAST-CSS-Model-Entities',
	#package : 'FAST-CSS-Model',
	#tag : 'Entities'
}

{ #category : 'meta' }
FASTCSSFloatValue class >> annotation [

	<ignoreForCoverage>
	<FMClass: #FloatValue super: #FASTCSSEntity>
	<package: #'FAST-CSS-Model'>
	<generated>
]

{ #category : 'accessing' }
FASTCSSFloatValue >> childrenNode [
	"Relation named: #childrenNode type: #FASTCSSEntity opposite: #floatValueOwner"

	<ignoreForCoverage>
	<generated>
	^ childrenNode
]

{ #category : 'accessing' }
FASTCSSFloatValue >> childrenNode: anObject [

	<ignoreForCoverage>
	<generated>
	childrenNode := anObject
]
