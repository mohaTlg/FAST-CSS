"
## Relations
======================

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `childrenNode` | `FASTCSSParenthesizedValue` | `parenthesizedValueOwner` | `FASTCSSEntity` | |



"
Class {
	#name : 'FASTCSSParenthesizedValue',
	#superclass : 'FASTCSSEntity',
	#instVars : [
		'#childrenNode => FMOne type: #FASTCSSEntity opposite: #parenthesizedValueOwner'
	],
	#category : 'FAST-CSS-Model-Entities',
	#package : 'FAST-CSS-Model',
	#tag : 'Entities'
}

{ #category : 'meta' }
FASTCSSParenthesizedValue class >> annotation [

	<ignoreForCoverage>
	<FMClass: #ParenthesizedValue super: #FASTCSSEntity>
	<package: #'FAST-CSS-Model'>
	<generated>
]

{ #category : 'accessing' }
FASTCSSParenthesizedValue >> childrenNode [
	"Relation named: #childrenNode type: #FASTCSSEntity opposite: #parenthesizedValueOwner"

	<ignoreForCoverage>
	<generated>
	^ childrenNode
]

{ #category : 'accessing' }
FASTCSSParenthesizedValue >> childrenNode: anObject [

	<ignoreForCoverage>
	<generated>
	childrenNode := anObject
]
