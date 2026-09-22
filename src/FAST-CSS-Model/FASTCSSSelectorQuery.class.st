"
## Relations
======================

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `childrenNode` | `FASTCSSSelectorQuery` | `selectorQueryOwner` | `FASTCSSEntity` | |



"
Class {
	#name : 'FASTCSSSelectorQuery',
	#superclass : 'FASTCSSEntity',
	#instVars : [
		'#childrenNode => FMOne type: #FASTCSSEntity opposite: #selectorQueryOwner'
	],
	#category : 'FAST-CSS-Model-Entities',
	#package : 'FAST-CSS-Model',
	#tag : 'Entities'
}

{ #category : 'meta' }
FASTCSSSelectorQuery class >> annotation [

	<ignoreForCoverage>
	<FMClass: #SelectorQuery super: #FASTCSSEntity>
	<package: #'FAST-CSS-Model'>
	<generated>
]

{ #category : 'accessing' }
FASTCSSSelectorQuery >> childrenNode [
	"Relation named: #childrenNode type: #FASTCSSEntity opposite: #selectorQueryOwner"

	<ignoreForCoverage>
	<generated>
	^ childrenNode
]

{ #category : 'accessing' }
FASTCSSSelectorQuery >> childrenNode: anObject [

	<ignoreForCoverage>
	<generated>
	childrenNode := anObject
]
