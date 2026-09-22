"
## Relations
======================

### Parents
| Relation | Origin | Opposite | Type | Comment |
|---|
| `adjacentSiblingSelectorOwner` | `FASTCSSEntity` | `childrenNodes` | `FASTCSSAdjacentSiblingSelector` | |
| `argumentsOwner` | `FASTCSSEntity` | `childrenNodes` | `FASTCSSArguments` | |
| `atRuleOwner` | `FASTCSSEntity` | `childrenNodes` | `FASTCSSAtRule` | |
| `attributeNameOwner` | `FASTCSSEntity` | `childrenNodes` | `FASTCSSAttributeName` | |
| `attributeSelectorOwner` | `FASTCSSEntity` | `childrenNodes` | `FASTCSSAttributeSelector` | |
| `binaryExpressionOwner` | `FASTCSSEntity` | `childrenNodes` | `FASTCSSBinaryExpression` | |
| `binaryQueryOwner` | `FASTCSSEntity` | `childrenNodes` | `FASTCSSBinaryQuery` | |
| `blockOwner` | `FASTCSSEntity` | `childrenNodes` | `FASTCSSBlock` | |
| `callExpressionOwner` | `FASTCSSEntity` | `childrenNodes` | `FASTCSSCallExpression` | |
| `charsetStatementOwner` | `FASTCSSEntity` | `childrenNode` | `FASTCSSCharsetStatement` | |
| `childSelectorOwner` | `FASTCSSEntity` | `childrenNodes` | `FASTCSSChildSelector` | |
| `classNameOwner` | `FASTCSSEntity` | `childrenNodes` | `FASTCSSClassName` | |
| `classSelectorOwner` | `FASTCSSEntity` | `childrenNodes` | `FASTCSSClassSelector` | |
| `declarationOwner` | `FASTCSSEntity` | `childrenNodes` | `FASTCSSDeclaration` | |
| `descendantSelectorOwner` | `FASTCSSEntity` | `childrenNodes` | `FASTCSSDescendantSelector` | |
| `featureQueryOwner` | `FASTCSSEntity` | `childrenNodes` | `FASTCSSFeatureQuery` | |
| `floatValueOwner` | `FASTCSSEntity` | `childrenNode` | `FASTCSSFloatValue` | |
| `genericParent` | `FASTCSSEntity` | `genericChildren` | `FASTCSSEntity` | |
| `gridValueOwner` | `FASTCSSEntity` | `childrenNodes` | `FASTCSSGridValue` | |
| `idSelectorOwner` | `FASTCSSEntity` | `childrenNodes` | `FASTCSSIdSelector` | |
| `importStatementOwner` | `FASTCSSEntity` | `childrenNodes` | `FASTCSSImportStatement` | |
| `integerValueOwner` | `FASTCSSEntity` | `childrenNode` | `FASTCSSIntegerValue` | |
| `keyframeBlockListOwner` | `FASTCSSEntity` | `childrenNodes` | `FASTCSSKeyframeBlockList` | |
| `keyframeBlockOwner` | `FASTCSSEntity` | `childrenNodes` | `FASTCSSKeyframeBlock` | |
| `keyframesStatementOwner` | `FASTCSSEntity` | `childrenNodes` | `FASTCSSKeyframesStatement` | |
| `mediaStatementOwner` | `FASTCSSEntity` | `childrenNodes` | `FASTCSSMediaStatement` | |
| `namespaceSelectorOwner` | `FASTCSSEntity` | `childrenNodes` | `FASTCSSNamespaceSelector` | |
| `namespaceStatementOwner` | `FASTCSSEntity` | `childrenNodes` | `FASTCSSNamespaceStatement` | |
| `parenthesizedQueryOwner` | `FASTCSSEntity` | `childrenNode` | `FASTCSSParenthesizedQuery` | |
| `parenthesizedValueOwner` | `FASTCSSEntity` | `childrenNode` | `FASTCSSParenthesizedValue` | |
| `postcssStatementOwner` | `FASTCSSEntity` | `childrenNodes` | `FASTCSSPostcssStatement` | |
| `pseudoClassSelectorOwner` | `FASTCSSEntity` | `childrenNodes` | `FASTCSSPseudoClassSelector` | |
| `pseudoElementSelectorOwner` | `FASTCSSEntity` | `childrenNodes` | `FASTCSSPseudoElementSelector` | |
| `ruleSetOwner` | `FASTCSSEntity` | `childrenNodes` | `FASTCSSRuleSet` | |
| `scopeStatementOwner` | `FASTCSSEntity` | `childrenNodes` | `FASTCSSScopeStatement` | |
| `selectorQueryOwner` | `FASTCSSEntity` | `childrenNode` | `FASTCSSSelectorQuery` | |
| `selectorsOwner` | `FASTCSSEntity` | `childrenNodes` | `FASTCSSSelectors` | |
| `siblingSelectorOwner` | `FASTCSSEntity` | `childrenNodes` | `FASTCSSSiblingSelector` | |
| `stringValueOwner` | `FASTCSSEntity` | `childrenNodes` | `FASTCSSStringValue` | |
| `stylesheetOwner` | `FASTCSSEntity` | `childrenNodes` | `FASTCSSStylesheet` | |
| `supportsStatementOwner` | `FASTCSSEntity` | `childrenNodes` | `FASTCSSSupportsStatement` | |
| `unaryQueryOwner` | `FASTCSSEntity` | `childrenNode` | `FASTCSSUnaryQuery` | |

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `genericChildren` | `FASTCSSEntity` | `genericParent` | `FASTCSSEntity` | |


## Properties
======================

| Name | Type | Default value | Comment |
|---|
| `endPos` | `Number` | nil | |
| `startPos` | `Number` | nil | |

"
Class {
	#name : 'FASTCSSEntity',
	#superclass : 'MooseEntity',
	#traits : 'FASTTEntity + TEntityMetaLevelDependency',
	#classTraits : 'FASTTEntity classTrait + TEntityMetaLevelDependency classTrait',
	#instVars : [
		'#adjacentSiblingSelectorOwner => FMOne type: #FASTCSSAdjacentSiblingSelector opposite: #childrenNodes',
		'#argumentsOwner => FMOne type: #FASTCSSArguments opposite: #childrenNodes',
		'#atRuleOwner => FMOne type: #FASTCSSAtRule opposite: #childrenNodes',
		'#attributeNameOwner => FMOne type: #FASTCSSAttributeName opposite: #childrenNodes',
		'#attributeSelectorOwner => FMOne type: #FASTCSSAttributeSelector opposite: #childrenNodes',
		'#binaryExpressionOwner => FMOne type: #FASTCSSBinaryExpression opposite: #childrenNodes',
		'#binaryQueryOwner => FMOne type: #FASTCSSBinaryQuery opposite: #childrenNodes',
		'#blockOwner => FMOne type: #FASTCSSBlock opposite: #childrenNodes',
		'#callExpressionOwner => FMOne type: #FASTCSSCallExpression opposite: #childrenNodes',
		'#charsetStatementOwner => FMOne type: #FASTCSSCharsetStatement opposite: #childrenNode',
		'#childSelectorOwner => FMOne type: #FASTCSSChildSelector opposite: #childrenNodes',
		'#classNameOwner => FMOne type: #FASTCSSClassName opposite: #childrenNodes',
		'#classSelectorOwner => FMOne type: #FASTCSSClassSelector opposite: #childrenNodes',
		'#declarationOwner => FMOne type: #FASTCSSDeclaration opposite: #childrenNodes',
		'#descendantSelectorOwner => FMOne type: #FASTCSSDescendantSelector opposite: #childrenNodes',
		'#featureQueryOwner => FMOne type: #FASTCSSFeatureQuery opposite: #childrenNodes',
		'#floatValueOwner => FMOne type: #FASTCSSFloatValue opposite: #childrenNode',
		'#genericChildren => FMMany type: #FASTCSSEntity opposite: #genericParent',
		'#genericParent => FMOne type: #FASTCSSEntity opposite: #genericChildren',
		'#gridValueOwner => FMOne type: #FASTCSSGridValue opposite: #childrenNodes',
		'#idSelectorOwner => FMOne type: #FASTCSSIdSelector opposite: #childrenNodes',
		'#importStatementOwner => FMOne type: #FASTCSSImportStatement opposite: #childrenNodes',
		'#integerValueOwner => FMOne type: #FASTCSSIntegerValue opposite: #childrenNode',
		'#keyframeBlockListOwner => FMOne type: #FASTCSSKeyframeBlockList opposite: #childrenNodes',
		'#keyframeBlockOwner => FMOne type: #FASTCSSKeyframeBlock opposite: #childrenNodes',
		'#keyframesStatementOwner => FMOne type: #FASTCSSKeyframesStatement opposite: #childrenNodes',
		'#mediaStatementOwner => FMOne type: #FASTCSSMediaStatement opposite: #childrenNodes',
		'#namespaceSelectorOwner => FMOne type: #FASTCSSNamespaceSelector opposite: #childrenNodes',
		'#namespaceStatementOwner => FMOne type: #FASTCSSNamespaceStatement opposite: #childrenNodes',
		'#parenthesizedQueryOwner => FMOne type: #FASTCSSParenthesizedQuery opposite: #childrenNode',
		'#parenthesizedValueOwner => FMOne type: #FASTCSSParenthesizedValue opposite: #childrenNode',
		'#postcssStatementOwner => FMOne type: #FASTCSSPostcssStatement opposite: #childrenNodes',
		'#pseudoClassSelectorOwner => FMOne type: #FASTCSSPseudoClassSelector opposite: #childrenNodes',
		'#pseudoElementSelectorOwner => FMOne type: #FASTCSSPseudoElementSelector opposite: #childrenNodes',
		'#ruleSetOwner => FMOne type: #FASTCSSRuleSet opposite: #childrenNodes',
		'#scopeStatementOwner => FMOne type: #FASTCSSScopeStatement opposite: #childrenNodes',
		'#selectorQueryOwner => FMOne type: #FASTCSSSelectorQuery opposite: #childrenNode',
		'#selectorsOwner => FMOne type: #FASTCSSSelectors opposite: #childrenNodes',
		'#siblingSelectorOwner => FMOne type: #FASTCSSSiblingSelector opposite: #childrenNodes',
		'#stringValueOwner => FMOne type: #FASTCSSStringValue opposite: #childrenNodes',
		'#stylesheetOwner => FMOne type: #FASTCSSStylesheet opposite: #childrenNodes',
		'#supportsStatementOwner => FMOne type: #FASTCSSSupportsStatement opposite: #childrenNodes',
		'#unaryQueryOwner => FMOne type: #FASTCSSUnaryQuery opposite: #childrenNode'
	],
	#category : 'FAST-CSS-Model-Entities',
	#package : 'FAST-CSS-Model',
	#tag : 'Entities'
}

{ #category : 'meta' }
FASTCSSEntity class >> annotation [

	<ignoreForCoverage>
	<FMClass: #Entity super: #MooseEntity>
	<package: #'FAST-CSS-Model'>
	<generated>
	<abstract>
]

{ #category : 'testing' }
FASTCSSEntity class >> isAbstract [

	<ignoreForCoverage>
	<generated>
	^ self == FASTCSSEntity
]

{ #category : 'meta' }
FASTCSSEntity class >> metamodel [

	<ignoreForCoverage>
	<generated>
	^ FASTCSSModel metamodel
]

{ #category : 'adding' }
FASTCSSEntity >> addGenericChild: anObject [

	<ignoreForCoverage>
	<generated>
	^ self genericChildren add: anObject
]

{ #category : 'accessing' }
FASTCSSEntity >> adjacentSiblingSelectorOwner [
	"Relation named: #adjacentSiblingSelectorOwner type: #FASTCSSAdjacentSiblingSelector opposite: #childrenNodes"

	<ignoreForCoverage>
	<generated>
	<container>
	^ adjacentSiblingSelectorOwner
]

{ #category : 'accessing' }
FASTCSSEntity >> adjacentSiblingSelectorOwner: anObject [

	<ignoreForCoverage>
	<generated>
	adjacentSiblingSelectorOwner := anObject
]

{ #category : 'accessing' }
FASTCSSEntity >> argumentsOwner [
	"Relation named: #argumentsOwner type: #FASTCSSArguments opposite: #childrenNodes"

	<ignoreForCoverage>
	<generated>
	<container>
	^ argumentsOwner
]

{ #category : 'accessing' }
FASTCSSEntity >> argumentsOwner: anObject [

	<ignoreForCoverage>
	<generated>
	argumentsOwner := anObject
]

{ #category : 'accessing' }
FASTCSSEntity >> atRuleOwner [
	"Relation named: #atRuleOwner type: #FASTCSSAtRule opposite: #childrenNodes"

	<ignoreForCoverage>
	<generated>
	<container>
	^ atRuleOwner
]

{ #category : 'accessing' }
FASTCSSEntity >> atRuleOwner: anObject [

	<ignoreForCoverage>
	<generated>
	atRuleOwner := anObject
]

{ #category : 'accessing' }
FASTCSSEntity >> attributeNameOwner [
	"Relation named: #attributeNameOwner type: #FASTCSSAttributeName opposite: #childrenNodes"

	<ignoreForCoverage>
	<generated>
	<container>
	^ attributeNameOwner
]

{ #category : 'accessing' }
FASTCSSEntity >> attributeNameOwner: anObject [

	<ignoreForCoverage>
	<generated>
	attributeNameOwner := anObject
]

{ #category : 'accessing' }
FASTCSSEntity >> attributeSelectorOwner [
	"Relation named: #attributeSelectorOwner type: #FASTCSSAttributeSelector opposite: #childrenNodes"

	<ignoreForCoverage>
	<generated>
	<container>
	^ attributeSelectorOwner
]

{ #category : 'accessing' }
FASTCSSEntity >> attributeSelectorOwner: anObject [

	<ignoreForCoverage>
	<generated>
	attributeSelectorOwner := anObject
]

{ #category : 'accessing' }
FASTCSSEntity >> binaryExpressionOwner [
	"Relation named: #binaryExpressionOwner type: #FASTCSSBinaryExpression opposite: #childrenNodes"

	<ignoreForCoverage>
	<generated>
	<container>
	^ binaryExpressionOwner
]

{ #category : 'accessing' }
FASTCSSEntity >> binaryExpressionOwner: anObject [

	<ignoreForCoverage>
	<generated>
	binaryExpressionOwner := anObject
]

{ #category : 'accessing' }
FASTCSSEntity >> binaryQueryOwner [
	"Relation named: #binaryQueryOwner type: #FASTCSSBinaryQuery opposite: #childrenNodes"

	<ignoreForCoverage>
	<generated>
	<container>
	^ binaryQueryOwner
]

{ #category : 'accessing' }
FASTCSSEntity >> binaryQueryOwner: anObject [

	<ignoreForCoverage>
	<generated>
	binaryQueryOwner := anObject
]

{ #category : 'accessing' }
FASTCSSEntity >> blockOwner [
	"Relation named: #blockOwner type: #FASTCSSBlock opposite: #childrenNodes"

	<ignoreForCoverage>
	<generated>
	<container>
	^ blockOwner
]

{ #category : 'accessing' }
FASTCSSEntity >> blockOwner: anObject [

	<ignoreForCoverage>
	<generated>
	blockOwner := anObject
]

{ #category : 'accessing' }
FASTCSSEntity >> callExpressionOwner [
	"Relation named: #callExpressionOwner type: #FASTCSSCallExpression opposite: #childrenNodes"

	<ignoreForCoverage>
	<generated>
	<container>
	^ callExpressionOwner
]

{ #category : 'accessing' }
FASTCSSEntity >> callExpressionOwner: anObject [

	<ignoreForCoverage>
	<generated>
	callExpressionOwner := anObject
]

{ #category : 'accessing' }
FASTCSSEntity >> charsetStatementOwner [
	"Relation named: #charsetStatementOwner type: #FASTCSSCharsetStatement opposite: #childrenNode"

	<ignoreForCoverage>
	<generated>
	<container>
	<derived>
	^ charsetStatementOwner
]

{ #category : 'accessing' }
FASTCSSEntity >> charsetStatementOwner: anObject [

	<ignoreForCoverage>
	<generated>
	charsetStatementOwner := anObject
]

{ #category : 'accessing' }
FASTCSSEntity >> childSelectorOwner [
	"Relation named: #childSelectorOwner type: #FASTCSSChildSelector opposite: #childrenNodes"

	<ignoreForCoverage>
	<generated>
	<container>
	^ childSelectorOwner
]

{ #category : 'accessing' }
FASTCSSEntity >> childSelectorOwner: anObject [

	<ignoreForCoverage>
	<generated>
	childSelectorOwner := anObject
]

{ #category : 'accessing' }
FASTCSSEntity >> classNameOwner [
	"Relation named: #classNameOwner type: #FASTCSSClassName opposite: #childrenNodes"

	<ignoreForCoverage>
	<generated>
	<container>
	^ classNameOwner
]

{ #category : 'accessing' }
FASTCSSEntity >> classNameOwner: anObject [

	<ignoreForCoverage>
	<generated>
	classNameOwner := anObject
]

{ #category : 'accessing' }
FASTCSSEntity >> classSelectorOwner [
	"Relation named: #classSelectorOwner type: #FASTCSSClassSelector opposite: #childrenNodes"

	<ignoreForCoverage>
	<generated>
	<container>
	^ classSelectorOwner
]

{ #category : 'accessing' }
FASTCSSEntity >> classSelectorOwner: anObject [

	<ignoreForCoverage>
	<generated>
	classSelectorOwner := anObject
]

{ #category : 'accessing' }
FASTCSSEntity >> declarationOwner [
	"Relation named: #declarationOwner type: #FASTCSSDeclaration opposite: #childrenNodes"

	<ignoreForCoverage>
	<generated>
	<container>
	^ declarationOwner
]

{ #category : 'accessing' }
FASTCSSEntity >> declarationOwner: anObject [

	<ignoreForCoverage>
	<generated>
	declarationOwner := anObject
]

{ #category : 'accessing' }
FASTCSSEntity >> descendantSelectorOwner [
	"Relation named: #descendantSelectorOwner type: #FASTCSSDescendantSelector opposite: #childrenNodes"

	<ignoreForCoverage>
	<generated>
	<container>
	^ descendantSelectorOwner
]

{ #category : 'accessing' }
FASTCSSEntity >> descendantSelectorOwner: anObject [

	<ignoreForCoverage>
	<generated>
	descendantSelectorOwner := anObject
]

{ #category : 'accessing' }
FASTCSSEntity >> featureQueryOwner [
	"Relation named: #featureQueryOwner type: #FASTCSSFeatureQuery opposite: #childrenNodes"

	<ignoreForCoverage>
	<generated>
	<container>
	^ featureQueryOwner
]

{ #category : 'accessing' }
FASTCSSEntity >> featureQueryOwner: anObject [

	<ignoreForCoverage>
	<generated>
	featureQueryOwner := anObject
]

{ #category : 'accessing' }
FASTCSSEntity >> floatValueOwner [
	"Relation named: #floatValueOwner type: #FASTCSSFloatValue opposite: #childrenNode"

	<ignoreForCoverage>
	<generated>
	<container>
	<derived>
	^ floatValueOwner
]

{ #category : 'accessing' }
FASTCSSEntity >> floatValueOwner: anObject [

	<ignoreForCoverage>
	<generated>
	floatValueOwner := anObject
]

{ #category : 'accessing' }
FASTCSSEntity >> genericChildren [
	"Relation named: #genericChildren type: #FASTCSSEntity opposite: #genericParent"

	<ignoreForCoverage>
	<generated>
	<derived>
	^ genericChildren
]

{ #category : 'accessing' }
FASTCSSEntity >> genericChildren: anObject [

	<ignoreForCoverage>
	<generated>
	genericChildren value: anObject
]

{ #category : 'accessing' }
FASTCSSEntity >> genericParent [
	"Relation named: #genericParent type: #FASTCSSEntity opposite: #genericChildren"

	<ignoreForCoverage>
	<generated>
	<container>
	^ genericParent
]

{ #category : 'accessing' }
FASTCSSEntity >> genericParent: anObject [

	<ignoreForCoverage>
	<generated>
	genericParent := anObject
]

{ #category : 'accessing' }
FASTCSSEntity >> gridValueOwner [
	"Relation named: #gridValueOwner type: #FASTCSSGridValue opposite: #childrenNodes"

	<ignoreForCoverage>
	<generated>
	<container>
	^ gridValueOwner
]

{ #category : 'accessing' }
FASTCSSEntity >> gridValueOwner: anObject [

	<ignoreForCoverage>
	<generated>
	gridValueOwner := anObject
]

{ #category : 'testing' }
FASTCSSEntity >> hasImmediateSource [

	<ignoreForCoverage>
	<generated>
	^ false
]

{ #category : 'accessing' }
FASTCSSEntity >> idSelectorOwner [
	"Relation named: #idSelectorOwner type: #FASTCSSIdSelector opposite: #childrenNodes"

	<ignoreForCoverage>
	<generated>
	<container>
	^ idSelectorOwner
]

{ #category : 'accessing' }
FASTCSSEntity >> idSelectorOwner: anObject [

	<ignoreForCoverage>
	<generated>
	idSelectorOwner := anObject
]

{ #category : 'accessing' }
FASTCSSEntity >> importStatementOwner [
	"Relation named: #importStatementOwner type: #FASTCSSImportStatement opposite: #childrenNodes"

	<ignoreForCoverage>
	<generated>
	<container>
	^ importStatementOwner
]

{ #category : 'accessing' }
FASTCSSEntity >> importStatementOwner: anObject [

	<ignoreForCoverage>
	<generated>
	importStatementOwner := anObject
]

{ #category : 'accessing' }
FASTCSSEntity >> integerValueOwner [
	"Relation named: #integerValueOwner type: #FASTCSSIntegerValue opposite: #childrenNode"

	<ignoreForCoverage>
	<generated>
	<container>
	<derived>
	^ integerValueOwner
]

{ #category : 'accessing' }
FASTCSSEntity >> integerValueOwner: anObject [

	<ignoreForCoverage>
	<generated>
	integerValueOwner := anObject
]

{ #category : 'accessing' }
FASTCSSEntity >> keyframeBlockListOwner [
	"Relation named: #keyframeBlockListOwner type: #FASTCSSKeyframeBlockList opposite: #childrenNodes"

	<ignoreForCoverage>
	<generated>
	<container>
	^ keyframeBlockListOwner
]

{ #category : 'accessing' }
FASTCSSEntity >> keyframeBlockListOwner: anObject [

	<ignoreForCoverage>
	<generated>
	keyframeBlockListOwner := anObject
]

{ #category : 'accessing' }
FASTCSSEntity >> keyframeBlockOwner [
	"Relation named: #keyframeBlockOwner type: #FASTCSSKeyframeBlock opposite: #childrenNodes"

	<ignoreForCoverage>
	<generated>
	<container>
	^ keyframeBlockOwner
]

{ #category : 'accessing' }
FASTCSSEntity >> keyframeBlockOwner: anObject [

	<ignoreForCoverage>
	<generated>
	keyframeBlockOwner := anObject
]

{ #category : 'accessing' }
FASTCSSEntity >> keyframesStatementOwner [
	"Relation named: #keyframesStatementOwner type: #FASTCSSKeyframesStatement opposite: #childrenNodes"

	<ignoreForCoverage>
	<generated>
	<container>
	^ keyframesStatementOwner
]

{ #category : 'accessing' }
FASTCSSEntity >> keyframesStatementOwner: anObject [

	<ignoreForCoverage>
	<generated>
	keyframesStatementOwner := anObject
]

{ #category : 'accessing' }
FASTCSSEntity >> mediaStatementOwner [
	"Relation named: #mediaStatementOwner type: #FASTCSSMediaStatement opposite: #childrenNodes"

	<ignoreForCoverage>
	<generated>
	<container>
	^ mediaStatementOwner
]

{ #category : 'accessing' }
FASTCSSEntity >> mediaStatementOwner: anObject [

	<ignoreForCoverage>
	<generated>
	mediaStatementOwner := anObject
]

{ #category : 'accessing' }
FASTCSSEntity >> namespaceSelectorOwner [
	"Relation named: #namespaceSelectorOwner type: #FASTCSSNamespaceSelector opposite: #childrenNodes"

	<ignoreForCoverage>
	<generated>
	<container>
	^ namespaceSelectorOwner
]

{ #category : 'accessing' }
FASTCSSEntity >> namespaceSelectorOwner: anObject [

	<ignoreForCoverage>
	<generated>
	namespaceSelectorOwner := anObject
]

{ #category : 'accessing' }
FASTCSSEntity >> namespaceStatementOwner [
	"Relation named: #namespaceStatementOwner type: #FASTCSSNamespaceStatement opposite: #childrenNodes"

	<ignoreForCoverage>
	<generated>
	<container>
	^ namespaceStatementOwner
]

{ #category : 'accessing' }
FASTCSSEntity >> namespaceStatementOwner: anObject [

	<ignoreForCoverage>
	<generated>
	namespaceStatementOwner := anObject
]

{ #category : 'accessing' }
FASTCSSEntity >> parenthesizedQueryOwner [
	"Relation named: #parenthesizedQueryOwner type: #FASTCSSParenthesizedQuery opposite: #childrenNode"

	<ignoreForCoverage>
	<generated>
	<container>
	<derived>
	^ parenthesizedQueryOwner
]

{ #category : 'accessing' }
FASTCSSEntity >> parenthesizedQueryOwner: anObject [

	<ignoreForCoverage>
	<generated>
	parenthesizedQueryOwner := anObject
]

{ #category : 'accessing' }
FASTCSSEntity >> parenthesizedValueOwner [
	"Relation named: #parenthesizedValueOwner type: #FASTCSSParenthesizedValue opposite: #childrenNode"

	<ignoreForCoverage>
	<generated>
	<container>
	<derived>
	^ parenthesizedValueOwner
]

{ #category : 'accessing' }
FASTCSSEntity >> parenthesizedValueOwner: anObject [

	<ignoreForCoverage>
	<generated>
	parenthesizedValueOwner := anObject
]

{ #category : 'accessing' }
FASTCSSEntity >> postcssStatementOwner [
	"Relation named: #postcssStatementOwner type: #FASTCSSPostcssStatement opposite: #childrenNodes"

	<ignoreForCoverage>
	<generated>
	<container>
	^ postcssStatementOwner
]

{ #category : 'accessing' }
FASTCSSEntity >> postcssStatementOwner: anObject [

	<ignoreForCoverage>
	<generated>
	postcssStatementOwner := anObject
]

{ #category : 'accessing' }
FASTCSSEntity >> pseudoClassSelectorOwner [
	"Relation named: #pseudoClassSelectorOwner type: #FASTCSSPseudoClassSelector opposite: #childrenNodes"

	<ignoreForCoverage>
	<generated>
	<container>
	^ pseudoClassSelectorOwner
]

{ #category : 'accessing' }
FASTCSSEntity >> pseudoClassSelectorOwner: anObject [

	<ignoreForCoverage>
	<generated>
	pseudoClassSelectorOwner := anObject
]

{ #category : 'accessing' }
FASTCSSEntity >> pseudoElementSelectorOwner [
	"Relation named: #pseudoElementSelectorOwner type: #FASTCSSPseudoElementSelector opposite: #childrenNodes"

	<ignoreForCoverage>
	<generated>
	<container>
	^ pseudoElementSelectorOwner
]

{ #category : 'accessing' }
FASTCSSEntity >> pseudoElementSelectorOwner: anObject [

	<ignoreForCoverage>
	<generated>
	pseudoElementSelectorOwner := anObject
]

{ #category : 'accessing' }
FASTCSSEntity >> ruleSetOwner [
	"Relation named: #ruleSetOwner type: #FASTCSSRuleSet opposite: #childrenNodes"

	<ignoreForCoverage>
	<generated>
	<container>
	^ ruleSetOwner
]

{ #category : 'accessing' }
FASTCSSEntity >> ruleSetOwner: anObject [

	<ignoreForCoverage>
	<generated>
	ruleSetOwner := anObject
]

{ #category : 'accessing' }
FASTCSSEntity >> scopeStatementOwner [
	"Relation named: #scopeStatementOwner type: #FASTCSSScopeStatement opposite: #childrenNodes"

	<ignoreForCoverage>
	<generated>
	<container>
	^ scopeStatementOwner
]

{ #category : 'accessing' }
FASTCSSEntity >> scopeStatementOwner: anObject [

	<ignoreForCoverage>
	<generated>
	scopeStatementOwner := anObject
]

{ #category : 'accessing' }
FASTCSSEntity >> selectorQueryOwner [
	"Relation named: #selectorQueryOwner type: #FASTCSSSelectorQuery opposite: #childrenNode"

	<ignoreForCoverage>
	<generated>
	<container>
	<derived>
	^ selectorQueryOwner
]

{ #category : 'accessing' }
FASTCSSEntity >> selectorQueryOwner: anObject [

	<ignoreForCoverage>
	<generated>
	selectorQueryOwner := anObject
]

{ #category : 'accessing' }
FASTCSSEntity >> selectorsOwner [
	"Relation named: #selectorsOwner type: #FASTCSSSelectors opposite: #childrenNodes"

	<ignoreForCoverage>
	<generated>
	<container>
	^ selectorsOwner
]

{ #category : 'accessing' }
FASTCSSEntity >> selectorsOwner: anObject [

	<ignoreForCoverage>
	<generated>
	selectorsOwner := anObject
]

{ #category : 'accessing' }
FASTCSSEntity >> siblingSelectorOwner [
	"Relation named: #siblingSelectorOwner type: #FASTCSSSiblingSelector opposite: #childrenNodes"

	<ignoreForCoverage>
	<generated>
	<container>
	^ siblingSelectorOwner
]

{ #category : 'accessing' }
FASTCSSEntity >> siblingSelectorOwner: anObject [

	<ignoreForCoverage>
	<generated>
	siblingSelectorOwner := anObject
]

{ #category : 'accessing' }
FASTCSSEntity >> stringValueOwner [
	"Relation named: #stringValueOwner type: #FASTCSSStringValue opposite: #childrenNodes"

	<ignoreForCoverage>
	<generated>
	<container>
	^ stringValueOwner
]

{ #category : 'accessing' }
FASTCSSEntity >> stringValueOwner: anObject [

	<ignoreForCoverage>
	<generated>
	stringValueOwner := anObject
]

{ #category : 'accessing' }
FASTCSSEntity >> stylesheetOwner [
	"Relation named: #stylesheetOwner type: #FASTCSSStylesheet opposite: #childrenNodes"

	<ignoreForCoverage>
	<generated>
	<container>
	^ stylesheetOwner
]

{ #category : 'accessing' }
FASTCSSEntity >> stylesheetOwner: anObject [

	<ignoreForCoverage>
	<generated>
	stylesheetOwner := anObject
]

{ #category : 'accessing' }
FASTCSSEntity >> supportsStatementOwner [
	"Relation named: #supportsStatementOwner type: #FASTCSSSupportsStatement opposite: #childrenNodes"

	<ignoreForCoverage>
	<generated>
	<container>
	^ supportsStatementOwner
]

{ #category : 'accessing' }
FASTCSSEntity >> supportsStatementOwner: anObject [

	<ignoreForCoverage>
	<generated>
	supportsStatementOwner := anObject
]

{ #category : 'accessing' }
FASTCSSEntity >> unaryQueryOwner [
	"Relation named: #unaryQueryOwner type: #FASTCSSUnaryQuery opposite: #childrenNode"

	<ignoreForCoverage>
	<generated>
	<container>
	<derived>
	^ unaryQueryOwner
]

{ #category : 'accessing' }
FASTCSSEntity >> unaryQueryOwner: anObject [

	<ignoreForCoverage>
	<generated>
	unaryQueryOwner := anObject
]
