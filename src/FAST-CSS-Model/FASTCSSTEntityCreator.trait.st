"
This trait is used by Famix models.
It provides an API for creating entities and adding them to the model.


"
Trait {
	#name : 'FASTCSSTEntityCreator',
	#category : 'FAST-CSS-Model-Model',
	#package : 'FAST-CSS-Model',
	#tag : 'Model'
}

{ #category : 'meta' }
FASTCSSTEntityCreator classSide >> annotation [

	<ignoreForCoverage>
	<FMClass: #TEntityCreator super: #Object>
	<package: #'FAST-CSS-Model'>
	<generated>
]

{ #category : 'entity creation' }
FASTCSSTEntityCreator >> newAdjacentSiblingSelector [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTCSSAdjacentSiblingSelector new
]

{ #category : 'entity creation' }
FASTCSSTEntityCreator >> newArguments [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTCSSArguments new
]

{ #category : 'entity creation' }
FASTCSSTEntityCreator >> newAtKeyword [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTCSSAtKeyword new
]

{ #category : 'entity creation' }
FASTCSSTEntityCreator >> newAtRule [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTCSSAtRule new
]

{ #category : 'entity creation' }
FASTCSSTEntityCreator >> newAttributeName [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTCSSAttributeName new
]

{ #category : 'entity creation' }
FASTCSSTEntityCreator >> newAttributeSelector [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTCSSAttributeSelector new
]

{ #category : 'entity creation' }
FASTCSSTEntityCreator >> newBinaryExpression [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTCSSBinaryExpression new
]

{ #category : 'entity creation' }
FASTCSSTEntityCreator >> newBinaryQuery [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTCSSBinaryQuery new
]

{ #category : 'entity creation' }
FASTCSSTEntityCreator >> newBlock [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTCSSBlock new
]

{ #category : 'entity creation' }
FASTCSSTEntityCreator >> newCallExpression [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTCSSCallExpression new
]

{ #category : 'entity creation' }
FASTCSSTEntityCreator >> newCharsetStatement [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTCSSCharsetStatement new
]

{ #category : 'entity creation' }
FASTCSSTEntityCreator >> newChildSelector [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTCSSChildSelector new
]

{ #category : 'entity creation' }
FASTCSSTEntityCreator >> newClassName [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTCSSClassName new
]

{ #category : 'entity creation' }
FASTCSSTEntityCreator >> newClassSelector [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTCSSClassSelector new
]

{ #category : 'entity creation' }
FASTCSSTEntityCreator >> newColorValue [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTCSSColorValue new
]

{ #category : 'entity creation' }
FASTCSSTEntityCreator >> newComment [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTCSSComment new
]

{ #category : 'entity creation' }
FASTCSSTEntityCreator >> newDeclaration [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTCSSDeclaration new
]

{ #category : 'entity creation' }
FASTCSSTEntityCreator >> newDescendantSelector [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTCSSDescendantSelector new
]

{ #category : 'entity creation' }
FASTCSSTEntityCreator >> newERROR [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTCSSERROR new
]

{ #category : 'entity creation' }
FASTCSSTEntityCreator >> newEscapeSequence [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTCSSEscapeSequence new
]

{ #category : 'entity creation' }
FASTCSSTEntityCreator >> newFeatureName [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTCSSFeatureName new
]

{ #category : 'entity creation' }
FASTCSSTEntityCreator >> newFeatureQuery [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTCSSFeatureQuery new
]

{ #category : 'entity creation' }
FASTCSSTEntityCreator >> newFloatValue [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTCSSFloatValue new
]

{ #category : 'entity creation' }
FASTCSSTEntityCreator >> newFrom [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTCSSFrom new
]

{ #category : 'entity creation' }
FASTCSSTEntityCreator >> newFunctionName [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTCSSFunctionName new
]

{ #category : 'entity creation' }
FASTCSSTEntityCreator >> newGridValue [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTCSSGridValue new
]

{ #category : 'entity creation' }
FASTCSSTEntityCreator >> newIdName [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTCSSIdName new
]

{ #category : 'entity creation' }
FASTCSSTEntityCreator >> newIdSelector [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTCSSIdSelector new
]

{ #category : 'entity creation' }
FASTCSSTEntityCreator >> newIdentifier [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTCSSIdentifier new
]

{ #category : 'entity creation' }
FASTCSSTEntityCreator >> newImportStatement [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTCSSImportStatement new
]

{ #category : 'entity creation' }
FASTCSSTEntityCreator >> newImportant [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTCSSImportant new
]

{ #category : 'entity creation' }
FASTCSSTEntityCreator >> newImportantValue [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTCSSImportantValue new
]

{ #category : 'entity creation' }
FASTCSSTEntityCreator >> newIntegerValue [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTCSSIntegerValue new
]

{ #category : 'entity creation' }
FASTCSSTEntityCreator >> newJsComment [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTCSSJsComment new
]

{ #category : 'entity creation' }
FASTCSSTEntityCreator >> newKeyframeBlock [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTCSSKeyframeBlock new
]

{ #category : 'entity creation' }
FASTCSSTEntityCreator >> newKeyframeBlockList [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTCSSKeyframeBlockList new
]

{ #category : 'entity creation' }
FASTCSSTEntityCreator >> newKeyframesName [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTCSSKeyframesName new
]

{ #category : 'entity creation' }
FASTCSSTEntityCreator >> newKeyframesStatement [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTCSSKeyframesStatement new
]

{ #category : 'entity creation' }
FASTCSSTEntityCreator >> newKeywordQuery [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTCSSKeywordQuery new
]

{ #category : 'entity creation' }
FASTCSSTEntityCreator >> newMediaStatement [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTCSSMediaStatement new
]

{ #category : 'entity creation' }
FASTCSSTEntityCreator >> newNamespaceName [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTCSSNamespaceName new
]

{ #category : 'entity creation' }
FASTCSSTEntityCreator >> newNamespaceSelector [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTCSSNamespaceSelector new
]

{ #category : 'entity creation' }
FASTCSSTEntityCreator >> newNamespaceStatement [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTCSSNamespaceStatement new
]

{ #category : 'entity creation' }
FASTCSSTEntityCreator >> newNestingSelector [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTCSSNestingSelector new
]

{ #category : 'entity creation' }
FASTCSSTEntityCreator >> newParenthesizedQuery [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTCSSParenthesizedQuery new
]

{ #category : 'entity creation' }
FASTCSSTEntityCreator >> newParenthesizedValue [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTCSSParenthesizedValue new
]

{ #category : 'entity creation' }
FASTCSSTEntityCreator >> newPlainValue [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTCSSPlainValue new
]

{ #category : 'entity creation' }
FASTCSSTEntityCreator >> newPostcssStatement [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTCSSPostcssStatement new
]

{ #category : 'entity creation' }
FASTCSSTEntityCreator >> newPropertyName [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTCSSPropertyName new
]

{ #category : 'entity creation' }
FASTCSSTEntityCreator >> newPseudoClassSelector [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTCSSPseudoClassSelector new
]

{ #category : 'entity creation' }
FASTCSSTEntityCreator >> newPseudoElementSelector [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTCSSPseudoElementSelector new
]

{ #category : 'entity creation' }
FASTCSSTEntityCreator >> newRuleSet [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTCSSRuleSet new
]

{ #category : 'entity creation' }
FASTCSSTEntityCreator >> newScopeStatement [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTCSSScopeStatement new
]

{ #category : 'entity creation' }
FASTCSSTEntityCreator >> newSelectorQuery [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTCSSSelectorQuery new
]

{ #category : 'entity creation' }
FASTCSSTEntityCreator >> newSelectors [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTCSSSelectors new
]

{ #category : 'entity creation' }
FASTCSSTEntityCreator >> newSiblingSelector [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTCSSSiblingSelector new
]

{ #category : 'entity creation' }
FASTCSSTEntityCreator >> newStringContent [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTCSSStringContent new
]

{ #category : 'entity creation' }
FASTCSSTEntityCreator >> newStringValue [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTCSSStringValue new
]

{ #category : 'entity creation' }
FASTCSSTEntityCreator >> newStylesheet [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTCSSStylesheet new
]

{ #category : 'entity creation' }
FASTCSSTEntityCreator >> newSupportsStatement [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTCSSSupportsStatement new
]

{ #category : 'entity creation' }
FASTCSSTEntityCreator >> newTagName [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTCSSTagName new
]

{ #category : 'entity creation' }
FASTCSSTEntityCreator >> newTo [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTCSSTo new
]

{ #category : 'entity creation' }
FASTCSSTEntityCreator >> newUnaryQuery [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTCSSUnaryQuery new
]

{ #category : 'entity creation' }
FASTCSSTEntityCreator >> newUnit [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTCSSUnit new
]

{ #category : 'entity creation' }
FASTCSSTEntityCreator >> newUniversalSelector [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTCSSUniversalSelector new
]
