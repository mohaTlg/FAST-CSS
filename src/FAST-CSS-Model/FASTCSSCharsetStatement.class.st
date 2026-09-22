"
## Relations
======================

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `childrenNode` | `FASTCSSCharsetStatement` | `charsetStatementOwner` | `FASTCSSEntity` | |



"
Class {
	#name : 'FASTCSSCharsetStatement',
	#superclass : 'FASTCSSEntity',
	#instVars : [
		'#childrenNode => FMOne type: #FASTCSSEntity opposite: #charsetStatementOwner'
	],
	#category : 'FAST-CSS-Model-Entities',
	#package : 'FAST-CSS-Model',
	#tag : 'Entities'
}

{ #category : 'meta' }
FASTCSSCharsetStatement class >> annotation [

	<ignoreForCoverage>
	<FMClass: #CharsetStatement super: #FASTCSSEntity>
	<package: #'FAST-CSS-Model'>
	<generated>
]

{ #category : 'accessing' }
FASTCSSCharsetStatement >> childrenNode [
	"Relation named: #childrenNode type: #FASTCSSEntity opposite: #charsetStatementOwner"

	<ignoreForCoverage>
	<generated>
	^ childrenNode
]

{ #category : 'accessing' }
FASTCSSCharsetStatement >> childrenNode: anObject [

	<ignoreForCoverage>
	<generated>
	childrenNode := anObject
]
