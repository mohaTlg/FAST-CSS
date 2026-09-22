"
## Relations
======================

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `childrenNode` | `FASTCSSUnaryQuery` | `unaryQueryOwner` | `FASTCSSEntity` | |



"
Class {
	#name : 'FASTCSSUnaryQuery',
	#superclass : 'FASTCSSEntity',
	#instVars : [
		'#childrenNode => FMOne type: #FASTCSSEntity opposite: #unaryQueryOwner'
	],
	#category : 'FAST-CSS-Model-Entities',
	#package : 'FAST-CSS-Model',
	#tag : 'Entities'
}

{ #category : 'meta' }
FASTCSSUnaryQuery class >> annotation [

	<ignoreForCoverage>
	<FMClass: #UnaryQuery super: #FASTCSSEntity>
	<package: #'FAST-CSS-Model'>
	<generated>
]

{ #category : 'accessing' }
FASTCSSUnaryQuery >> childrenNode [
	"Relation named: #childrenNode type: #FASTCSSEntity opposite: #unaryQueryOwner"

	<ignoreForCoverage>
	<generated>
	^ childrenNode
]

{ #category : 'accessing' }
FASTCSSUnaryQuery >> childrenNode: anObject [

	<ignoreForCoverage>
	<generated>
	childrenNode := anObject
]
