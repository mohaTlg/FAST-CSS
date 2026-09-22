"
## Relations
======================

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `childrenNode` | `FASTCSSIntegerValue` | `integerValueOwner` | `FASTCSSEntity` | |



"
Class {
	#name : 'FASTCSSIntegerValue',
	#superclass : 'FASTCSSEntity',
	#instVars : [
		'#childrenNode => FMOne type: #FASTCSSEntity opposite: #integerValueOwner'
	],
	#category : 'FAST-CSS-Model-Entities',
	#package : 'FAST-CSS-Model',
	#tag : 'Entities'
}

{ #category : 'meta' }
FASTCSSIntegerValue class >> annotation [

	<ignoreForCoverage>
	<FMClass: #IntegerValue super: #FASTCSSEntity>
	<package: #'FAST-CSS-Model'>
	<generated>
]

{ #category : 'accessing' }
FASTCSSIntegerValue >> childrenNode [
	"Relation named: #childrenNode type: #FASTCSSEntity opposite: #integerValueOwner"

	<ignoreForCoverage>
	<generated>
	^ childrenNode
]

{ #category : 'accessing' }
FASTCSSIntegerValue >> childrenNode: anObject [

	<ignoreForCoverage>
	<generated>
	childrenNode := anObject
]
