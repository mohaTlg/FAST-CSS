"
## Relations
======================

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `childrenNode` | `FASTCSSParenthesizedQuery` | `parenthesizedQueryOwner` | `FASTCSSEntity` | |



"
Class {
	#name : 'FASTCSSParenthesizedQuery',
	#superclass : 'FASTCSSEntity',
	#instVars : [
		'#childrenNode => FMOne type: #FASTCSSEntity opposite: #parenthesizedQueryOwner'
	],
	#category : 'FAST-CSS-Model-Entities',
	#package : 'FAST-CSS-Model',
	#tag : 'Entities'
}

{ #category : 'meta' }
FASTCSSParenthesizedQuery class >> annotation [

	<ignoreForCoverage>
	<FMClass: #ParenthesizedQuery super: #FASTCSSEntity>
	<package: #'FAST-CSS-Model'>
	<generated>
]

{ #category : 'accessing' }
FASTCSSParenthesizedQuery >> childrenNode [
	"Relation named: #childrenNode type: #FASTCSSEntity opposite: #parenthesizedQueryOwner"

	<ignoreForCoverage>
	<generated>
	^ childrenNode
]

{ #category : 'accessing' }
FASTCSSParenthesizedQuery >> childrenNode: anObject [

	<ignoreForCoverage>
	<generated>
	childrenNode := anObject
]
