"
## Relations
======================

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `childrenNodes` | `FASTCSSKeyframeBlockList` | `keyframeBlockListOwner` | `FASTCSSEntity` | |



"
Class {
	#name : 'FASTCSSKeyframeBlockList',
	#superclass : 'FASTCSSEntity',
	#instVars : [
		'#childrenNodes => FMMany type: #FASTCSSEntity opposite: #keyframeBlockListOwner'
	],
	#category : 'FAST-CSS-Model-Entities',
	#package : 'FAST-CSS-Model',
	#tag : 'Entities'
}

{ #category : 'meta' }
FASTCSSKeyframeBlockList class >> annotation [

	<ignoreForCoverage>
	<FMClass: #KeyframeBlockList super: #FASTCSSEntity>
	<package: #'FAST-CSS-Model'>
	<generated>
]

{ #category : 'adding' }
FASTCSSKeyframeBlockList >> addChildrenNode: anObject [

	<ignoreForCoverage>
	<generated>
	^ self childrenNodes add: anObject
]

{ #category : 'accessing' }
FASTCSSKeyframeBlockList >> childrenNodes [
	"Relation named: #childrenNodes type: #FASTCSSEntity opposite: #keyframeBlockListOwner"

	<ignoreForCoverage>
	<generated>
	<derived>
	^ childrenNodes
]

{ #category : 'accessing' }
FASTCSSKeyframeBlockList >> childrenNodes: anObject [

	<ignoreForCoverage>
	<generated>
	childrenNodes value: anObject
]
