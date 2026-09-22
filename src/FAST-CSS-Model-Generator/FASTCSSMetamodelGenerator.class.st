Class {
	#name : 'FASTCSSMetamodelGenerator',
	#superclass : 'FamixMetamodelGenerator',
	#instVars : [
		'entity',
		'_ERROR',
		'tEntity',
		'adjacentSiblingSelector',
		'arguments',
		'atKeyword',
		'atRule',
		'attributeName',
		'attributeSelector',
		'binaryExpression',
		'binaryQuery',
		'block',
		'callExpression',
		'charsetStatement',
		'childSelector',
		'className',
		'classSelector',
		'colorValue',
		'comment',
		'declaration',
		'descendantSelector',
		'escapeSequence',
		'featureName',
		'featureQuery',
		'floatValue',
		'from',
		'functionName',
		'gridValue',
		'idName',
		'idSelector',
		'identifier',
		'importStatement',
		'important',
		'importantValue',
		'integerValue',
		'jsComment',
		'keyframeBlock',
		'keyframeBlockList',
		'keyframesName',
		'keyframesStatement',
		'keywordQuery',
		'mediaStatement',
		'namespaceName',
		'namespaceSelector',
		'namespaceStatement',
		'nestingSelector',
		'parenthesizedQuery',
		'parenthesizedValue',
		'plainValue',
		'postcssStatement',
		'propertyName',
		'pseudoClassSelector',
		'pseudoElementSelector',
		'ruleSet',
		'scopeStatement',
		'selectorQuery',
		'selectors',
		'siblingSelector',
		'stringContent',
		'stringValue',
		'stylesheet',
		'supportsStatement',
		'tagName',
		'to',
		'unaryQuery',
		'unit',
		'universalSelector'
	],
	#category : 'FAST-CSS-Model-Generator',
	#package : 'FAST-CSS-Model-Generator'
}

{ #category : 'accessing' }
FASTCSSMetamodelGenerator class >> packageName [

	^ #'FAST-CSS-Model'
]

{ #category : 'accessing' }
FASTCSSMetamodelGenerator class >> prefix [

	^ #FASTCSS
]

{ #category : 'accessing' }
FASTCSSMetamodelGenerator class >> submetamodels [

	^ { FASTMetamodelGenerator }
]

{ #category : 'definition' }
FASTCSSMetamodelGenerator >> defineClasses [
	super defineClasses.
	entity := builder newClassNamed: #Entity.
	_ERROR := builder newClassNamed: #ERROR.
	adjacentSiblingSelector := builder newClassNamed: #AdjacentSiblingSelector.
	arguments := builder newClassNamed: #Arguments.
	atKeyword := builder newClassNamed: #AtKeyword.
	atRule := builder newClassNamed: #AtRule.
	attributeName := builder newClassNamed: #AttributeName.
	attributeSelector := builder newClassNamed: #AttributeSelector.
	binaryExpression := builder newClassNamed: #BinaryExpression.
	binaryQuery := builder newClassNamed: #BinaryQuery.
	block := builder newClassNamed: #Block.
	callExpression := builder newClassNamed: #CallExpression.
	charsetStatement := builder newClassNamed: #CharsetStatement.
	childSelector := builder newClassNamed: #ChildSelector.
	className := builder newClassNamed: #ClassName.
	classSelector := builder newClassNamed: #ClassSelector.
	colorValue := builder newClassNamed: #ColorValue.
	comment := builder newClassNamed: #Comment.
	declaration := builder newClassNamed: #Declaration.
	descendantSelector := builder newClassNamed: #DescendantSelector.
	escapeSequence := builder newClassNamed: #EscapeSequence.
	featureName := builder newClassNamed: #FeatureName.
	featureQuery := builder newClassNamed: #FeatureQuery.
	floatValue := builder newClassNamed: #FloatValue.
	from := builder newClassNamed: #From.
	functionName := builder newClassNamed: #FunctionName.
	gridValue := builder newClassNamed: #GridValue.
	idName := builder newClassNamed: #IdName.
	idSelector := builder newClassNamed: #IdSelector.
	identifier := builder newClassNamed: #Identifier.
	importStatement := builder newClassNamed: #ImportStatement.
	important := builder newClassNamed: #Important.
	importantValue := builder newClassNamed: #ImportantValue.
	integerValue := builder newClassNamed: #IntegerValue.
	jsComment := builder newClassNamed: #JsComment.
	keyframeBlock := builder newClassNamed: #KeyframeBlock.
	keyframeBlockList := builder newClassNamed: #KeyframeBlockList.
	keyframesName := builder newClassNamed: #KeyframesName.
	keyframesStatement := builder newClassNamed: #KeyframesStatement.
	keywordQuery := builder newClassNamed: #KeywordQuery.
	mediaStatement := builder newClassNamed: #MediaStatement.
	namespaceName := builder newClassNamed: #NamespaceName.
	namespaceSelector := builder newClassNamed: #NamespaceSelector.
	namespaceStatement := builder newClassNamed: #NamespaceStatement.
	nestingSelector := builder newClassNamed: #NestingSelector.
	parenthesizedQuery := builder newClassNamed: #ParenthesizedQuery.
	parenthesizedValue := builder newClassNamed: #ParenthesizedValue.
	plainValue := builder newClassNamed: #PlainValue.
	postcssStatement := builder newClassNamed: #PostcssStatement.
	propertyName := builder newClassNamed: #PropertyName.
	pseudoClassSelector := builder newClassNamed: #PseudoClassSelector.
	pseudoElementSelector := builder newClassNamed: #PseudoElementSelector.
	ruleSet := builder newClassNamed: #RuleSet.
	scopeStatement := builder newClassNamed: #ScopeStatement.
	selectorQuery := builder newClassNamed: #SelectorQuery.
	selectors := builder newClassNamed: #Selectors.
	siblingSelector := builder newClassNamed: #SiblingSelector.
	stringContent := builder newClassNamed: #StringContent.
	stringValue := builder newClassNamed: #StringValue.
	stylesheet := builder newClassNamed: #Stylesheet.
	supportsStatement := builder newClassNamed: #SupportsStatement.
	tagName := builder newClassNamed: #TagName.
	to := builder newClassNamed: #To.
	unaryQuery := builder newClassNamed: #UnaryQuery.
	unit := builder newClassNamed: #Unit.
	universalSelector := builder newClassNamed: #UniversalSelector.
]

{ #category : 'definition' }
FASTCSSMetamodelGenerator >> defineHierarchy [
	"define class hierarchy"
	super defineHierarchy.
	entity --|> tEntity.
	entity --|> #TEntityMetaLevelDependency.

	_ERROR --|> #THasImmediateSource.

	stylesheet --|> #THasImmediateSource.


]

{ #category : 'definition' }
FASTCSSMetamodelGenerator >> defineRelations [
	super defineRelations.

	(entity property: #'genericChildren') <>-* (entity property: #'genericParent').


	" ADJACENT_SIBLING_SELECTOR (COLLECTION) "
	((adjacentSiblingSelector property: #childrenNodes) comment: '')
		<>-* ((entity property: #adjacentSiblingSelectorOwner) comment: '').


	" ARGUMENTS (COLLECTION) "
	((arguments property: #childrenNodes) comment: '')
		<>-* ((entity property: #argumentsOwner) comment: '').


	" AT_RULE (COLLECTION) "
	((atRule property: #childrenNodes) comment: '')
		<>-* ((entity property: #atRuleOwner) comment: '').


	" ATTRIBUTE_NAME (COLLECTION) "
	((attributeName property: #childrenNodes) comment: '')
		<>-* ((entity property: #attributeNameOwner) comment: '').


	" ATTRIBUTE_SELECTOR (COLLECTION) "
	((attributeSelector property: #childrenNodes) comment: '')
		<>-* ((entity property: #attributeSelectorOwner) comment: '').


	" BINARY_EXPRESSION (COLLECTION) "
	((binaryExpression property: #childrenNodes) comment: '')
		<>-* ((entity property: #binaryExpressionOwner) comment: '').


	" BINARY_QUERY (COLLECTION) "
	((binaryQuery property: #childrenNodes) comment: '')
		<>-* ((entity property: #binaryQueryOwner) comment: '').


	" BLOCK (COLLECTION) "
	((block property: #childrenNodes) comment: '')
		<>-* ((entity property: #blockOwner) comment: '').


	" CALL_EXPRESSION (COLLECTION) "
	((callExpression property: #childrenNodes) comment: '')
		<>-* ((entity property: #callExpressionOwner) comment: '').


	" CHARSET_STATEMENT (SINGLE CHILD) "
	((charsetStatement property: #childrenNode) comment: '')
		<>- ((entity property: #charsetStatementOwner) comment: '').


	" CHILD_SELECTOR (COLLECTION) "
	((childSelector property: #childrenNodes) comment: '')
		<>-* ((entity property: #childSelectorOwner) comment: '').


	" CLASS_NAME (COLLECTION) "
	((className property: #childrenNodes) comment: '')
		<>-* ((entity property: #classNameOwner) comment: '').


	" CLASS_SELECTOR (COLLECTION) "
	((classSelector property: #childrenNodes) comment: '')
		<>-* ((entity property: #classSelectorOwner) comment: '').


	" DECLARATION (COLLECTION) "
	((declaration property: #childrenNodes) comment: '')
		<>-* ((entity property: #declarationOwner) comment: '').


	" DESCENDANT_SELECTOR (COLLECTION) "
	((descendantSelector property: #childrenNodes) comment: '')
		<>-* ((entity property: #descendantSelectorOwner) comment: '').


	" FEATURE_QUERY (COLLECTION) "
	((featureQuery property: #childrenNodes) comment: '')
		<>-* ((entity property: #featureQueryOwner) comment: '').


	" FLOAT_VALUE (SINGLE CHILD) "
	((floatValue property: #childrenNode) comment: '')
		<>- ((entity property: #floatValueOwner) comment: '').


	" GRID_VALUE (COLLECTION) "
	((gridValue property: #childrenNodes) comment: '')
		<>-* ((entity property: #gridValueOwner) comment: '').


	" ID_SELECTOR (COLLECTION) "
	((idSelector property: #childrenNodes) comment: '')
		<>-* ((entity property: #idSelectorOwner) comment: '').


	" IMPORT_STATEMENT (COLLECTION) "
	((importStatement property: #childrenNodes) comment: '')
		<>-* ((entity property: #importStatementOwner) comment: '').


	" INTEGER_VALUE (SINGLE CHILD) "
	((integerValue property: #childrenNode) comment: '')
		<>- ((entity property: #integerValueOwner) comment: '').


	" KEYFRAME_BLOCK (COLLECTION) "
	((keyframeBlock property: #childrenNodes) comment: '')
		<>-* ((entity property: #keyframeBlockOwner) comment: '').


	" KEYFRAME_BLOCK_LIST (COLLECTION) "
	((keyframeBlockList property: #childrenNodes) comment: '')
		<>-* ((entity property: #keyframeBlockListOwner) comment: '').


	" KEYFRAMES_STATEMENT (COLLECTION) "
	((keyframesStatement property: #childrenNodes) comment: '')
		<>-* ((entity property: #keyframesStatementOwner) comment: '').


	" MEDIA_STATEMENT (COLLECTION) "
	((mediaStatement property: #childrenNodes) comment: '')
		<>-* ((entity property: #mediaStatementOwner) comment: '').


	" NAMESPACE_SELECTOR (COLLECTION) "
	((namespaceSelector property: #childrenNodes) comment: '')
		<>-* ((entity property: #namespaceSelectorOwner) comment: '').


	" NAMESPACE_STATEMENT (COLLECTION) "
	((namespaceStatement property: #childrenNodes) comment: '')
		<>-* ((entity property: #namespaceStatementOwner) comment: '').


	" PARENTHESIZED_QUERY (SINGLE CHILD) "
	((parenthesizedQuery property: #childrenNode) comment: '')
		<>- ((entity property: #parenthesizedQueryOwner) comment: '').


	" PARENTHESIZED_VALUE (SINGLE CHILD) "
	((parenthesizedValue property: #childrenNode) comment: '')
		<>- ((entity property: #parenthesizedValueOwner) comment: '').


	" POSTCSS_STATEMENT (COLLECTION) "
	((postcssStatement property: #childrenNodes) comment: '')
		<>-* ((entity property: #postcssStatementOwner) comment: '').


	" PSEUDO_CLASS_SELECTOR (COLLECTION) "
	((pseudoClassSelector property: #childrenNodes) comment: '')
		<>-* ((entity property: #pseudoClassSelectorOwner) comment: '').


	" PSEUDO_ELEMENT_SELECTOR (COLLECTION) "
	((pseudoElementSelector property: #childrenNodes) comment: '')
		<>-* ((entity property: #pseudoElementSelectorOwner) comment: '').


	" RULE_SET (COLLECTION) "
	((ruleSet property: #childrenNodes) comment: '')
		<>-* ((entity property: #ruleSetOwner) comment: '').


	" SCOPE_STATEMENT (COLLECTION) "
	((scopeStatement property: #childrenNodes) comment: '')
		<>-* ((entity property: #scopeStatementOwner) comment: '').


	" SELECTOR_QUERY (SINGLE CHILD) "
	((selectorQuery property: #childrenNode) comment: '')
		<>- ((entity property: #selectorQueryOwner) comment: '').


	" SELECTORS (COLLECTION) "
	((selectors property: #childrenNodes) comment: '')
		<>-* ((entity property: #selectorsOwner) comment: '').


	" SIBLING_SELECTOR (COLLECTION) "
	((siblingSelector property: #childrenNodes) comment: '')
		<>-* ((entity property: #siblingSelectorOwner) comment: '').


	" STRING_VALUE (COLLECTION) "
	((stringValue property: #childrenNodes) comment: '')
		<>-* ((entity property: #stringValueOwner) comment: '').


	" STYLESHEET (COLLECTION) "
	((stylesheet property: #childrenNodes) comment: '')
		<>-* ((entity property: #stylesheetOwner) comment: '').


	" SUPPORTS_STATEMENT (COLLECTION) "
	((supportsStatement property: #childrenNodes) comment: '')
		<>-* ((entity property: #supportsStatementOwner) comment: '').


	" UNARY_QUERY (SINGLE CHILD) "
	((unaryQuery property: #childrenNode) comment: '')
		<>- ((entity property: #unaryQueryOwner) comment: '').


]

{ #category : 'definition' }
FASTCSSMetamodelGenerator >> defineTraits [
	super defineTraits.
	"From FAST"
	tEntity := self remoteTrait: #TEntity withPrefix: #FAST.
]
