Class {
	#name : 'FASTCSSImporterTest',
	#superclass : 'TSFASTAbstractImporterTest',
	#category : 'FAST-CSS-TestsGenerated',
	#package : 'FAST-CSS-TestsGenerated'
}

{ #category : 'tests' }
FASTCSSImporterTest >> testGeneratedAttributeSelectors [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedAttributeSelectors 	"

	self parse: '[a] {}
[b=c] {}
[d~=e] {}
a[b] {};'.

	self assert: (fast allWithType: FASTCSSAttributeName) size equals: 4.
	self assert: (fast allWithType: FASTCSSAttributeSelector) size equals: 4.
	self assert: (fast allWithType: FASTCSSBlock) size equals: 4.
	self assert: (fast allWithType: FASTCSSERROR) size equals: 1.
	self assert: (fast allWithType: FASTCSSPlainValue) size equals: 2.
	self assert: (fast allWithType: FASTCSSRuleSet) size equals: 4.
	self assert: (fast allWithType: FASTCSSSelectors) size equals: 4.
	self assert: (fast allWithType: FASTCSSStylesheet) size equals: 1.
	self assert: (fast allWithType: FASTCSSTagName) size equals: 1.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '[a] {}
[b=c] {}
[d~=e] {}
a[b] {};' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTCSSStylesheet).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 5.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '[a] {}'.
		self assert: (self topEntity isOfType: FASTCSSRuleSet).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '[a]'.
			self assert: (self topEntity isOfType: FASTCSSSelectors).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '[a]'.
				self assert: (self topEntity isOfType: FASTCSSAttributeSelector).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'a'.
					self assert: (self topEntity isOfType: FASTCSSAttributeName).
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{}'.
			self assert: (self topEntity isOfType: FASTCSSBlock).
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: '[b=c] {}'.
		self assert: (self topEntity isOfType: FASTCSSRuleSet).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '[b=c]'.
			self assert: (self topEntity isOfType: FASTCSSSelectors).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '[b=c]'.
				self assert: (self topEntity isOfType: FASTCSSAttributeSelector).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'b'.
					self assert: (self topEntity isOfType: FASTCSSAttributeName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: 'c'.
					self assert: (self topEntity isOfType: FASTCSSPlainValue).
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{}'.
			self assert: (self topEntity isOfType: FASTCSSBlock).
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 3).
		self assert: self topEntity sourceCode equals: '[d~=e] {}'.
		self assert: (self topEntity isOfType: FASTCSSRuleSet).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '[d~=e]'.
			self assert: (self topEntity isOfType: FASTCSSSelectors).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '[d~=e]'.
				self assert: (self topEntity isOfType: FASTCSSAttributeSelector).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'd'.
					self assert: (self topEntity isOfType: FASTCSSAttributeName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: 'e'.
					self assert: (self topEntity isOfType: FASTCSSPlainValue).
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{}'.
			self assert: (self topEntity isOfType: FASTCSSBlock).
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 4).
		self assert: self topEntity sourceCode equals: 'a[b] {}'.
		self assert: (self topEntity isOfType: FASTCSSRuleSet).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: 'a[b]'.
			self assert: (self topEntity isOfType: FASTCSSSelectors).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'a[b]'.
				self assert: (self topEntity isOfType: FASTCSSAttributeSelector).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'a'.
					self assert: (self topEntity isOfType: FASTCSSTagName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: 'b'.
					self assert: (self topEntity isOfType: FASTCSSAttributeName).
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{}'.
			self assert: (self topEntity isOfType: FASTCSSBlock).
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 5).
		self assert: self topEntity sourceCode equals: ''.
		self assert: (self topEntity isOfType: FASTCSSERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		stack pop.
	self assert: self topEntity source equals: '[a] {}
[b=c] {}
[d~=e] {}
a[b] {};' withPlatformLineEndings
]

{ #category : 'tests' }
FASTCSSImporterTest >> testGeneratedCallsWhereEachArgumentHasMultipleValues [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedCallsWhereEachArgumentHasMultipleValues 	"

	self parse: 'div {
  background: repeating-linear-gradient(red, orange 50px);
  clip-path: polygon(50% 0%, 60% 40%, 100% 50%, 60% 60%, 50% 100%, 40% 60%, 0% 50%, 40% 40%);
};'.

	self assert: (fast allWithType: FASTCSSArguments) size equals: 2.
	self assert: (fast allWithType: FASTCSSBlock) size equals: 1.
	self assert: (fast allWithType: FASTCSSCallExpression) size equals: 2.
	self assert: (fast allWithType: FASTCSSDeclaration) size equals: 2.
	self assert: (fast allWithType: FASTCSSERROR) size equals: 1.
	self assert: (fast allWithType: FASTCSSFunctionName) size equals: 2.
	self assert: (fast allWithType: FASTCSSIntegerValue) size equals: 17.
	self assert: (fast allWithType: FASTCSSPlainValue) size equals: 2.
	self assert: (fast allWithType: FASTCSSPropertyName) size equals: 2.
	self assert: (fast allWithType: FASTCSSRuleSet) size equals: 1.
	self assert: (fast allWithType: FASTCSSSelectors) size equals: 1.
	self assert: (fast allWithType: FASTCSSStylesheet) size equals: 1.
	self assert: (fast allWithType: FASTCSSTagName) size equals: 1.
	self assert: (fast allWithType: FASTCSSUnit) size equals: 17.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: 'div {
  background: repeating-linear-gradient(red, orange 50px);
  clip-path: polygon(50% 0%, 60% 40%, 100% 50%, 60% 60%, 50% 100%, 40% 60%, 0% 50%, 40% 40%);
};' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTCSSStylesheet).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 2.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: 'div {
  background: repeating-linear-gradient(red, orange 50px);
  clip-path: polygon(50% 0%, 60% 40%, 100% 50%, 60% 60%, 50% 100%, 40% 60%, 0% 50%, 40% 40%);
}' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTCSSRuleSet).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: 'div'.
			self assert: (self topEntity isOfType: FASTCSSSelectors).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'div'.
				self assert: (self topEntity isOfType: FASTCSSTagName).
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{
  background: repeating-linear-gradient(red, orange 50px);
  clip-path: polygon(50% 0%, 60% 40%, 100% 50%, 60% 60%, 50% 100%, 40% 60%, 0% 50%, 40% 40%);
}' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTCSSBlock).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 2.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'background: repeating-linear-gradient(red, orange 50px);'.
				self assert: (self topEntity isOfType: FASTCSSDeclaration).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'background'.
					self assert: (self topEntity isOfType: FASTCSSPropertyName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: 'repeating-linear-gradient(red, orange 50px)'.
					self assert: (self topEntity isOfType: FASTCSSCallExpression).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 2.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'repeating-linear-gradient'.
						self assert: (self topEntity isOfType: FASTCSSFunctionName).
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: '(red, orange 50px)'.
						self assert: (self topEntity isOfType: FASTCSSArguments).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 3.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'red'.
							self assert: (self topEntity isOfType: FASTCSSPlainValue).
							stack pop.
						
							stack push: (stack top childrenNodes at: 2).
							self assert: self topEntity sourceCode equals: 'orange'.
							self assert: (self topEntity isOfType: FASTCSSPlainValue).
							stack pop.
						
							stack push: (stack top childrenNodes at: 3).
							self assert: self topEntity sourceCode equals: '50px'.
							self assert: (self topEntity isOfType: FASTCSSIntegerValue).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'px'.
								self assert: (self topEntity isOfType: FASTCSSUnit).
								stack pop.
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: 'clip-path: polygon(50% 0%, 60% 40%, 100% 50%, 60% 60%, 50% 100%, 40% 60%, 0% 50%, 40% 40%);'.
				self assert: (self topEntity isOfType: FASTCSSDeclaration).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'clip-path'.
					self assert: (self topEntity isOfType: FASTCSSPropertyName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: 'polygon(50% 0%, 60% 40%, 100% 50%, 60% 60%, 50% 100%, 40% 60%, 0% 50%, 40% 40%)'.
					self assert: (self topEntity isOfType: FASTCSSCallExpression).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 2.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'polygon'.
						self assert: (self topEntity isOfType: FASTCSSFunctionName).
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: '(50% 0%, 60% 40%, 100% 50%, 60% 60%, 50% 100%, 40% 60%, 0% 50%, 40% 40%)'.
						self assert: (self topEntity isOfType: FASTCSSArguments).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 16.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: '50%'.
							self assert: (self topEntity isOfType: FASTCSSIntegerValue).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: '%'.
								self assert: (self topEntity isOfType: FASTCSSUnit).
								stack pop.
							stack pop.
						
							stack push: (stack top childrenNodes at: 2).
							self assert: self topEntity sourceCode equals: '0%'.
							self assert: (self topEntity isOfType: FASTCSSIntegerValue).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: '%'.
								self assert: (self topEntity isOfType: FASTCSSUnit).
								stack pop.
							stack pop.
						
							stack push: (stack top childrenNodes at: 3).
							self assert: self topEntity sourceCode equals: '60%'.
							self assert: (self topEntity isOfType: FASTCSSIntegerValue).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: '%'.
								self assert: (self topEntity isOfType: FASTCSSUnit).
								stack pop.
							stack pop.
						
							stack push: (stack top childrenNodes at: 4).
							self assert: self topEntity sourceCode equals: '40%'.
							self assert: (self topEntity isOfType: FASTCSSIntegerValue).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: '%'.
								self assert: (self topEntity isOfType: FASTCSSUnit).
								stack pop.
							stack pop.
						
							stack push: (stack top childrenNodes at: 5).
							self assert: self topEntity sourceCode equals: '100%'.
							self assert: (self topEntity isOfType: FASTCSSIntegerValue).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: '%'.
								self assert: (self topEntity isOfType: FASTCSSUnit).
								stack pop.
							stack pop.
						
							stack push: (stack top childrenNodes at: 6).
							self assert: self topEntity sourceCode equals: '50%'.
							self assert: (self topEntity isOfType: FASTCSSIntegerValue).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: '%'.
								self assert: (self topEntity isOfType: FASTCSSUnit).
								stack pop.
							stack pop.
						
							stack push: (stack top childrenNodes at: 7).
							self assert: self topEntity sourceCode equals: '60%'.
							self assert: (self topEntity isOfType: FASTCSSIntegerValue).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: '%'.
								self assert: (self topEntity isOfType: FASTCSSUnit).
								stack pop.
							stack pop.
						
							stack push: (stack top childrenNodes at: 8).
							self assert: self topEntity sourceCode equals: '60%'.
							self assert: (self topEntity isOfType: FASTCSSIntegerValue).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: '%'.
								self assert: (self topEntity isOfType: FASTCSSUnit).
								stack pop.
							stack pop.
						
							stack push: (stack top childrenNodes at: 9).
							self assert: self topEntity sourceCode equals: '50%'.
							self assert: (self topEntity isOfType: FASTCSSIntegerValue).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: '%'.
								self assert: (self topEntity isOfType: FASTCSSUnit).
								stack pop.
							stack pop.
						
							stack push: (stack top childrenNodes at: 10).
							self assert: self topEntity sourceCode equals: '100%'.
							self assert: (self topEntity isOfType: FASTCSSIntegerValue).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: '%'.
								self assert: (self topEntity isOfType: FASTCSSUnit).
								stack pop.
							stack pop.
						
							stack push: (stack top childrenNodes at: 11).
							self assert: self topEntity sourceCode equals: '40%'.
							self assert: (self topEntity isOfType: FASTCSSIntegerValue).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: '%'.
								self assert: (self topEntity isOfType: FASTCSSUnit).
								stack pop.
							stack pop.
						
							stack push: (stack top childrenNodes at: 12).
							self assert: self topEntity sourceCode equals: '60%'.
							self assert: (self topEntity isOfType: FASTCSSIntegerValue).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: '%'.
								self assert: (self topEntity isOfType: FASTCSSUnit).
								stack pop.
							stack pop.
						
							stack push: (stack top childrenNodes at: 13).
							self assert: self topEntity sourceCode equals: '0%'.
							self assert: (self topEntity isOfType: FASTCSSIntegerValue).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: '%'.
								self assert: (self topEntity isOfType: FASTCSSUnit).
								stack pop.
							stack pop.
						
							stack push: (stack top childrenNodes at: 14).
							self assert: self topEntity sourceCode equals: '50%'.
							self assert: (self topEntity isOfType: FASTCSSIntegerValue).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: '%'.
								self assert: (self topEntity isOfType: FASTCSSUnit).
								stack pop.
							stack pop.
						
							stack push: (stack top childrenNodes at: 15).
							self assert: self topEntity sourceCode equals: '40%'.
							self assert: (self topEntity isOfType: FASTCSSIntegerValue).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: '%'.
								self assert: (self topEntity isOfType: FASTCSSUnit).
								stack pop.
							stack pop.
						
							stack push: (stack top childrenNodes at: 16).
							self assert: self topEntity sourceCode equals: '40%'.
							self assert: (self topEntity isOfType: FASTCSSIntegerValue).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: '%'.
								self assert: (self topEntity isOfType: FASTCSSUnit).
								stack pop.
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: ''.
		self assert: (self topEntity isOfType: FASTCSSERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		stack pop.
	self assert: self topEntity source equals: 'div {
  background: repeating-linear-gradient(red, orange 50px);
  clip-path: polygon(50% 0%, 60% 40%, 100% 50%, 60% 60%, 50% 100%, 40% 60%, 0% 50%, 40% 40%);
};' withPlatformLineEndings
]

{ #category : 'tests' }
FASTCSSImporterTest >> testGeneratedCharsetStatements [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedCharsetStatements 	"

	self parse: '@charset "utf-8";;'.

	self assert: (fast allWithType: FASTCSSCharsetStatement) size equals: 1.
	self assert: (fast allWithType: FASTCSSERROR) size equals: 1.
	self assert: (fast allWithType: FASTCSSStringContent) size equals: 1.
	self assert: (fast allWithType: FASTCSSStringValue) size equals: 1.
	self assert: (fast allWithType: FASTCSSStylesheet) size equals: 1.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '@charset "utf-8";;'.
	self assert: (self topEntity isOfType: FASTCSSStylesheet).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 2.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '@charset "utf-8";'.
		self assert: (self topEntity isOfType: FASTCSSCharsetStatement).
		
		"Testing value of monovalue relation childrenNode"
		self assert: self topEntity childrenNode isNotNil.

			stack push: self topEntity childrenNode.
			self assert: self topEntity sourceCode equals: '"utf-8"'.
			self assert: (self topEntity isOfType: FASTCSSStringValue).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'utf-8'.
				self assert: (self topEntity isOfType: FASTCSSStringContent).
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: ''.
		self assert: (self topEntity isOfType: FASTCSSERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		stack pop.
	self assert: self topEntity source equals: '@charset "utf-8";;'
]

{ #category : 'tests' }
FASTCSSImporterTest >> testGeneratedChildSelectors [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedChildSelectors 	"

	self parse: 'a > b {}
c > d > e {};'.

	self assert: (fast allWithType: FASTCSSBlock) size equals: 2.
	self assert: (fast allWithType: FASTCSSChildSelector) size equals: 3.
	self assert: (fast allWithType: FASTCSSERROR) size equals: 1.
	self assert: (fast allWithType: FASTCSSRuleSet) size equals: 2.
	self assert: (fast allWithType: FASTCSSSelectors) size equals: 2.
	self assert: (fast allWithType: FASTCSSStylesheet) size equals: 1.
	self assert: (fast allWithType: FASTCSSTagName) size equals: 5.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: 'a > b {}
c > d > e {};' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTCSSStylesheet).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 3.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: 'a > b {}'.
		self assert: (self topEntity isOfType: FASTCSSRuleSet).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: 'a > b'.
			self assert: (self topEntity isOfType: FASTCSSSelectors).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'a > b'.
				self assert: (self topEntity isOfType: FASTCSSChildSelector).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'a'.
					self assert: (self topEntity isOfType: FASTCSSTagName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: 'b'.
					self assert: (self topEntity isOfType: FASTCSSTagName).
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{}'.
			self assert: (self topEntity isOfType: FASTCSSBlock).
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: 'c > d > e {}'.
		self assert: (self topEntity isOfType: FASTCSSRuleSet).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: 'c > d > e'.
			self assert: (self topEntity isOfType: FASTCSSSelectors).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'c > d > e'.
				self assert: (self topEntity isOfType: FASTCSSChildSelector).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'c > d'.
					self assert: (self topEntity isOfType: FASTCSSChildSelector).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 2.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'c'.
						self assert: (self topEntity isOfType: FASTCSSTagName).
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: 'd'.
						self assert: (self topEntity isOfType: FASTCSSTagName).
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: 'e'.
					self assert: (self topEntity isOfType: FASTCSSTagName).
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{}'.
			self assert: (self topEntity isOfType: FASTCSSBlock).
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 3).
		self assert: self topEntity sourceCode equals: ''.
		self assert: (self topEntity isOfType: FASTCSSERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		stack pop.
	self assert: self topEntity source equals: 'a > b {}
c > d > e {};' withPlatformLineEndings
]

{ #category : 'tests' }
FASTCSSImporterTest >> testGeneratedClassSelectors [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedClassSelectors 	"

	self parse: '.class-a {}
div.class-b, .class-c.class-d {};'.

	self assert: (fast allWithType: FASTCSSBlock) size equals: 2.
	self assert: (fast allWithType: FASTCSSClassName) size equals: 4.
	self assert: (fast allWithType: FASTCSSClassSelector) size equals: 4.
	self assert: (fast allWithType: FASTCSSERROR) size equals: 1.
	self assert: (fast allWithType: FASTCSSIdentifier) size equals: 4.
	self assert: (fast allWithType: FASTCSSRuleSet) size equals: 2.
	self assert: (fast allWithType: FASTCSSSelectors) size equals: 2.
	self assert: (fast allWithType: FASTCSSStylesheet) size equals: 1.
	self assert: (fast allWithType: FASTCSSTagName) size equals: 1.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '.class-a {}
div.class-b, .class-c.class-d {};' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTCSSStylesheet).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 3.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '.class-a {}'.
		self assert: (self topEntity isOfType: FASTCSSRuleSet).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '.class-a'.
			self assert: (self topEntity isOfType: FASTCSSSelectors).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '.class-a'.
				self assert: (self topEntity isOfType: FASTCSSClassSelector).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'class-a'.
					self assert: (self topEntity isOfType: FASTCSSClassName).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'class-a'.
						self assert: (self topEntity isOfType: FASTCSSIdentifier).
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{}'.
			self assert: (self topEntity isOfType: FASTCSSBlock).
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: 'div.class-b, .class-c.class-d {}'.
		self assert: (self topEntity isOfType: FASTCSSRuleSet).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: 'div.class-b, .class-c.class-d'.
			self assert: (self topEntity isOfType: FASTCSSSelectors).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 2.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'div.class-b'.
				self assert: (self topEntity isOfType: FASTCSSClassSelector).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'div'.
					self assert: (self topEntity isOfType: FASTCSSTagName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: 'class-b'.
					self assert: (self topEntity isOfType: FASTCSSClassName).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'class-b'.
						self assert: (self topEntity isOfType: FASTCSSIdentifier).
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: '.class-c.class-d'.
				self assert: (self topEntity isOfType: FASTCSSClassSelector).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: '.class-c'.
					self assert: (self topEntity isOfType: FASTCSSClassSelector).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'class-c'.
						self assert: (self topEntity isOfType: FASTCSSClassName).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'class-c'.
							self assert: (self topEntity isOfType: FASTCSSIdentifier).
							stack pop.
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: 'class-d'.
					self assert: (self topEntity isOfType: FASTCSSClassName).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'class-d'.
						self assert: (self topEntity isOfType: FASTCSSIdentifier).
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{}'.
			self assert: (self topEntity isOfType: FASTCSSBlock).
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 3).
		self assert: self topEntity sourceCode equals: ''.
		self assert: (self topEntity isOfType: FASTCSSERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		stack pop.
	self assert: self topEntity source equals: '.class-a {}
div.class-b, .class-c.class-d {};' withPlatformLineEndings
]

{ #category : 'tests' }
FASTCSSImporterTest >> testGeneratedColorLiterals [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedColorLiterals 	"

	self parse: 'a {
  b: #fafd04;
  c: #fafd0401;
};'.

	self assert: (fast allWithType: FASTCSSBlock) size equals: 1.
	self assert: (fast allWithType: FASTCSSColorValue) size equals: 2.
	self assert: (fast allWithType: FASTCSSDeclaration) size equals: 2.
	self assert: (fast allWithType: FASTCSSERROR) size equals: 1.
	self assert: (fast allWithType: FASTCSSPropertyName) size equals: 2.
	self assert: (fast allWithType: FASTCSSRuleSet) size equals: 1.
	self assert: (fast allWithType: FASTCSSSelectors) size equals: 1.
	self assert: (fast allWithType: FASTCSSStylesheet) size equals: 1.
	self assert: (fast allWithType: FASTCSSTagName) size equals: 1.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: 'a {
  b: #fafd04;
  c: #fafd0401;
};' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTCSSStylesheet).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 2.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: 'a {
  b: #fafd04;
  c: #fafd0401;
}' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTCSSRuleSet).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: 'a'.
			self assert: (self topEntity isOfType: FASTCSSSelectors).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'a'.
				self assert: (self topEntity isOfType: FASTCSSTagName).
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{
  b: #fafd04;
  c: #fafd0401;
}' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTCSSBlock).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 2.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'b: #fafd04;'.
				self assert: (self topEntity isOfType: FASTCSSDeclaration).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'b'.
					self assert: (self topEntity isOfType: FASTCSSPropertyName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '#fafd04'.
					self assert: (self topEntity isOfType: FASTCSSColorValue).
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: 'c: #fafd0401;'.
				self assert: (self topEntity isOfType: FASTCSSDeclaration).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'c'.
					self assert: (self topEntity isOfType: FASTCSSPropertyName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '#fafd0401'.
					self assert: (self topEntity isOfType: FASTCSSColorValue).
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: ''.
		self assert: (self topEntity isOfType: FASTCSSERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		stack pop.
	self assert: self topEntity source equals: 'a {
  b: #fafd04;
  c: #fafd0401;
};' withPlatformLineEndings
]

{ #category : 'tests' }
FASTCSSImporterTest >> testGeneratedCommentsRightAfterNumbers [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedCommentsRightAfterNumbers 	"

	self parse: '// A comment
a {
	shape-outside: circle(20em/*=*/at 50% 50%);
	shape-outside: inset(1em, 1em, 1em, 1em);
};'.

	self assert: (fast allWithType: FASTCSSArguments) size equals: 2.
	self assert: (fast allWithType: FASTCSSBlock) size equals: 1.
	self assert: (fast allWithType: FASTCSSCallExpression) size equals: 2.
	self assert: (fast allWithType: FASTCSSComment) size equals: 1.
	self assert: (fast allWithType: FASTCSSDeclaration) size equals: 2.
	self assert: (fast allWithType: FASTCSSERROR) size equals: 1.
	self assert: (fast allWithType: FASTCSSFunctionName) size equals: 2.
	self assert: (fast allWithType: FASTCSSIntegerValue) size equals: 7.
	self assert: (fast allWithType: FASTCSSJsComment) size equals: 1.
	self assert: (fast allWithType: FASTCSSPlainValue) size equals: 1.
	self assert: (fast allWithType: FASTCSSPropertyName) size equals: 2.
	self assert: (fast allWithType: FASTCSSRuleSet) size equals: 1.
	self assert: (fast allWithType: FASTCSSSelectors) size equals: 1.
	self assert: (fast allWithType: FASTCSSStylesheet) size equals: 1.
	self assert: (fast allWithType: FASTCSSTagName) size equals: 1.
	self assert: (fast allWithType: FASTCSSUnit) size equals: 7.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '// A comment
a {
	shape-outside: circle(20em/*=*/at 50% 50%);
	shape-outside: inset(1em, 1em, 1em, 1em);
};' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTCSSStylesheet).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 3.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '// A comment
'.
		self assert: (self topEntity isOfType: FASTCSSJsComment).
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: 'a {
	shape-outside: circle(20em/*=*/at 50% 50%);
	shape-outside: inset(1em, 1em, 1em, 1em);
}' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTCSSRuleSet).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: 'a'.
			self assert: (self topEntity isOfType: FASTCSSSelectors).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'a'.
				self assert: (self topEntity isOfType: FASTCSSTagName).
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{
	shape-outside: circle(20em/*=*/at 50% 50%);
	shape-outside: inset(1em, 1em, 1em, 1em);
}' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTCSSBlock).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 2.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'shape-outside: circle(20em/*=*/at 50% 50%);'.
				self assert: (self topEntity isOfType: FASTCSSDeclaration).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'shape-outside'.
					self assert: (self topEntity isOfType: FASTCSSPropertyName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: 'circle(20em/*=*/at 50% 50%)'.
					self assert: (self topEntity isOfType: FASTCSSCallExpression).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 2.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'circle'.
						self assert: (self topEntity isOfType: FASTCSSFunctionName).
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: '(20em/*=*/at 50% 50%)'.
						self assert: (self topEntity isOfType: FASTCSSArguments).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 5.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: '20em'.
							self assert: (self topEntity isOfType: FASTCSSIntegerValue).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'em'.
								self assert: (self topEntity isOfType: FASTCSSUnit).
								stack pop.
							stack pop.
						
							stack push: (stack top childrenNodes at: 2).
							self assert: self topEntity sourceCode equals: '/*=*/'.
							self assert: (self topEntity isOfType: FASTCSSComment).
							stack pop.
						
							stack push: (stack top childrenNodes at: 3).
							self assert: self topEntity sourceCode equals: 'at'.
							self assert: (self topEntity isOfType: FASTCSSPlainValue).
							stack pop.
						
							stack push: (stack top childrenNodes at: 4).
							self assert: self topEntity sourceCode equals: '50%'.
							self assert: (self topEntity isOfType: FASTCSSIntegerValue).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: '%'.
								self assert: (self topEntity isOfType: FASTCSSUnit).
								stack pop.
							stack pop.
						
							stack push: (stack top childrenNodes at: 5).
							self assert: self topEntity sourceCode equals: '50%'.
							self assert: (self topEntity isOfType: FASTCSSIntegerValue).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: '%'.
								self assert: (self topEntity isOfType: FASTCSSUnit).
								stack pop.
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: 'shape-outside: inset(1em, 1em, 1em, 1em);'.
				self assert: (self topEntity isOfType: FASTCSSDeclaration).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'shape-outside'.
					self assert: (self topEntity isOfType: FASTCSSPropertyName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: 'inset(1em, 1em, 1em, 1em)'.
					self assert: (self topEntity isOfType: FASTCSSCallExpression).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 2.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'inset'.
						self assert: (self topEntity isOfType: FASTCSSFunctionName).
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: '(1em, 1em, 1em, 1em)'.
						self assert: (self topEntity isOfType: FASTCSSArguments).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 4.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: '1em'.
							self assert: (self topEntity isOfType: FASTCSSIntegerValue).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'em'.
								self assert: (self topEntity isOfType: FASTCSSUnit).
								stack pop.
							stack pop.
						
							stack push: (stack top childrenNodes at: 2).
							self assert: self topEntity sourceCode equals: '1em'.
							self assert: (self topEntity isOfType: FASTCSSIntegerValue).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'em'.
								self assert: (self topEntity isOfType: FASTCSSUnit).
								stack pop.
							stack pop.
						
							stack push: (stack top childrenNodes at: 3).
							self assert: self topEntity sourceCode equals: '1em'.
							self assert: (self topEntity isOfType: FASTCSSIntegerValue).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'em'.
								self assert: (self topEntity isOfType: FASTCSSUnit).
								stack pop.
							stack pop.
						
							stack push: (stack top childrenNodes at: 4).
							self assert: self topEntity sourceCode equals: '1em'.
							self assert: (self topEntity isOfType: FASTCSSIntegerValue).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'em'.
								self assert: (self topEntity isOfType: FASTCSSUnit).
								stack pop.
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 3).
		self assert: self topEntity sourceCode equals: ''.
		self assert: (self topEntity isOfType: FASTCSSERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		stack pop.
	self assert: self topEntity source equals: '// A comment
a {
	shape-outside: circle(20em/*=*/at 50% 50%);
	shape-outside: inset(1em, 1em, 1em, 1em);
};' withPlatformLineEndings
]

{ #category : 'tests' }
FASTCSSImporterTest >> testGeneratedDeclarationsAtTheTopLevel [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedDeclarationsAtTheTopLevel 	"

	self parse: '--a-variable: -5px;
a-property: calc(5px + var(--a-variable));;'.

	self assert: (fast allWithType: FASTCSSArguments) size equals: 2.
	self assert: (fast allWithType: FASTCSSBinaryExpression) size equals: 1.
	self assert: (fast allWithType: FASTCSSCallExpression) size equals: 2.
	self assert: (fast allWithType: FASTCSSDeclaration) size equals: 2.
	self assert: (fast allWithType: FASTCSSERROR) size equals: 1.
	self assert: (fast allWithType: FASTCSSFunctionName) size equals: 2.
	self assert: (fast allWithType: FASTCSSIntegerValue) size equals: 2.
	self assert: (fast allWithType: FASTCSSPlainValue) size equals: 1.
	self assert: (fast allWithType: FASTCSSPropertyName) size equals: 2.
	self assert: (fast allWithType: FASTCSSStylesheet) size equals: 1.
	self assert: (fast allWithType: FASTCSSUnit) size equals: 2.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '--a-variable: -5px;
a-property: calc(5px + var(--a-variable));;' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTCSSStylesheet).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 3.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '--a-variable: -5px;'.
		self assert: (self topEntity isOfType: FASTCSSDeclaration).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '--a-variable'.
			self assert: (self topEntity isOfType: FASTCSSPropertyName).
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '-5px'.
			self assert: (self topEntity isOfType: FASTCSSIntegerValue).
			
			"Testing value of monovalue relation childrenNode"
			self assert: self topEntity childrenNode isNotNil.

				stack push: self topEntity childrenNode.
				self assert: self topEntity sourceCode equals: 'px'.
				self assert: (self topEntity isOfType: FASTCSSUnit).
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: 'a-property: calc(5px + var(--a-variable));'.
		self assert: (self topEntity isOfType: FASTCSSDeclaration).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: 'a-property'.
			self assert: (self topEntity isOfType: FASTCSSPropertyName).
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: 'calc(5px + var(--a-variable))'.
			self assert: (self topEntity isOfType: FASTCSSCallExpression).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 2.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'calc'.
				self assert: (self topEntity isOfType: FASTCSSFunctionName).
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: '(5px + var(--a-variable))'.
				self assert: (self topEntity isOfType: FASTCSSArguments).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: '5px + var(--a-variable)'.
					self assert: (self topEntity isOfType: FASTCSSBinaryExpression).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 2.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '5px'.
						self assert: (self topEntity isOfType: FASTCSSIntegerValue).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: 'px'.
							self assert: (self topEntity isOfType: FASTCSSUnit).
							stack pop.
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: 'var(--a-variable)'.
						self assert: (self topEntity isOfType: FASTCSSCallExpression).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 2.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'var'.
							self assert: (self topEntity isOfType: FASTCSSFunctionName).
							stack pop.
						
							stack push: (stack top childrenNodes at: 2).
							self assert: self topEntity sourceCode equals: '(--a-variable)'.
							self assert: (self topEntity isOfType: FASTCSSArguments).
							
							"Testing value of multivalued relation childrenNodes"
							self assert: self topEntity childrenNodes size equals: 1.
							
								stack push: (stack top childrenNodes at: 1).
								self assert: self topEntity sourceCode equals: '--a-variable'.
								self assert: (self topEntity isOfType: FASTCSSPlainValue).
								stack pop.
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 3).
		self assert: self topEntity sourceCode equals: ''.
		self assert: (self topEntity isOfType: FASTCSSERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		stack pop.
	self assert: self topEntity source equals: '--a-variable: -5px;
a-property: calc(5px + var(--a-variable));;' withPlatformLineEndings
]

{ #category : 'tests' }
FASTCSSImporterTest >> testGeneratedDeclarationsWithoutTrailingSemicolons [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedDeclarationsWithoutTrailingSemicolons 	"

	self parse: 'a {
  b: c;
  d: e
};'.

	self assert: (fast allWithType: FASTCSSBlock) size equals: 1.
	self assert: (fast allWithType: FASTCSSDeclaration) size equals: 2.
	self assert: (fast allWithType: FASTCSSERROR) size equals: 1.
	self assert: (fast allWithType: FASTCSSPlainValue) size equals: 2.
	self assert: (fast allWithType: FASTCSSPropertyName) size equals: 2.
	self assert: (fast allWithType: FASTCSSRuleSet) size equals: 1.
	self assert: (fast allWithType: FASTCSSSelectors) size equals: 1.
	self assert: (fast allWithType: FASTCSSStylesheet) size equals: 1.
	self assert: (fast allWithType: FASTCSSTagName) size equals: 1.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: 'a {
  b: c;
  d: e
};' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTCSSStylesheet).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 2.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: 'a {
  b: c;
  d: e
}' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTCSSRuleSet).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: 'a'.
			self assert: (self topEntity isOfType: FASTCSSSelectors).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'a'.
				self assert: (self topEntity isOfType: FASTCSSTagName).
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{
  b: c;
  d: e
}' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTCSSBlock).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 2.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'b: c;'.
				self assert: (self topEntity isOfType: FASTCSSDeclaration).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'b'.
					self assert: (self topEntity isOfType: FASTCSSPropertyName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: 'c'.
					self assert: (self topEntity isOfType: FASTCSSPlainValue).
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: 'd: e'.
				self assert: (self topEntity isOfType: FASTCSSDeclaration).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'd'.
					self assert: (self topEntity isOfType: FASTCSSPropertyName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: 'e'.
					self assert: (self topEntity isOfType: FASTCSSPlainValue).
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: ''.
		self assert: (self topEntity isOfType: FASTCSSERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		stack pop.
	self assert: self topEntity source equals: 'a {
  b: c;
  d: e
};' withPlatformLineEndings
]

{ #category : 'tests' }
FASTCSSImporterTest >> testGeneratedDescendantSelectors [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedDescendantSelectors 	"

	self parse: 'a b {}
c d e {}
f * {};'.

	self assert: (fast allWithType: FASTCSSBlock) size equals: 3.
	self assert: (fast allWithType: FASTCSSDescendantSelector) size equals: 4.
	self assert: (fast allWithType: FASTCSSERROR) size equals: 1.
	self assert: (fast allWithType: FASTCSSRuleSet) size equals: 3.
	self assert: (fast allWithType: FASTCSSSelectors) size equals: 3.
	self assert: (fast allWithType: FASTCSSStylesheet) size equals: 1.
	self assert: (fast allWithType: FASTCSSTagName) size equals: 6.
	self assert: (fast allWithType: FASTCSSUniversalSelector) size equals: 1.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: 'a b {}
c d e {}
f * {};' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTCSSStylesheet).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 4.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: 'a b {}'.
		self assert: (self topEntity isOfType: FASTCSSRuleSet).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: 'a b'.
			self assert: (self topEntity isOfType: FASTCSSSelectors).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'a b'.
				self assert: (self topEntity isOfType: FASTCSSDescendantSelector).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'a'.
					self assert: (self topEntity isOfType: FASTCSSTagName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: 'b'.
					self assert: (self topEntity isOfType: FASTCSSTagName).
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{}'.
			self assert: (self topEntity isOfType: FASTCSSBlock).
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: 'c d e {}'.
		self assert: (self topEntity isOfType: FASTCSSRuleSet).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: 'c d e'.
			self assert: (self topEntity isOfType: FASTCSSSelectors).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'c d e'.
				self assert: (self topEntity isOfType: FASTCSSDescendantSelector).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'c d'.
					self assert: (self topEntity isOfType: FASTCSSDescendantSelector).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 2.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'c'.
						self assert: (self topEntity isOfType: FASTCSSTagName).
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: 'd'.
						self assert: (self topEntity isOfType: FASTCSSTagName).
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: 'e'.
					self assert: (self topEntity isOfType: FASTCSSTagName).
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{}'.
			self assert: (self topEntity isOfType: FASTCSSBlock).
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 3).
		self assert: self topEntity sourceCode equals: 'f * {}'.
		self assert: (self topEntity isOfType: FASTCSSRuleSet).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: 'f *'.
			self assert: (self topEntity isOfType: FASTCSSSelectors).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'f *'.
				self assert: (self topEntity isOfType: FASTCSSDescendantSelector).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'f'.
					self assert: (self topEntity isOfType: FASTCSSTagName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '*'.
					self assert: (self topEntity isOfType: FASTCSSUniversalSelector).
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{}'.
			self assert: (self topEntity isOfType: FASTCSSBlock).
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 4).
		self assert: self topEntity sourceCode equals: ''.
		self assert: (self topEntity isOfType: FASTCSSERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		stack pop.
	self assert: self topEntity source equals: 'a b {}
c d e {}
f * {};' withPlatformLineEndings
]

{ #category : 'tests' }
FASTCSSImporterTest >> testGeneratedEscapeSequences [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedEscapeSequences 	"

	self parse: '.hover\:bg-blue-600::before {
	content: "\f123";
}

.a\.5 {};'.

	self assert: (fast allWithType: FASTCSSBlock) size equals: 2.
	self assert: (fast allWithType: FASTCSSClassName) size equals: 2.
	self assert: (fast allWithType: FASTCSSClassSelector) size equals: 2.
	self assert: (fast allWithType: FASTCSSDeclaration) size equals: 1.
	self assert: (fast allWithType: FASTCSSERROR) size equals: 1.
	self assert: (fast allWithType: FASTCSSEscapeSequence) size equals: 3.
	self assert: (fast allWithType: FASTCSSIdentifier) size equals: 4.
	self assert: (fast allWithType: FASTCSSPropertyName) size equals: 1.
	self assert: (fast allWithType: FASTCSSPseudoElementSelector) size equals: 1.
	self assert: (fast allWithType: FASTCSSRuleSet) size equals: 2.
	self assert: (fast allWithType: FASTCSSSelectors) size equals: 2.
	self assert: (fast allWithType: FASTCSSStringValue) size equals: 1.
	self assert: (fast allWithType: FASTCSSStylesheet) size equals: 1.
	self assert: (fast allWithType: FASTCSSTagName) size equals: 1.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '.hover\:bg-blue-600::before {
	content: "\f123";
}

.a\.5 {};' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTCSSStylesheet).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 3.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '.hover\:bg-blue-600::before {
	content: "\f123";
}' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTCSSRuleSet).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '.hover\:bg-blue-600::before'.
			self assert: (self topEntity isOfType: FASTCSSSelectors).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '.hover\:bg-blue-600::before'.
				self assert: (self topEntity isOfType: FASTCSSPseudoElementSelector).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: '.hover\:bg-blue-600'.
					self assert: (self topEntity isOfType: FASTCSSClassSelector).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'hover\:bg-blue-600'.
						self assert: (self topEntity isOfType: FASTCSSClassName).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 3.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'hover'.
							self assert: (self topEntity isOfType: FASTCSSIdentifier).
							stack pop.
						
							stack push: (stack top childrenNodes at: 2).
							self assert: self topEntity sourceCode equals: '\:'.
							self assert: (self topEntity isOfType: FASTCSSEscapeSequence).
							stack pop.
						
							stack push: (stack top childrenNodes at: 3).
							self assert: self topEntity sourceCode equals: 'bg-blue-600'.
							self assert: (self topEntity isOfType: FASTCSSIdentifier).
							stack pop.
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: 'before'.
					self assert: (self topEntity isOfType: FASTCSSTagName).
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{
	content: "\f123";
}' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTCSSBlock).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'content: "\f123";'.
				self assert: (self topEntity isOfType: FASTCSSDeclaration).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'content'.
					self assert: (self topEntity isOfType: FASTCSSPropertyName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '"\f123"'.
					self assert: (self topEntity isOfType: FASTCSSStringValue).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '\f123'.
						self assert: (self topEntity isOfType: FASTCSSEscapeSequence).
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: '.a\.5 {}'.
		self assert: (self topEntity isOfType: FASTCSSRuleSet).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '.a\.5'.
			self assert: (self topEntity isOfType: FASTCSSSelectors).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '.a\.5'.
				self assert: (self topEntity isOfType: FASTCSSClassSelector).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'a\.5'.
					self assert: (self topEntity isOfType: FASTCSSClassName).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 3.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'a'.
						self assert: (self topEntity isOfType: FASTCSSIdentifier).
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: '\.'.
						self assert: (self topEntity isOfType: FASTCSSEscapeSequence).
						stack pop.
					
						stack push: (stack top childrenNodes at: 3).
						self assert: self topEntity sourceCode equals: '5'.
						self assert: (self topEntity isOfType: FASTCSSIdentifier).
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{}'.
			self assert: (self topEntity isOfType: FASTCSSBlock).
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 3).
		self assert: self topEntity sourceCode equals: ''.
		self assert: (self topEntity isOfType: FASTCSSERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		stack pop.
	self assert: self topEntity source equals: '.hover\:bg-blue-600::before {
	content: "\f123";
}

.a\.5 {};' withPlatformLineEndings
]

{ #category : 'tests' }
FASTCSSImporterTest >> testGeneratedFunctionCalls [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedFunctionCalls 	"

	self parse: 'a {
  color: rgba(0, 255, 0, 0.5);
};'.

	self assert: (fast allWithType: FASTCSSArguments) size equals: 1.
	self assert: (fast allWithType: FASTCSSBlock) size equals: 1.
	self assert: (fast allWithType: FASTCSSCallExpression) size equals: 1.
	self assert: (fast allWithType: FASTCSSDeclaration) size equals: 1.
	self assert: (fast allWithType: FASTCSSERROR) size equals: 1.
	self assert: (fast allWithType: FASTCSSFloatValue) size equals: 1.
	self assert: (fast allWithType: FASTCSSFunctionName) size equals: 1.
	self assert: (fast allWithType: FASTCSSIntegerValue) size equals: 3.
	self assert: (fast allWithType: FASTCSSPropertyName) size equals: 1.
	self assert: (fast allWithType: FASTCSSRuleSet) size equals: 1.
	self assert: (fast allWithType: FASTCSSSelectors) size equals: 1.
	self assert: (fast allWithType: FASTCSSStylesheet) size equals: 1.
	self assert: (fast allWithType: FASTCSSTagName) size equals: 1.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: 'a {
  color: rgba(0, 255, 0, 0.5);
};' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTCSSStylesheet).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 2.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: 'a {
  color: rgba(0, 255, 0, 0.5);
}' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTCSSRuleSet).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: 'a'.
			self assert: (self topEntity isOfType: FASTCSSSelectors).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'a'.
				self assert: (self topEntity isOfType: FASTCSSTagName).
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{
  color: rgba(0, 255, 0, 0.5);
}' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTCSSBlock).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'color: rgba(0, 255, 0, 0.5);'.
				self assert: (self topEntity isOfType: FASTCSSDeclaration).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'color'.
					self assert: (self topEntity isOfType: FASTCSSPropertyName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: 'rgba(0, 255, 0, 0.5)'.
					self assert: (self topEntity isOfType: FASTCSSCallExpression).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 2.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'rgba'.
						self assert: (self topEntity isOfType: FASTCSSFunctionName).
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: '(0, 255, 0, 0.5)'.
						self assert: (self topEntity isOfType: FASTCSSArguments).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 4.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: '0'.
							self assert: (self topEntity isOfType: FASTCSSIntegerValue).
							stack pop.
						
							stack push: (stack top childrenNodes at: 2).
							self assert: self topEntity sourceCode equals: '255'.
							self assert: (self topEntity isOfType: FASTCSSIntegerValue).
							stack pop.
						
							stack push: (stack top childrenNodes at: 3).
							self assert: self topEntity sourceCode equals: '0'.
							self assert: (self topEntity isOfType: FASTCSSIntegerValue).
							stack pop.
						
							stack push: (stack top childrenNodes at: 4).
							self assert: self topEntity sourceCode equals: '0.5'.
							self assert: (self topEntity isOfType: FASTCSSFloatValue).
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: ''.
		self assert: (self topEntity isOfType: FASTCSSERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		stack pop.
	self assert: self topEntity source equals: 'a {
  color: rgba(0, 255, 0, 0.5);
};' withPlatformLineEndings
]

{ #category : 'tests' }
FASTCSSImporterTest >> testGeneratedIdSelectors [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedIdSelectors 	"

	self parse: '#some-id, a#another-id {};'.

	self assert: (fast allWithType: FASTCSSBlock) size equals: 1.
	self assert: (fast allWithType: FASTCSSERROR) size equals: 1.
	self assert: (fast allWithType: FASTCSSIdName) size equals: 2.
	self assert: (fast allWithType: FASTCSSIdSelector) size equals: 2.
	self assert: (fast allWithType: FASTCSSRuleSet) size equals: 1.
	self assert: (fast allWithType: FASTCSSSelectors) size equals: 1.
	self assert: (fast allWithType: FASTCSSStylesheet) size equals: 1.
	self assert: (fast allWithType: FASTCSSTagName) size equals: 1.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '#some-id, a#another-id {};'.
	self assert: (self topEntity isOfType: FASTCSSStylesheet).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 2.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '#some-id, a#another-id {}'.
		self assert: (self topEntity isOfType: FASTCSSRuleSet).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '#some-id, a#another-id'.
			self assert: (self topEntity isOfType: FASTCSSSelectors).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 2.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '#some-id'.
				self assert: (self topEntity isOfType: FASTCSSIdSelector).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'some-id'.
					self assert: (self topEntity isOfType: FASTCSSIdName).
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: 'a#another-id'.
				self assert: (self topEntity isOfType: FASTCSSIdSelector).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'a'.
					self assert: (self topEntity isOfType: FASTCSSTagName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: 'another-id'.
					self assert: (self topEntity isOfType: FASTCSSIdName).
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{}'.
			self assert: (self topEntity isOfType: FASTCSSBlock).
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: ''.
		self assert: (self topEntity isOfType: FASTCSSERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		stack pop.
	self assert: self topEntity source equals: '#some-id, a#another-id {};'
]

{ #category : 'tests' }
FASTCSSImporterTest >> testGeneratedImportStatements [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedImportStatements 	"

	self parse: '@import url("fineprint.css") print;
@import url("bluish.css") speech;
@import ''custom.css'';
@import url("chrome://communicator/skin/");
@import "common.css" screen;;'.

	self assert: (fast allWithType: FASTCSSArguments) size equals: 3.
	self assert: (fast allWithType: FASTCSSCallExpression) size equals: 3.
	self assert: (fast allWithType: FASTCSSERROR) size equals: 1.
	self assert: (fast allWithType: FASTCSSFunctionName) size equals: 3.
	self assert: (fast allWithType: FASTCSSImportStatement) size equals: 5.
	self assert: (fast allWithType: FASTCSSKeywordQuery) size equals: 3.
	self assert: (fast allWithType: FASTCSSStringContent) size equals: 5.
	self assert: (fast allWithType: FASTCSSStringValue) size equals: 5.
	self assert: (fast allWithType: FASTCSSStylesheet) size equals: 1.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '@import url("fineprint.css") print;
@import url("bluish.css") speech;
@import ''custom.css'';
@import url("chrome://communicator/skin/");
@import "common.css" screen;;' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTCSSStylesheet).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 6.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '@import url("fineprint.css") print;'.
		self assert: (self topEntity isOfType: FASTCSSImportStatement).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: 'url("fineprint.css")'.
			self assert: (self topEntity isOfType: FASTCSSCallExpression).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 2.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'url'.
				self assert: (self topEntity isOfType: FASTCSSFunctionName).
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: '("fineprint.css")'.
				self assert: (self topEntity isOfType: FASTCSSArguments).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: '"fineprint.css"'.
					self assert: (self topEntity isOfType: FASTCSSStringValue).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'fineprint.css'.
						self assert: (self topEntity isOfType: FASTCSSStringContent).
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: 'print'.
			self assert: (self topEntity isOfType: FASTCSSKeywordQuery).
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: '@import url("bluish.css") speech;'.
		self assert: (self topEntity isOfType: FASTCSSImportStatement).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: 'url("bluish.css")'.
			self assert: (self topEntity isOfType: FASTCSSCallExpression).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 2.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'url'.
				self assert: (self topEntity isOfType: FASTCSSFunctionName).
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: '("bluish.css")'.
				self assert: (self topEntity isOfType: FASTCSSArguments).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: '"bluish.css"'.
					self assert: (self topEntity isOfType: FASTCSSStringValue).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'bluish.css'.
						self assert: (self topEntity isOfType: FASTCSSStringContent).
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: 'speech'.
			self assert: (self topEntity isOfType: FASTCSSKeywordQuery).
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 3).
		self assert: self topEntity sourceCode equals: '@import ''custom.css'';'.
		self assert: (self topEntity isOfType: FASTCSSImportStatement).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 1.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '''custom.css'''.
			self assert: (self topEntity isOfType: FASTCSSStringValue).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'custom.css'.
				self assert: (self topEntity isOfType: FASTCSSStringContent).
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 4).
		self assert: self topEntity sourceCode equals: '@import url("chrome://communicator/skin/");'.
		self assert: (self topEntity isOfType: FASTCSSImportStatement).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 1.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: 'url("chrome://communicator/skin/")'.
			self assert: (self topEntity isOfType: FASTCSSCallExpression).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 2.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'url'.
				self assert: (self topEntity isOfType: FASTCSSFunctionName).
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: '("chrome://communicator/skin/")'.
				self assert: (self topEntity isOfType: FASTCSSArguments).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: '"chrome://communicator/skin/"'.
					self assert: (self topEntity isOfType: FASTCSSStringValue).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'chrome://communicator/skin/'.
						self assert: (self topEntity isOfType: FASTCSSStringContent).
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 5).
		self assert: self topEntity sourceCode equals: '@import "common.css" screen;'.
		self assert: (self topEntity isOfType: FASTCSSImportStatement).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '"common.css"'.
			self assert: (self topEntity isOfType: FASTCSSStringValue).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'common.css'.
				self assert: (self topEntity isOfType: FASTCSSStringContent).
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: 'screen'.
			self assert: (self topEntity isOfType: FASTCSSKeywordQuery).
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 6).
		self assert: self topEntity sourceCode equals: ''.
		self assert: (self topEntity isOfType: FASTCSSERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		stack pop.
	self assert: self topEntity source equals: '@import url("fineprint.css") print;
@import url("bluish.css") speech;
@import ''custom.css'';
@import url("chrome://communicator/skin/");
@import "common.css" screen;;' withPlatformLineEndings
]

{ #category : 'tests' }
FASTCSSImporterTest >> testGeneratedImportantDeclarations [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedImportantDeclarations 	"

	self parse: 'a {
  b: c !important;
};'.

	self assert: (fast allWithType: FASTCSSBlock) size equals: 1.
	self assert: (fast allWithType: FASTCSSDeclaration) size equals: 1.
	self assert: (fast allWithType: FASTCSSERROR) size equals: 1.
	self assert: (fast allWithType: FASTCSSImportant) size equals: 1.
	self assert: (fast allWithType: FASTCSSPlainValue) size equals: 1.
	self assert: (fast allWithType: FASTCSSPropertyName) size equals: 1.
	self assert: (fast allWithType: FASTCSSRuleSet) size equals: 1.
	self assert: (fast allWithType: FASTCSSSelectors) size equals: 1.
	self assert: (fast allWithType: FASTCSSStylesheet) size equals: 1.
	self assert: (fast allWithType: FASTCSSTagName) size equals: 1.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: 'a {
  b: c !important;
};' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTCSSStylesheet).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 2.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: 'a {
  b: c !important;
}' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTCSSRuleSet).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: 'a'.
			self assert: (self topEntity isOfType: FASTCSSSelectors).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'a'.
				self assert: (self topEntity isOfType: FASTCSSTagName).
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{
  b: c !important;
}' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTCSSBlock).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'b: c !important;'.
				self assert: (self topEntity isOfType: FASTCSSDeclaration).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 3.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'b'.
					self assert: (self topEntity isOfType: FASTCSSPropertyName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: 'c'.
					self assert: (self topEntity isOfType: FASTCSSPlainValue).
					stack pop.
				
					stack push: (stack top childrenNodes at: 3).
					self assert: self topEntity sourceCode equals: '!important'.
					self assert: (self topEntity isOfType: FASTCSSImportant).
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: ''.
		self assert: (self topEntity isOfType: FASTCSSERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		stack pop.
	self assert: self topEntity source equals: 'a {
  b: c !important;
};' withPlatformLineEndings
]

{ #category : 'tests' }
FASTCSSImporterTest >> testGeneratedKeyframesStatements [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedKeyframesStatements 	"

	self parse: '@keyframes important1 {
  from { margin-top: 50px; }
  50%  { margin-top: 150px !important; } /* ignored */
  to   { margin-top: 100px; }
}

@keyframes hello {
  0%, 50% {}
};'.

	self assert: (fast allWithType: FASTCSSBlock) size equals: 4.
	self assert: (fast allWithType: FASTCSSComment) size equals: 1.
	self assert: (fast allWithType: FASTCSSDeclaration) size equals: 3.
	self assert: (fast allWithType: FASTCSSERROR) size equals: 1.
	self assert: (fast allWithType: FASTCSSFrom) size equals: 1.
	self assert: (fast allWithType: FASTCSSImportant) size equals: 1.
	self assert: (fast allWithType: FASTCSSIntegerValue) size equals: 6.
	self assert: (fast allWithType: FASTCSSKeyframeBlock) size equals: 4.
	self assert: (fast allWithType: FASTCSSKeyframeBlockList) size equals: 2.
	self assert: (fast allWithType: FASTCSSKeyframesName) size equals: 2.
	self assert: (fast allWithType: FASTCSSKeyframesStatement) size equals: 2.
	self assert: (fast allWithType: FASTCSSPropertyName) size equals: 3.
	self assert: (fast allWithType: FASTCSSStylesheet) size equals: 1.
	self assert: (fast allWithType: FASTCSSTo) size equals: 1.
	self assert: (fast allWithType: FASTCSSUnit) size equals: 6.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '@keyframes important1 {
  from { margin-top: 50px; }
  50%  { margin-top: 150px !important; } /* ignored */
  to   { margin-top: 100px; }
}

@keyframes hello {
  0%, 50% {}
};' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTCSSStylesheet).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 3.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '@keyframes important1 {
  from { margin-top: 50px; }
  50%  { margin-top: 150px !important; } /* ignored */
  to   { margin-top: 100px; }
}' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTCSSKeyframesStatement).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: 'important1'.
			self assert: (self topEntity isOfType: FASTCSSKeyframesName).
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{
  from { margin-top: 50px; }
  50%  { margin-top: 150px !important; } /* ignored */
  to   { margin-top: 100px; }
}' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTCSSKeyframeBlockList).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 4.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'from { margin-top: 50px; }'.
				self assert: (self topEntity isOfType: FASTCSSKeyframeBlock).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'from'.
					self assert: (self topEntity isOfType: FASTCSSFrom).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '{ margin-top: 50px; }'.
					self assert: (self topEntity isOfType: FASTCSSBlock).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'margin-top: 50px;'.
						self assert: (self topEntity isOfType: FASTCSSDeclaration).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 2.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'margin-top'.
							self assert: (self topEntity isOfType: FASTCSSPropertyName).
							stack pop.
						
							stack push: (stack top childrenNodes at: 2).
							self assert: self topEntity sourceCode equals: '50px'.
							self assert: (self topEntity isOfType: FASTCSSIntegerValue).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'px'.
								self assert: (self topEntity isOfType: FASTCSSUnit).
								stack pop.
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: '50%  { margin-top: 150px !important; }'.
				self assert: (self topEntity isOfType: FASTCSSKeyframeBlock).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: '50%'.
					self assert: (self topEntity isOfType: FASTCSSIntegerValue).
					
					"Testing value of monovalue relation childrenNode"
					self assert: self topEntity childrenNode isNotNil.

						stack push: self topEntity childrenNode.
						self assert: self topEntity sourceCode equals: '%'.
						self assert: (self topEntity isOfType: FASTCSSUnit).
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '{ margin-top: 150px !important; }'.
					self assert: (self topEntity isOfType: FASTCSSBlock).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'margin-top: 150px !important;'.
						self assert: (self topEntity isOfType: FASTCSSDeclaration).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 3.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'margin-top'.
							self assert: (self topEntity isOfType: FASTCSSPropertyName).
							stack pop.
						
							stack push: (stack top childrenNodes at: 2).
							self assert: self topEntity sourceCode equals: '150px'.
							self assert: (self topEntity isOfType: FASTCSSIntegerValue).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'px'.
								self assert: (self topEntity isOfType: FASTCSSUnit).
								stack pop.
							stack pop.
						
							stack push: (stack top childrenNodes at: 3).
							self assert: self topEntity sourceCode equals: '!important'.
							self assert: (self topEntity isOfType: FASTCSSImportant).
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 3).
				self assert: self topEntity sourceCode equals: '/* ignored */'.
				self assert: (self topEntity isOfType: FASTCSSComment).
				stack pop.
			
				stack push: (stack top childrenNodes at: 4).
				self assert: self topEntity sourceCode equals: 'to   { margin-top: 100px; }'.
				self assert: (self topEntity isOfType: FASTCSSKeyframeBlock).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'to'.
					self assert: (self topEntity isOfType: FASTCSSTo).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '{ margin-top: 100px; }'.
					self assert: (self topEntity isOfType: FASTCSSBlock).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'margin-top: 100px;'.
						self assert: (self topEntity isOfType: FASTCSSDeclaration).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 2.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'margin-top'.
							self assert: (self topEntity isOfType: FASTCSSPropertyName).
							stack pop.
						
							stack push: (stack top childrenNodes at: 2).
							self assert: self topEntity sourceCode equals: '100px'.
							self assert: (self topEntity isOfType: FASTCSSIntegerValue).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'px'.
								self assert: (self topEntity isOfType: FASTCSSUnit).
								stack pop.
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: '@keyframes hello {
  0%, 50% {}
}' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTCSSKeyframesStatement).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: 'hello'.
			self assert: (self topEntity isOfType: FASTCSSKeyframesName).
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{
  0%, 50% {}
}' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTCSSKeyframeBlockList).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '0%, 50% {}'.
				self assert: (self topEntity isOfType: FASTCSSKeyframeBlock).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 3.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: '0%'.
					self assert: (self topEntity isOfType: FASTCSSIntegerValue).
					
					"Testing value of monovalue relation childrenNode"
					self assert: self topEntity childrenNode isNotNil.

						stack push: self topEntity childrenNode.
						self assert: self topEntity sourceCode equals: '%'.
						self assert: (self topEntity isOfType: FASTCSSUnit).
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '50%'.
					self assert: (self topEntity isOfType: FASTCSSIntegerValue).
					
					"Testing value of monovalue relation childrenNode"
					self assert: self topEntity childrenNode isNotNil.

						stack push: self topEntity childrenNode.
						self assert: self topEntity sourceCode equals: '%'.
						self assert: (self topEntity isOfType: FASTCSSUnit).
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 3).
					self assert: self topEntity sourceCode equals: '{}'.
					self assert: (self topEntity isOfType: FASTCSSBlock).
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 3).
		self assert: self topEntity sourceCode equals: ''.
		self assert: (self topEntity isOfType: FASTCSSERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		stack pop.
	self assert: self topEntity source equals: '@keyframes important1 {
  from { margin-top: 50px; }
  50%  { margin-top: 150px !important; } /* ignored */
  to   { margin-top: 100px; }
}

@keyframes hello {
  0%, 50% {}
};' withPlatformLineEndings
]

{ #category : 'tests' }
FASTCSSImporterTest >> testGeneratedMediaStatements [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedMediaStatements 	"

	self parse: '@media screen and (min-width: 30em) and (orientation: landscape) {}
@media (min-height: 680px), screen and (orientation: portrait) {}
@media not all and (monochrome) {}
@media only screen {}
@media screen and (min-width: 0 0) {
    .tooltipped-multiline: after {}
};'.

	self assert: (fast allWithType: FASTCSSBinaryQuery) size equals: 5.
	self assert: (fast allWithType: FASTCSSBlock) size equals: 6.
	self assert: (fast allWithType: FASTCSSClassName) size equals: 2.
	self assert: (fast allWithType: FASTCSSClassSelector) size equals: 1.
	self assert: (fast allWithType: FASTCSSERROR) size equals: 1.
	self assert: (fast allWithType: FASTCSSFeatureName) size equals: 5.
	self assert: (fast allWithType: FASTCSSFeatureQuery) size equals: 5.
	self assert: (fast allWithType: FASTCSSIdentifier) size equals: 2.
	self assert: (fast allWithType: FASTCSSIntegerValue) size equals: 4.
	self assert: (fast allWithType: FASTCSSKeywordQuery) size equals: 6.
	self assert: (fast allWithType: FASTCSSMediaStatement) size equals: 5.
	self assert: (fast allWithType: FASTCSSParenthesizedQuery) size equals: 1.
	self assert: (fast allWithType: FASTCSSPlainValue) size equals: 2.
	self assert: (fast allWithType: FASTCSSPseudoClassSelector) size equals: 1.
	self assert: (fast allWithType: FASTCSSRuleSet) size equals: 1.
	self assert: (fast allWithType: FASTCSSSelectors) size equals: 1.
	self assert: (fast allWithType: FASTCSSStylesheet) size equals: 1.
	self assert: (fast allWithType: FASTCSSUnaryQuery) size equals: 2.
	self assert: (fast allWithType: FASTCSSUnit) size equals: 2.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '@media screen and (min-width: 30em) and (orientation: landscape) {}
@media (min-height: 680px), screen and (orientation: portrait) {}
@media not all and (monochrome) {}
@media only screen {}
@media screen and (min-width: 0 0) {
    .tooltipped-multiline: after {}
};' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTCSSStylesheet).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 6.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '@media screen and (min-width: 30em) and (orientation: landscape) {}'.
		self assert: (self topEntity isOfType: FASTCSSMediaStatement).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: 'screen and (min-width: 30em) and (orientation: landscape)'.
			self assert: (self topEntity isOfType: FASTCSSBinaryQuery).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 2.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'screen and (min-width: 30em)'.
				self assert: (self topEntity isOfType: FASTCSSBinaryQuery).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'screen'.
					self assert: (self topEntity isOfType: FASTCSSKeywordQuery).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '(min-width: 30em)'.
					self assert: (self topEntity isOfType: FASTCSSFeatureQuery).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 2.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'min-width'.
						self assert: (self topEntity isOfType: FASTCSSFeatureName).
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: '30em'.
						self assert: (self topEntity isOfType: FASTCSSIntegerValue).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: 'em'.
							self assert: (self topEntity isOfType: FASTCSSUnit).
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: '(orientation: landscape)'.
				self assert: (self topEntity isOfType: FASTCSSFeatureQuery).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'orientation'.
					self assert: (self topEntity isOfType: FASTCSSFeatureName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: 'landscape'.
					self assert: (self topEntity isOfType: FASTCSSPlainValue).
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{}'.
			self assert: (self topEntity isOfType: FASTCSSBlock).
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: '@media (min-height: 680px), screen and (orientation: portrait) {}'.
		self assert: (self topEntity isOfType: FASTCSSMediaStatement).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 3.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '(min-height: 680px)'.
			self assert: (self topEntity isOfType: FASTCSSFeatureQuery).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 2.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'min-height'.
				self assert: (self topEntity isOfType: FASTCSSFeatureName).
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: '680px'.
				self assert: (self topEntity isOfType: FASTCSSIntegerValue).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: 'px'.
					self assert: (self topEntity isOfType: FASTCSSUnit).
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: 'screen and (orientation: portrait)'.
			self assert: (self topEntity isOfType: FASTCSSBinaryQuery).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 2.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'screen'.
				self assert: (self topEntity isOfType: FASTCSSKeywordQuery).
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: '(orientation: portrait)'.
				self assert: (self topEntity isOfType: FASTCSSFeatureQuery).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'orientation'.
					self assert: (self topEntity isOfType: FASTCSSFeatureName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: 'portrait'.
					self assert: (self topEntity isOfType: FASTCSSPlainValue).
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 3).
			self assert: self topEntity sourceCode equals: '{}'.
			self assert: (self topEntity isOfType: FASTCSSBlock).
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 3).
		self assert: self topEntity sourceCode equals: '@media not all and (monochrome) {}'.
		self assert: (self topEntity isOfType: FASTCSSMediaStatement).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: 'not all and (monochrome)'.
			self assert: (self topEntity isOfType: FASTCSSBinaryQuery).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 2.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'not all'.
				self assert: (self topEntity isOfType: FASTCSSUnaryQuery).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: 'all'.
					self assert: (self topEntity isOfType: FASTCSSKeywordQuery).
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: '(monochrome)'.
				self assert: (self topEntity isOfType: FASTCSSParenthesizedQuery).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: 'monochrome'.
					self assert: (self topEntity isOfType: FASTCSSKeywordQuery).
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{}'.
			self assert: (self topEntity isOfType: FASTCSSBlock).
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 4).
		self assert: self topEntity sourceCode equals: '@media only screen {}'.
		self assert: (self topEntity isOfType: FASTCSSMediaStatement).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: 'only screen'.
			self assert: (self topEntity isOfType: FASTCSSUnaryQuery).
			
			"Testing value of monovalue relation childrenNode"
			self assert: self topEntity childrenNode isNotNil.

				stack push: self topEntity childrenNode.
				self assert: self topEntity sourceCode equals: 'screen'.
				self assert: (self topEntity isOfType: FASTCSSKeywordQuery).
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{}'.
			self assert: (self topEntity isOfType: FASTCSSBlock).
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 5).
		self assert: self topEntity sourceCode equals: '@media screen and (min-width: 0 0) {
    .tooltipped-multiline: after {}
}' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTCSSMediaStatement).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: 'screen and (min-width: 0 0)'.
			self assert: (self topEntity isOfType: FASTCSSBinaryQuery).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 2.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'screen'.
				self assert: (self topEntity isOfType: FASTCSSKeywordQuery).
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: '(min-width: 0 0)'.
				self assert: (self topEntity isOfType: FASTCSSFeatureQuery).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 3.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'min-width'.
					self assert: (self topEntity isOfType: FASTCSSFeatureName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '0'.
					self assert: (self topEntity isOfType: FASTCSSIntegerValue).
					stack pop.
				
					stack push: (stack top childrenNodes at: 3).
					self assert: self topEntity sourceCode equals: '0'.
					self assert: (self topEntity isOfType: FASTCSSIntegerValue).
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{
    .tooltipped-multiline: after {}
}' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTCSSBlock).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '.tooltipped-multiline: after {}'.
				self assert: (self topEntity isOfType: FASTCSSRuleSet).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: '.tooltipped-multiline: after'.
					self assert: (self topEntity isOfType: FASTCSSSelectors).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '.tooltipped-multiline: after'.
						self assert: (self topEntity isOfType: FASTCSSPseudoClassSelector).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 2.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: '.tooltipped-multiline'.
							self assert: (self topEntity isOfType: FASTCSSClassSelector).
							
							"Testing value of multivalued relation childrenNodes"
							self assert: self topEntity childrenNodes size equals: 1.
							
								stack push: (stack top childrenNodes at: 1).
								self assert: self topEntity sourceCode equals: 'tooltipped-multiline'.
								self assert: (self topEntity isOfType: FASTCSSClassName).
								
								"Testing value of multivalued relation childrenNodes"
								self assert: self topEntity childrenNodes size equals: 1.
								
									stack push: (stack top childrenNodes at: 1).
									self assert: self topEntity sourceCode equals: 'tooltipped-multiline'.
									self assert: (self topEntity isOfType: FASTCSSIdentifier).
									stack pop.
								stack pop.
							stack pop.
						
							stack push: (stack top childrenNodes at: 2).
							self assert: self topEntity sourceCode equals: 'after'.
							self assert: (self topEntity isOfType: FASTCSSClassName).
							
							"Testing value of multivalued relation childrenNodes"
							self assert: self topEntity childrenNodes size equals: 1.
							
								stack push: (stack top childrenNodes at: 1).
								self assert: self topEntity sourceCode equals: 'after'.
								self assert: (self topEntity isOfType: FASTCSSIdentifier).
								stack pop.
							stack pop.
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '{}'.
					self assert: (self topEntity isOfType: FASTCSSBlock).
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 6).
		self assert: self topEntity sourceCode equals: ''.
		self assert: (self topEntity isOfType: FASTCSSERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		stack pop.
	self assert: self topEntity source equals: '@media screen and (min-width: 30em) and (orientation: landscape) {}
@media (min-height: 680px), screen and (orientation: portrait) {}
@media not all and (monochrome) {}
@media only screen {}
@media screen and (min-width: 0 0) {
    .tooltipped-multiline: after {}
};' withPlatformLineEndings
]

{ #category : 'tests' }
FASTCSSImporterTest >> testGeneratedNamespaceStatements [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedNamespaceStatements 	"

	self parse: '/* Default namespace */
@namespace url(XML-namespace-URL);
@namespace "XML-namespace-URL";
@namespace url(http://www.w3.org/1999/xhtml);
@namespace svg url(http://www.w3.org/2000/svg);

/* Prefixed namespace */
@namespace prefix url(XML-namespace-URL);
@namespace prefix "XML-namespace-URL";;'.

	self assert: (fast allWithType: FASTCSSArguments) size equals: 4.
	self assert: (fast allWithType: FASTCSSCallExpression) size equals: 4.
	self assert: (fast allWithType: FASTCSSComment) size equals: 2.
	self assert: (fast allWithType: FASTCSSERROR) size equals: 1.
	self assert: (fast allWithType: FASTCSSFunctionName) size equals: 4.
	self assert: (fast allWithType: FASTCSSNamespaceName) size equals: 3.
	self assert: (fast allWithType: FASTCSSNamespaceStatement) size equals: 6.
	self assert: (fast allWithType: FASTCSSPlainValue) size equals: 4.
	self assert: (fast allWithType: FASTCSSStringContent) size equals: 2.
	self assert: (fast allWithType: FASTCSSStringValue) size equals: 2.
	self assert: (fast allWithType: FASTCSSStylesheet) size equals: 1.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '/* Default namespace */
@namespace url(XML-namespace-URL);
@namespace "XML-namespace-URL";
@namespace url(http://www.w3.org/1999/xhtml);
@namespace svg url(http://www.w3.org/2000/svg);

/* Prefixed namespace */
@namespace prefix url(XML-namespace-URL);
@namespace prefix "XML-namespace-URL";;' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTCSSStylesheet).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 9.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '/* Default namespace */'.
		self assert: (self topEntity isOfType: FASTCSSComment).
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: '@namespace url(XML-namespace-URL);'.
		self assert: (self topEntity isOfType: FASTCSSNamespaceStatement).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 1.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: 'url(XML-namespace-URL)'.
			self assert: (self topEntity isOfType: FASTCSSCallExpression).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 2.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'url'.
				self assert: (self topEntity isOfType: FASTCSSFunctionName).
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: '(XML-namespace-URL)'.
				self assert: (self topEntity isOfType: FASTCSSArguments).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'XML-namespace-URL'.
					self assert: (self topEntity isOfType: FASTCSSPlainValue).
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 3).
		self assert: self topEntity sourceCode equals: '@namespace "XML-namespace-URL";'.
		self assert: (self topEntity isOfType: FASTCSSNamespaceStatement).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 1.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '"XML-namespace-URL"'.
			self assert: (self topEntity isOfType: FASTCSSStringValue).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'XML-namespace-URL'.
				self assert: (self topEntity isOfType: FASTCSSStringContent).
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 4).
		self assert: self topEntity sourceCode equals: '@namespace url(http://www.w3.org/1999/xhtml);'.
		self assert: (self topEntity isOfType: FASTCSSNamespaceStatement).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 1.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: 'url(http://www.w3.org/1999/xhtml)'.
			self assert: (self topEntity isOfType: FASTCSSCallExpression).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 2.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'url'.
				self assert: (self topEntity isOfType: FASTCSSFunctionName).
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: '(http://www.w3.org/1999/xhtml)'.
				self assert: (self topEntity isOfType: FASTCSSArguments).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'http://www.w3.org/1999/xhtml'.
					self assert: (self topEntity isOfType: FASTCSSPlainValue).
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 5).
		self assert: self topEntity sourceCode equals: '@namespace svg url(http://www.w3.org/2000/svg);'.
		self assert: (self topEntity isOfType: FASTCSSNamespaceStatement).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: 'svg'.
			self assert: (self topEntity isOfType: FASTCSSNamespaceName).
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: 'url(http://www.w3.org/2000/svg)'.
			self assert: (self topEntity isOfType: FASTCSSCallExpression).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 2.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'url'.
				self assert: (self topEntity isOfType: FASTCSSFunctionName).
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: '(http://www.w3.org/2000/svg)'.
				self assert: (self topEntity isOfType: FASTCSSArguments).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'http://www.w3.org/2000/svg'.
					self assert: (self topEntity isOfType: FASTCSSPlainValue).
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 6).
		self assert: self topEntity sourceCode equals: '/* Prefixed namespace */'.
		self assert: (self topEntity isOfType: FASTCSSComment).
		stack pop.
	
		stack push: (stack top childrenNodes at: 7).
		self assert: self topEntity sourceCode equals: '@namespace prefix url(XML-namespace-URL);'.
		self assert: (self topEntity isOfType: FASTCSSNamespaceStatement).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: 'prefix'.
			self assert: (self topEntity isOfType: FASTCSSNamespaceName).
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: 'url(XML-namespace-URL)'.
			self assert: (self topEntity isOfType: FASTCSSCallExpression).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 2.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'url'.
				self assert: (self topEntity isOfType: FASTCSSFunctionName).
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: '(XML-namespace-URL)'.
				self assert: (self topEntity isOfType: FASTCSSArguments).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'XML-namespace-URL'.
					self assert: (self topEntity isOfType: FASTCSSPlainValue).
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 8).
		self assert: self topEntity sourceCode equals: '@namespace prefix "XML-namespace-URL";'.
		self assert: (self topEntity isOfType: FASTCSSNamespaceStatement).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: 'prefix'.
			self assert: (self topEntity isOfType: FASTCSSNamespaceName).
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '"XML-namespace-URL"'.
			self assert: (self topEntity isOfType: FASTCSSStringValue).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'XML-namespace-URL'.
				self assert: (self topEntity isOfType: FASTCSSStringContent).
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 9).
		self assert: self topEntity sourceCode equals: ''.
		self assert: (self topEntity isOfType: FASTCSSERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		stack pop.
	self assert: self topEntity source equals: '/* Default namespace */
@namespace url(XML-namespace-URL);
@namespace "XML-namespace-URL";
@namespace url(http://www.w3.org/1999/xhtml);
@namespace svg url(http://www.w3.org/2000/svg);

/* Prefixed namespace */
@namespace prefix url(XML-namespace-URL);
@namespace prefix "XML-namespace-URL";;' withPlatformLineEndings
]

{ #category : 'tests' }
FASTCSSImporterTest >> testGeneratedNestedCombinators [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedNestedCombinators 	"

	self parse: '.parent {
	>p {}
	>* {}
	~div {}
	+p {}
	space-element {}
	| ns-element {}
};'.

	self assert: (fast allWithType: FASTCSSAdjacentSiblingSelector) size equals: 1.
	self assert: (fast allWithType: FASTCSSBlock) size equals: 7.
	self assert: (fast allWithType: FASTCSSChildSelector) size equals: 2.
	self assert: (fast allWithType: FASTCSSClassName) size equals: 1.
	self assert: (fast allWithType: FASTCSSClassSelector) size equals: 1.
	self assert: (fast allWithType: FASTCSSERROR) size equals: 1.
	self assert: (fast allWithType: FASTCSSIdentifier) size equals: 1.
	self assert: (fast allWithType: FASTCSSNamespaceSelector) size equals: 1.
	self assert: (fast allWithType: FASTCSSRuleSet) size equals: 7.
	self assert: (fast allWithType: FASTCSSSelectors) size equals: 7.
	self assert: (fast allWithType: FASTCSSSiblingSelector) size equals: 1.
	self assert: (fast allWithType: FASTCSSStylesheet) size equals: 1.
	self assert: (fast allWithType: FASTCSSTagName) size equals: 5.
	self assert: (fast allWithType: FASTCSSUniversalSelector) size equals: 1.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '.parent {
	>p {}
	>* {}
	~div {}
	+p {}
	space-element {}
	| ns-element {}
};' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTCSSStylesheet).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 2.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '.parent {
	>p {}
	>* {}
	~div {}
	+p {}
	space-element {}
	| ns-element {}
}' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTCSSRuleSet).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '.parent'.
			self assert: (self topEntity isOfType: FASTCSSSelectors).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '.parent'.
				self assert: (self topEntity isOfType: FASTCSSClassSelector).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'parent'.
					self assert: (self topEntity isOfType: FASTCSSClassName).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'parent'.
						self assert: (self topEntity isOfType: FASTCSSIdentifier).
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{
	>p {}
	>* {}
	~div {}
	+p {}
	space-element {}
	| ns-element {}
}' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTCSSBlock).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 6.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '>p {}'.
				self assert: (self topEntity isOfType: FASTCSSRuleSet).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: '>p'.
					self assert: (self topEntity isOfType: FASTCSSSelectors).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '>p'.
						self assert: (self topEntity isOfType: FASTCSSChildSelector).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'p'.
							self assert: (self topEntity isOfType: FASTCSSTagName).
							stack pop.
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '{}'.
					self assert: (self topEntity isOfType: FASTCSSBlock).
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: '>* {}'.
				self assert: (self topEntity isOfType: FASTCSSRuleSet).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: '>*'.
					self assert: (self topEntity isOfType: FASTCSSSelectors).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '>*'.
						self assert: (self topEntity isOfType: FASTCSSChildSelector).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: '*'.
							self assert: (self topEntity isOfType: FASTCSSUniversalSelector).
							stack pop.
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '{}'.
					self assert: (self topEntity isOfType: FASTCSSBlock).
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 3).
				self assert: self topEntity sourceCode equals: '~div {}'.
				self assert: (self topEntity isOfType: FASTCSSRuleSet).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: '~div'.
					self assert: (self topEntity isOfType: FASTCSSSelectors).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '~div'.
						self assert: (self topEntity isOfType: FASTCSSSiblingSelector).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'div'.
							self assert: (self topEntity isOfType: FASTCSSTagName).
							stack pop.
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '{}'.
					self assert: (self topEntity isOfType: FASTCSSBlock).
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 4).
				self assert: self topEntity sourceCode equals: '+p {}'.
				self assert: (self topEntity isOfType: FASTCSSRuleSet).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: '+p'.
					self assert: (self topEntity isOfType: FASTCSSSelectors).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '+p'.
						self assert: (self topEntity isOfType: FASTCSSAdjacentSiblingSelector).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'p'.
							self assert: (self topEntity isOfType: FASTCSSTagName).
							stack pop.
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '{}'.
					self assert: (self topEntity isOfType: FASTCSSBlock).
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 5).
				self assert: self topEntity sourceCode equals: 'space-element {}'.
				self assert: (self topEntity isOfType: FASTCSSRuleSet).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'space-element'.
					self assert: (self topEntity isOfType: FASTCSSSelectors).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'space-element'.
						self assert: (self topEntity isOfType: FASTCSSTagName).
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '{}'.
					self assert: (self topEntity isOfType: FASTCSSBlock).
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 6).
				self assert: self topEntity sourceCode equals: '| ns-element {}'.
				self assert: (self topEntity isOfType: FASTCSSRuleSet).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: '| ns-element'.
					self assert: (self topEntity isOfType: FASTCSSSelectors).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '| ns-element'.
						self assert: (self topEntity isOfType: FASTCSSNamespaceSelector).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'ns-element'.
							self assert: (self topEntity isOfType: FASTCSSTagName).
							stack pop.
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '{}'.
					self assert: (self topEntity isOfType: FASTCSSBlock).
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: ''.
		self assert: (self topEntity isOfType: FASTCSSERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		stack pop.
	self assert: self topEntity source equals: '.parent {
	>p {}
	>* {}
	~div {}
	+p {}
	space-element {}
	| ns-element {}
};' withPlatformLineEndings
]

{ #category : 'tests' }
FASTCSSImporterTest >> testGeneratedNestingSelectors [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedNestingSelectors 	"

	self parse: 'a {
  &.b {}
  & c {}
  & > d {}
};'.

	self assert: (fast allWithType: FASTCSSBlock) size equals: 4.
	self assert: (fast allWithType: FASTCSSChildSelector) size equals: 1.
	self assert: (fast allWithType: FASTCSSClassName) size equals: 1.
	self assert: (fast allWithType: FASTCSSClassSelector) size equals: 1.
	self assert: (fast allWithType: FASTCSSDescendantSelector) size equals: 1.
	self assert: (fast allWithType: FASTCSSERROR) size equals: 1.
	self assert: (fast allWithType: FASTCSSIdentifier) size equals: 1.
	self assert: (fast allWithType: FASTCSSNestingSelector) size equals: 3.
	self assert: (fast allWithType: FASTCSSRuleSet) size equals: 4.
	self assert: (fast allWithType: FASTCSSSelectors) size equals: 4.
	self assert: (fast allWithType: FASTCSSStylesheet) size equals: 1.
	self assert: (fast allWithType: FASTCSSTagName) size equals: 3.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: 'a {
  &.b {}
  & c {}
  & > d {}
};' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTCSSStylesheet).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 2.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: 'a {
  &.b {}
  & c {}
  & > d {}
}' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTCSSRuleSet).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: 'a'.
			self assert: (self topEntity isOfType: FASTCSSSelectors).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'a'.
				self assert: (self topEntity isOfType: FASTCSSTagName).
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{
  &.b {}
  & c {}
  & > d {}
}' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTCSSBlock).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 3.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '&.b {}'.
				self assert: (self topEntity isOfType: FASTCSSRuleSet).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: '&.b'.
					self assert: (self topEntity isOfType: FASTCSSSelectors).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '&.b'.
						self assert: (self topEntity isOfType: FASTCSSClassSelector).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 2.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: '&'.
							self assert: (self topEntity isOfType: FASTCSSNestingSelector).
							stack pop.
						
							stack push: (stack top childrenNodes at: 2).
							self assert: self topEntity sourceCode equals: 'b'.
							self assert: (self topEntity isOfType: FASTCSSClassName).
							
							"Testing value of multivalued relation childrenNodes"
							self assert: self topEntity childrenNodes size equals: 1.
							
								stack push: (stack top childrenNodes at: 1).
								self assert: self topEntity sourceCode equals: 'b'.
								self assert: (self topEntity isOfType: FASTCSSIdentifier).
								stack pop.
							stack pop.
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '{}'.
					self assert: (self topEntity isOfType: FASTCSSBlock).
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: '& c {}'.
				self assert: (self topEntity isOfType: FASTCSSRuleSet).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: '& c'.
					self assert: (self topEntity isOfType: FASTCSSSelectors).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '& c'.
						self assert: (self topEntity isOfType: FASTCSSDescendantSelector).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 2.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: '&'.
							self assert: (self topEntity isOfType: FASTCSSNestingSelector).
							stack pop.
						
							stack push: (stack top childrenNodes at: 2).
							self assert: self topEntity sourceCode equals: 'c'.
							self assert: (self topEntity isOfType: FASTCSSTagName).
							stack pop.
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '{}'.
					self assert: (self topEntity isOfType: FASTCSSBlock).
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 3).
				self assert: self topEntity sourceCode equals: '& > d {}'.
				self assert: (self topEntity isOfType: FASTCSSRuleSet).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: '& > d'.
					self assert: (self topEntity isOfType: FASTCSSSelectors).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '& > d'.
						self assert: (self topEntity isOfType: FASTCSSChildSelector).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 2.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: '&'.
							self assert: (self topEntity isOfType: FASTCSSNestingSelector).
							stack pop.
						
							stack push: (stack top childrenNodes at: 2).
							self assert: self topEntity sourceCode equals: 'd'.
							self assert: (self topEntity isOfType: FASTCSSTagName).
							stack pop.
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '{}'.
					self assert: (self topEntity isOfType: FASTCSSBlock).
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: ''.
		self assert: (self topEntity isOfType: FASTCSSERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		stack pop.
	self assert: self topEntity source equals: 'a {
  &.b {}
  & c {}
  & > d {}
};' withPlatformLineEndings
]

{ #category : 'tests' }
FASTCSSImporterTest >> testGeneratedNoSpacesAfterColons [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedNoSpacesAfterColons 	"

	self parse: 'div {
  all:unset;
  display:flex;
  justify-content:center;
};'.

	self assert: (fast allWithType: FASTCSSBlock) size equals: 1.
	self assert: (fast allWithType: FASTCSSDeclaration) size equals: 3.
	self assert: (fast allWithType: FASTCSSERROR) size equals: 1.
	self assert: (fast allWithType: FASTCSSPlainValue) size equals: 3.
	self assert: (fast allWithType: FASTCSSPropertyName) size equals: 3.
	self assert: (fast allWithType: FASTCSSRuleSet) size equals: 1.
	self assert: (fast allWithType: FASTCSSSelectors) size equals: 1.
	self assert: (fast allWithType: FASTCSSStylesheet) size equals: 1.
	self assert: (fast allWithType: FASTCSSTagName) size equals: 1.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: 'div {
  all:unset;
  display:flex;
  justify-content:center;
};' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTCSSStylesheet).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 2.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: 'div {
  all:unset;
  display:flex;
  justify-content:center;
}' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTCSSRuleSet).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: 'div'.
			self assert: (self topEntity isOfType: FASTCSSSelectors).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'div'.
				self assert: (self topEntity isOfType: FASTCSSTagName).
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{
  all:unset;
  display:flex;
  justify-content:center;
}' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTCSSBlock).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 3.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'all:unset;'.
				self assert: (self topEntity isOfType: FASTCSSDeclaration).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'all'.
					self assert: (self topEntity isOfType: FASTCSSPropertyName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: 'unset'.
					self assert: (self topEntity isOfType: FASTCSSPlainValue).
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: 'display:flex;'.
				self assert: (self topEntity isOfType: FASTCSSDeclaration).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'display'.
					self assert: (self topEntity isOfType: FASTCSSPropertyName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: 'flex'.
					self assert: (self topEntity isOfType: FASTCSSPlainValue).
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 3).
				self assert: self topEntity sourceCode equals: 'justify-content:center;'.
				self assert: (self topEntity isOfType: FASTCSSDeclaration).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'justify-content'.
					self assert: (self topEntity isOfType: FASTCSSPropertyName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: 'center'.
					self assert: (self topEntity isOfType: FASTCSSPlainValue).
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: ''.
		self assert: (self topEntity isOfType: FASTCSSERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		stack pop.
	self assert: self topEntity source equals: 'div {
  all:unset;
  display:flex;
  justify-content:center;
};' withPlatformLineEndings
]

{ #category : 'tests' }
FASTCSSImporterTest >> testGeneratedNthchildAndNthlastchildSelectors [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedNthchildAndNthlastchildSelectors 	"

	self parse: ':nth-child(2) {}
:nth-last-child(-n) {}
:nth-last-child(2n+1) {}
:nth-child(2n + 2) {}
:nth-last-child(-n) {}
:nth-child(2n of a.external) {};'.

	self assert: (fast allWithType: FASTCSSArguments) size equals: 6.
	self assert: (fast allWithType: FASTCSSBlock) size equals: 6.
	self assert: (fast allWithType: FASTCSSClassName) size equals: 7.
	self assert: (fast allWithType: FASTCSSClassSelector) size equals: 1.
	self assert: (fast allWithType: FASTCSSERROR) size equals: 1.
	self assert: (fast allWithType: FASTCSSIdentifier) size equals: 1.
	self assert: (fast allWithType: FASTCSSIntegerValue) size equals: 1.
	self assert: (fast allWithType: FASTCSSPlainValue) size equals: 5.
	self assert: (fast allWithType: FASTCSSPseudoClassSelector) size equals: 6.
	self assert: (fast allWithType: FASTCSSRuleSet) size equals: 6.
	self assert: (fast allWithType: FASTCSSSelectors) size equals: 6.
	self assert: (fast allWithType: FASTCSSStylesheet) size equals: 1.
	self assert: (fast allWithType: FASTCSSTagName) size equals: 1.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: ':nth-child(2) {}
:nth-last-child(-n) {}
:nth-last-child(2n+1) {}
:nth-child(2n + 2) {}
:nth-last-child(-n) {}
:nth-child(2n of a.external) {};' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTCSSStylesheet).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 7.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: ':nth-child(2) {}'.
		self assert: (self topEntity isOfType: FASTCSSRuleSet).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: ':nth-child(2)'.
			self assert: (self topEntity isOfType: FASTCSSSelectors).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: ':nth-child(2)'.
				self assert: (self topEntity isOfType: FASTCSSPseudoClassSelector).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'nth-child'.
					self assert: (self topEntity isOfType: FASTCSSClassName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '(2)'.
					self assert: (self topEntity isOfType: FASTCSSArguments).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '2'.
						self assert: (self topEntity isOfType: FASTCSSIntegerValue).
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{}'.
			self assert: (self topEntity isOfType: FASTCSSBlock).
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: ':nth-last-child(-n) {}'.
		self assert: (self topEntity isOfType: FASTCSSRuleSet).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: ':nth-last-child(-n)'.
			self assert: (self topEntity isOfType: FASTCSSSelectors).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: ':nth-last-child(-n)'.
				self assert: (self topEntity isOfType: FASTCSSPseudoClassSelector).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'nth-last-child'.
					self assert: (self topEntity isOfType: FASTCSSClassName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '(-n)'.
					self assert: (self topEntity isOfType: FASTCSSArguments).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '-n'.
						self assert: (self topEntity isOfType: FASTCSSPlainValue).
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{}'.
			self assert: (self topEntity isOfType: FASTCSSBlock).
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 3).
		self assert: self topEntity sourceCode equals: ':nth-last-child(2n+1) {}'.
		self assert: (self topEntity isOfType: FASTCSSRuleSet).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: ':nth-last-child(2n+1)'.
			self assert: (self topEntity isOfType: FASTCSSSelectors).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: ':nth-last-child(2n+1)'.
				self assert: (self topEntity isOfType: FASTCSSPseudoClassSelector).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'nth-last-child'.
					self assert: (self topEntity isOfType: FASTCSSClassName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '(2n+1)'.
					self assert: (self topEntity isOfType: FASTCSSArguments).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '2n+1'.
						self assert: (self topEntity isOfType: FASTCSSPlainValue).
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{}'.
			self assert: (self topEntity isOfType: FASTCSSBlock).
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 4).
		self assert: self topEntity sourceCode equals: ':nth-child(2n + 2) {}'.
		self assert: (self topEntity isOfType: FASTCSSRuleSet).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: ':nth-child(2n + 2)'.
			self assert: (self topEntity isOfType: FASTCSSSelectors).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: ':nth-child(2n + 2)'.
				self assert: (self topEntity isOfType: FASTCSSPseudoClassSelector).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'nth-child'.
					self assert: (self topEntity isOfType: FASTCSSClassName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '(2n + 2)'.
					self assert: (self topEntity isOfType: FASTCSSArguments).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '2n + 2'.
						self assert: (self topEntity isOfType: FASTCSSPlainValue).
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{}'.
			self assert: (self topEntity isOfType: FASTCSSBlock).
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 5).
		self assert: self topEntity sourceCode equals: ':nth-last-child(-n) {}'.
		self assert: (self topEntity isOfType: FASTCSSRuleSet).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: ':nth-last-child(-n)'.
			self assert: (self topEntity isOfType: FASTCSSSelectors).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: ':nth-last-child(-n)'.
				self assert: (self topEntity isOfType: FASTCSSPseudoClassSelector).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'nth-last-child'.
					self assert: (self topEntity isOfType: FASTCSSClassName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '(-n)'.
					self assert: (self topEntity isOfType: FASTCSSArguments).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '-n'.
						self assert: (self topEntity isOfType: FASTCSSPlainValue).
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{}'.
			self assert: (self topEntity isOfType: FASTCSSBlock).
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 6).
		self assert: self topEntity sourceCode equals: ':nth-child(2n of a.external) {}'.
		self assert: (self topEntity isOfType: FASTCSSRuleSet).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: ':nth-child(2n of a.external)'.
			self assert: (self topEntity isOfType: FASTCSSSelectors).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: ':nth-child(2n of a.external)'.
				self assert: (self topEntity isOfType: FASTCSSPseudoClassSelector).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'nth-child'.
					self assert: (self topEntity isOfType: FASTCSSClassName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '(2n of a.external)'.
					self assert: (self topEntity isOfType: FASTCSSArguments).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 2.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '2n '.
						self assert: (self topEntity isOfType: FASTCSSPlainValue).
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: 'a.external'.
						self assert: (self topEntity isOfType: FASTCSSClassSelector).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 2.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'a'.
							self assert: (self topEntity isOfType: FASTCSSTagName).
							stack pop.
						
							stack push: (stack top childrenNodes at: 2).
							self assert: self topEntity sourceCode equals: 'external'.
							self assert: (self topEntity isOfType: FASTCSSClassName).
							
							"Testing value of multivalued relation childrenNodes"
							self assert: self topEntity childrenNodes size equals: 1.
							
								stack push: (stack top childrenNodes at: 1).
								self assert: self topEntity sourceCode equals: 'external'.
								self assert: (self topEntity isOfType: FASTCSSIdentifier).
								stack pop.
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{}'.
			self assert: (self topEntity isOfType: FASTCSSBlock).
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 7).
		self assert: self topEntity sourceCode equals: ''.
		self assert: (self topEntity isOfType: FASTCSSERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		stack pop.
	self assert: self topEntity source equals: ':nth-child(2) {}
:nth-last-child(-n) {}
:nth-last-child(2n+1) {}
:nth-child(2n + 2) {}
:nth-last-child(-n) {}
:nth-child(2n of a.external) {};' withPlatformLineEndings
]

{ #category : 'tests' }
FASTCSSImporterTest >> testGeneratedNumbers [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedNumbers 	"

	self parse: 'a {
  b: 0.5%;
  c: 5em;
  margin: 10E3px;
  margin: -456.8px;
  margin: -5px;
  margin: -0.0px;
};'.

	self assert: (fast allWithType: FASTCSSBlock) size equals: 1.
	self assert: (fast allWithType: FASTCSSDeclaration) size equals: 6.
	self assert: (fast allWithType: FASTCSSERROR) size equals: 1.
	self assert: (fast allWithType: FASTCSSFloatValue) size equals: 4.
	self assert: (fast allWithType: FASTCSSIntegerValue) size equals: 2.
	self assert: (fast allWithType: FASTCSSPropertyName) size equals: 6.
	self assert: (fast allWithType: FASTCSSRuleSet) size equals: 1.
	self assert: (fast allWithType: FASTCSSSelectors) size equals: 1.
	self assert: (fast allWithType: FASTCSSStylesheet) size equals: 1.
	self assert: (fast allWithType: FASTCSSTagName) size equals: 1.
	self assert: (fast allWithType: FASTCSSUnit) size equals: 6.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: 'a {
  b: 0.5%;
  c: 5em;
  margin: 10E3px;
  margin: -456.8px;
  margin: -5px;
  margin: -0.0px;
};' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTCSSStylesheet).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 2.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: 'a {
  b: 0.5%;
  c: 5em;
  margin: 10E3px;
  margin: -456.8px;
  margin: -5px;
  margin: -0.0px;
}' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTCSSRuleSet).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: 'a'.
			self assert: (self topEntity isOfType: FASTCSSSelectors).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'a'.
				self assert: (self topEntity isOfType: FASTCSSTagName).
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{
  b: 0.5%;
  c: 5em;
  margin: 10E3px;
  margin: -456.8px;
  margin: -5px;
  margin: -0.0px;
}' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTCSSBlock).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 6.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'b: 0.5%;'.
				self assert: (self topEntity isOfType: FASTCSSDeclaration).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'b'.
					self assert: (self topEntity isOfType: FASTCSSPropertyName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '0.5%'.
					self assert: (self topEntity isOfType: FASTCSSFloatValue).
					
					"Testing value of monovalue relation childrenNode"
					self assert: self topEntity childrenNode isNotNil.

						stack push: self topEntity childrenNode.
						self assert: self topEntity sourceCode equals: '%'.
						self assert: (self topEntity isOfType: FASTCSSUnit).
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: 'c: 5em;'.
				self assert: (self topEntity isOfType: FASTCSSDeclaration).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'c'.
					self assert: (self topEntity isOfType: FASTCSSPropertyName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '5em'.
					self assert: (self topEntity isOfType: FASTCSSIntegerValue).
					
					"Testing value of monovalue relation childrenNode"
					self assert: self topEntity childrenNode isNotNil.

						stack push: self topEntity childrenNode.
						self assert: self topEntity sourceCode equals: 'em'.
						self assert: (self topEntity isOfType: FASTCSSUnit).
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 3).
				self assert: self topEntity sourceCode equals: 'margin: 10E3px;'.
				self assert: (self topEntity isOfType: FASTCSSDeclaration).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'margin'.
					self assert: (self topEntity isOfType: FASTCSSPropertyName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '10E3px'.
					self assert: (self topEntity isOfType: FASTCSSFloatValue).
					
					"Testing value of monovalue relation childrenNode"
					self assert: self topEntity childrenNode isNotNil.

						stack push: self topEntity childrenNode.
						self assert: self topEntity sourceCode equals: 'px'.
						self assert: (self topEntity isOfType: FASTCSSUnit).
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 4).
				self assert: self topEntity sourceCode equals: 'margin: -456.8px;'.
				self assert: (self topEntity isOfType: FASTCSSDeclaration).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'margin'.
					self assert: (self topEntity isOfType: FASTCSSPropertyName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '-456.8px'.
					self assert: (self topEntity isOfType: FASTCSSFloatValue).
					
					"Testing value of monovalue relation childrenNode"
					self assert: self topEntity childrenNode isNotNil.

						stack push: self topEntity childrenNode.
						self assert: self topEntity sourceCode equals: 'px'.
						self assert: (self topEntity isOfType: FASTCSSUnit).
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 5).
				self assert: self topEntity sourceCode equals: 'margin: -5px;'.
				self assert: (self topEntity isOfType: FASTCSSDeclaration).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'margin'.
					self assert: (self topEntity isOfType: FASTCSSPropertyName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '-5px'.
					self assert: (self topEntity isOfType: FASTCSSIntegerValue).
					
					"Testing value of monovalue relation childrenNode"
					self assert: self topEntity childrenNode isNotNil.

						stack push: self topEntity childrenNode.
						self assert: self topEntity sourceCode equals: 'px'.
						self assert: (self topEntity isOfType: FASTCSSUnit).
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 6).
				self assert: self topEntity sourceCode equals: 'margin: -0.0px;'.
				self assert: (self topEntity isOfType: FASTCSSDeclaration).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'margin'.
					self assert: (self topEntity isOfType: FASTCSSPropertyName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '-0.0px'.
					self assert: (self topEntity isOfType: FASTCSSFloatValue).
					
					"Testing value of monovalue relation childrenNode"
					self assert: self topEntity childrenNode isNotNil.

						stack push: self topEntity childrenNode.
						self assert: self topEntity sourceCode equals: 'px'.
						self assert: (self topEntity isOfType: FASTCSSUnit).
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: ''.
		self assert: (self topEntity isOfType: FASTCSSERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		stack pop.
	self assert: self topEntity source equals: 'a {
  b: 0.5%;
  c: 5em;
  margin: 10E3px;
  margin: -456.8px;
  margin: -5px;
  margin: -0.0px;
};' withPlatformLineEndings
]

{ #category : 'tests' }
FASTCSSImporterTest >> testGeneratedOtherAtstatements [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedOtherAtstatements 	"

	self parse: '@font-face {
  font-family: "Open Sans";
  src: url("/a") format("woff2"), url("/b/c") format("woff");
};'.

	self assert: (fast allWithType: FASTCSSArguments) size equals: 4.
	self assert: (fast allWithType: FASTCSSAtKeyword) size equals: 1.
	self assert: (fast allWithType: FASTCSSAtRule) size equals: 1.
	self assert: (fast allWithType: FASTCSSBlock) size equals: 1.
	self assert: (fast allWithType: FASTCSSCallExpression) size equals: 4.
	self assert: (fast allWithType: FASTCSSDeclaration) size equals: 2.
	self assert: (fast allWithType: FASTCSSERROR) size equals: 1.
	self assert: (fast allWithType: FASTCSSFunctionName) size equals: 4.
	self assert: (fast allWithType: FASTCSSPropertyName) size equals: 2.
	self assert: (fast allWithType: FASTCSSStringContent) size equals: 5.
	self assert: (fast allWithType: FASTCSSStringValue) size equals: 5.
	self assert: (fast allWithType: FASTCSSStylesheet) size equals: 1.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '@font-face {
  font-family: "Open Sans";
  src: url("/a") format("woff2"), url("/b/c") format("woff");
};' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTCSSStylesheet).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 2.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '@font-face {
  font-family: "Open Sans";
  src: url("/a") format("woff2"), url("/b/c") format("woff");
}' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTCSSAtRule).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '@font-face'.
			self assert: (self topEntity isOfType: FASTCSSAtKeyword).
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{
  font-family: "Open Sans";
  src: url("/a") format("woff2"), url("/b/c") format("woff");
}' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTCSSBlock).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 2.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'font-family: "Open Sans";'.
				self assert: (self topEntity isOfType: FASTCSSDeclaration).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'font-family'.
					self assert: (self topEntity isOfType: FASTCSSPropertyName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '"Open Sans"'.
					self assert: (self topEntity isOfType: FASTCSSStringValue).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'Open Sans'.
						self assert: (self topEntity isOfType: FASTCSSStringContent).
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: 'src: url("/a") format("woff2"), url("/b/c") format("woff");'.
				self assert: (self topEntity isOfType: FASTCSSDeclaration).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 5.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'src'.
					self assert: (self topEntity isOfType: FASTCSSPropertyName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: 'url("/a")'.
					self assert: (self topEntity isOfType: FASTCSSCallExpression).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 2.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'url'.
						self assert: (self topEntity isOfType: FASTCSSFunctionName).
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: '("/a")'.
						self assert: (self topEntity isOfType: FASTCSSArguments).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: '"/a"'.
							self assert: (self topEntity isOfType: FASTCSSStringValue).
							
							"Testing value of multivalued relation childrenNodes"
							self assert: self topEntity childrenNodes size equals: 1.
							
								stack push: (stack top childrenNodes at: 1).
								self assert: self topEntity sourceCode equals: '/a'.
								self assert: (self topEntity isOfType: FASTCSSStringContent).
								stack pop.
							stack pop.
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 3).
					self assert: self topEntity sourceCode equals: 'format("woff2")'.
					self assert: (self topEntity isOfType: FASTCSSCallExpression).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 2.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'format'.
						self assert: (self topEntity isOfType: FASTCSSFunctionName).
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: '("woff2")'.
						self assert: (self topEntity isOfType: FASTCSSArguments).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: '"woff2"'.
							self assert: (self topEntity isOfType: FASTCSSStringValue).
							
							"Testing value of multivalued relation childrenNodes"
							self assert: self topEntity childrenNodes size equals: 1.
							
								stack push: (stack top childrenNodes at: 1).
								self assert: self topEntity sourceCode equals: 'woff2'.
								self assert: (self topEntity isOfType: FASTCSSStringContent).
								stack pop.
							stack pop.
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 4).
					self assert: self topEntity sourceCode equals: 'url("/b/c")'.
					self assert: (self topEntity isOfType: FASTCSSCallExpression).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 2.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'url'.
						self assert: (self topEntity isOfType: FASTCSSFunctionName).
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: '("/b/c")'.
						self assert: (self topEntity isOfType: FASTCSSArguments).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: '"/b/c"'.
							self assert: (self topEntity isOfType: FASTCSSStringValue).
							
							"Testing value of multivalued relation childrenNodes"
							self assert: self topEntity childrenNodes size equals: 1.
							
								stack push: (stack top childrenNodes at: 1).
								self assert: self topEntity sourceCode equals: '/b/c'.
								self assert: (self topEntity isOfType: FASTCSSStringContent).
								stack pop.
							stack pop.
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 5).
					self assert: self topEntity sourceCode equals: 'format("woff")'.
					self assert: (self topEntity isOfType: FASTCSSCallExpression).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 2.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'format'.
						self assert: (self topEntity isOfType: FASTCSSFunctionName).
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: '("woff")'.
						self assert: (self topEntity isOfType: FASTCSSArguments).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: '"woff"'.
							self assert: (self topEntity isOfType: FASTCSSStringValue).
							
							"Testing value of multivalued relation childrenNodes"
							self assert: self topEntity childrenNodes size equals: 1.
							
								stack push: (stack top childrenNodes at: 1).
								self assert: self topEntity sourceCode equals: 'woff'.
								self assert: (self topEntity isOfType: FASTCSSStringContent).
								stack pop.
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: ''.
		self assert: (self topEntity isOfType: FASTCSSERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		stack pop.
	self assert: self topEntity source equals: '@font-face {
  font-family: "Open Sans";
  src: url("/a") format("woff2"), url("/b/c") format("woff");
};' withPlatformLineEndings
]

{ #category : 'tests' }
FASTCSSImporterTest >> testGeneratedPostCSS [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedPostCSS 	"

	self parse: '.selector {
  @apply variable-a meta-variable-b lots-of-combined-properties-c !important;
}

@layer components {
  .btn-blue {
    @apply --mixin sm:space-x-0 left-[11%] border-foreground/20 !important !text-white;
  }
}

@layer utilities {
  .btn {
  }
};'.

	self assert: (fast allWithType: FASTCSSAtKeyword) size equals: 4.
	self assert: (fast allWithType: FASTCSSAtRule) size equals: 2.
	self assert: (fast allWithType: FASTCSSBlock) size equals: 5.
	self assert: (fast allWithType: FASTCSSClassName) size equals: 3.
	self assert: (fast allWithType: FASTCSSClassSelector) size equals: 3.
	self assert: (fast allWithType: FASTCSSERROR) size equals: 1.
	self assert: (fast allWithType: FASTCSSGridValue) size equals: 1.
	self assert: (fast allWithType: FASTCSSIdentifier) size equals: 3.
	self assert: (fast allWithType: FASTCSSImportant) size equals: 2.
	self assert: (fast allWithType: FASTCSSImportantValue) size equals: 1.
	self assert: (fast allWithType: FASTCSSIntegerValue) size equals: 1.
	self assert: (fast allWithType: FASTCSSKeywordQuery) size equals: 2.
	self assert: (fast allWithType: FASTCSSPlainValue) size equals: 7.
	self assert: (fast allWithType: FASTCSSPostcssStatement) size equals: 2.
	self assert: (fast allWithType: FASTCSSRuleSet) size equals: 3.
	self assert: (fast allWithType: FASTCSSSelectors) size equals: 3.
	self assert: (fast allWithType: FASTCSSStylesheet) size equals: 1.
	self assert: (fast allWithType: FASTCSSUnit) size equals: 1.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '.selector {
  @apply variable-a meta-variable-b lots-of-combined-properties-c !important;
}

@layer components {
  .btn-blue {
    @apply --mixin sm:space-x-0 left-[11%] border-foreground/20 !important !text-white;
  }
}

@layer utilities {
  .btn {
  }
};' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTCSSStylesheet).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 4.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '.selector {
  @apply variable-a meta-variable-b lots-of-combined-properties-c !important;
}' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTCSSRuleSet).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '.selector'.
			self assert: (self topEntity isOfType: FASTCSSSelectors).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '.selector'.
				self assert: (self topEntity isOfType: FASTCSSClassSelector).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'selector'.
					self assert: (self topEntity isOfType: FASTCSSClassName).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'selector'.
						self assert: (self topEntity isOfType: FASTCSSIdentifier).
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{
  @apply variable-a meta-variable-b lots-of-combined-properties-c !important;
}' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTCSSBlock).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '@apply variable-a meta-variable-b lots-of-combined-properties-c !important;'.
				self assert: (self topEntity isOfType: FASTCSSPostcssStatement).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 5.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: '@apply'.
					self assert: (self topEntity isOfType: FASTCSSAtKeyword).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: 'variable-a'.
					self assert: (self topEntity isOfType: FASTCSSPlainValue).
					stack pop.
				
					stack push: (stack top childrenNodes at: 3).
					self assert: self topEntity sourceCode equals: 'meta-variable-b'.
					self assert: (self topEntity isOfType: FASTCSSPlainValue).
					stack pop.
				
					stack push: (stack top childrenNodes at: 4).
					self assert: self topEntity sourceCode equals: 'lots-of-combined-properties-c'.
					self assert: (self topEntity isOfType: FASTCSSPlainValue).
					stack pop.
				
					stack push: (stack top childrenNodes at: 5).
					self assert: self topEntity sourceCode equals: '!important'.
					self assert: (self topEntity isOfType: FASTCSSImportant).
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: '@layer components {
  .btn-blue {
    @apply --mixin sm:space-x-0 left-[11%] border-foreground/20 !important !text-white;
  }
}' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTCSSAtRule).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 3.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '@layer'.
			self assert: (self topEntity isOfType: FASTCSSAtKeyword).
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: 'components'.
			self assert: (self topEntity isOfType: FASTCSSKeywordQuery).
			stack pop.
		
			stack push: (stack top childrenNodes at: 3).
			self assert: self topEntity sourceCode equals: '{
  .btn-blue {
    @apply --mixin sm:space-x-0 left-[11%] border-foreground/20 !important !text-white;
  }
}' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTCSSBlock).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '.btn-blue {
    @apply --mixin sm:space-x-0 left-[11%] border-foreground/20 !important !text-white;
  }' withPlatformLineEndings.
				self assert: (self topEntity isOfType: FASTCSSRuleSet).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: '.btn-blue'.
					self assert: (self topEntity isOfType: FASTCSSSelectors).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '.btn-blue'.
						self assert: (self topEntity isOfType: FASTCSSClassSelector).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'btn-blue'.
							self assert: (self topEntity isOfType: FASTCSSClassName).
							
							"Testing value of multivalued relation childrenNodes"
							self assert: self topEntity childrenNodes size equals: 1.
							
								stack push: (stack top childrenNodes at: 1).
								self assert: self topEntity sourceCode equals: 'btn-blue'.
								self assert: (self topEntity isOfType: FASTCSSIdentifier).
								stack pop.
							stack pop.
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '{
    @apply --mixin sm:space-x-0 left-[11%] border-foreground/20 !important !text-white;
  }' withPlatformLineEndings.
					self assert: (self topEntity isOfType: FASTCSSBlock).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '@apply --mixin sm:space-x-0 left-[11%] border-foreground/20 !important !text-white;'.
						self assert: (self topEntity isOfType: FASTCSSPostcssStatement).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 8.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: '@apply'.
							self assert: (self topEntity isOfType: FASTCSSAtKeyword).
							stack pop.
						
							stack push: (stack top childrenNodes at: 2).
							self assert: self topEntity sourceCode equals: '--mixin'.
							self assert: (self topEntity isOfType: FASTCSSPlainValue).
							stack pop.
						
							stack push: (stack top childrenNodes at: 3).
							self assert: self topEntity sourceCode equals: 'sm:space-x-0'.
							self assert: (self topEntity isOfType: FASTCSSPlainValue).
							stack pop.
						
							stack push: (stack top childrenNodes at: 4).
							self assert: self topEntity sourceCode equals: 'left-'.
							self assert: (self topEntity isOfType: FASTCSSPlainValue).
							stack pop.
						
							stack push: (stack top childrenNodes at: 5).
							self assert: self topEntity sourceCode equals: '[11%]'.
							self assert: (self topEntity isOfType: FASTCSSGridValue).
							
							"Testing value of multivalued relation childrenNodes"
							self assert: self topEntity childrenNodes size equals: 1.
							
								stack push: (stack top childrenNodes at: 1).
								self assert: self topEntity sourceCode equals: '11%'.
								self assert: (self topEntity isOfType: FASTCSSIntegerValue).
								
								"Testing value of monovalue relation childrenNode"
								self assert: self topEntity childrenNode isNotNil.

									stack push: self topEntity childrenNode.
									self assert: self topEntity sourceCode equals: '%'.
									self assert: (self topEntity isOfType: FASTCSSUnit).
									stack pop.
								stack pop.
							stack pop.
						
							stack push: (stack top childrenNodes at: 6).
							self assert: self topEntity sourceCode equals: 'border-foreground/20'.
							self assert: (self topEntity isOfType: FASTCSSPlainValue).
							stack pop.
						
							stack push: (stack top childrenNodes at: 7).
							self assert: self topEntity sourceCode equals: '!important'.
							self assert: (self topEntity isOfType: FASTCSSImportant).
							stack pop.
						
							stack push: (stack top childrenNodes at: 8).
							self assert: self topEntity sourceCode equals: '!text-white'.
							self assert: (self topEntity isOfType: FASTCSSImportantValue).
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 3).
		self assert: self topEntity sourceCode equals: '@layer utilities {
  .btn {
  }
}' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTCSSAtRule).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 3.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '@layer'.
			self assert: (self topEntity isOfType: FASTCSSAtKeyword).
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: 'utilities'.
			self assert: (self topEntity isOfType: FASTCSSKeywordQuery).
			stack pop.
		
			stack push: (stack top childrenNodes at: 3).
			self assert: self topEntity sourceCode equals: '{
  .btn {
  }
}' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTCSSBlock).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '.btn {
  }' withPlatformLineEndings.
				self assert: (self topEntity isOfType: FASTCSSRuleSet).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: '.btn'.
					self assert: (self topEntity isOfType: FASTCSSSelectors).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '.btn'.
						self assert: (self topEntity isOfType: FASTCSSClassSelector).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'btn'.
							self assert: (self topEntity isOfType: FASTCSSClassName).
							
							"Testing value of multivalued relation childrenNodes"
							self assert: self topEntity childrenNodes size equals: 1.
							
								stack push: (stack top childrenNodes at: 1).
								self assert: self topEntity sourceCode equals: 'btn'.
								self assert: (self topEntity isOfType: FASTCSSIdentifier).
								stack pop.
							stack pop.
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '{
  }' withPlatformLineEndings.
					self assert: (self topEntity isOfType: FASTCSSBlock).
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 4).
		self assert: self topEntity sourceCode equals: ''.
		self assert: (self topEntity isOfType: FASTCSSERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		stack pop.
	self assert: self topEntity source equals: '.selector {
  @apply variable-a meta-variable-b lots-of-combined-properties-c !important;
}

@layer components {
  .btn-blue {
    @apply --mixin sm:space-x-0 left-[11%] border-foreground/20 !important !text-white;
  }
}

@layer utilities {
  .btn {
  }
};' withPlatformLineEndings
]

{ #category : 'tests' }
FASTCSSImporterTest >> testGeneratedPseudoclassSelectors [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedPseudoclassSelectors 	"

	self parse: 'a:hover {}
:nth-child(2) {}
p:has(li) {}
p:is(.foo) {}
p:has(li.foo) {}
*:where(li#foo) {}
p:has(.foo, .bar) {}
a:not([href]) {}
:host([a="b"]:hover) {}
:host([a=''b'']:hover) {}
:host {}
:host { display: block; }
:host(div.foo) {}
:nth-child(2n of a.external) {};'.

	self assert: (fast allWithType: FASTCSSArguments) size equals: 11.
	self assert: (fast allWithType: FASTCSSAttributeName) size equals: 3.
	self assert: (fast allWithType: FASTCSSAttributeSelector) size equals: 3.
	self assert: (fast allWithType: FASTCSSBlock) size equals: 14.
	self assert: (fast allWithType: FASTCSSClassName) size equals: 22.
	self assert: (fast allWithType: FASTCSSClassSelector) size equals: 6.
	self assert: (fast allWithType: FASTCSSDeclaration) size equals: 1.
	self assert: (fast allWithType: FASTCSSERROR) size equals: 1.
	self assert: (fast allWithType: FASTCSSIdName) size equals: 1.
	self assert: (fast allWithType: FASTCSSIdSelector) size equals: 1.
	self assert: (fast allWithType: FASTCSSIdentifier) size equals: 9.
	self assert: (fast allWithType: FASTCSSIntegerValue) size equals: 1.
	self assert: (fast allWithType: FASTCSSPlainValue) size equals: 2.
	self assert: (fast allWithType: FASTCSSPropertyName) size equals: 1.
	self assert: (fast allWithType: FASTCSSPseudoClassSelector) size equals: 16.
	self assert: (fast allWithType: FASTCSSRuleSet) size equals: 14.
	self assert: (fast allWithType: FASTCSSSelectors) size equals: 14.
	self assert: (fast allWithType: FASTCSSStringContent) size equals: 2.
	self assert: (fast allWithType: FASTCSSStringValue) size equals: 2.
	self assert: (fast allWithType: FASTCSSStylesheet) size equals: 1.
	self assert: (fast allWithType: FASTCSSTagName) size equals: 11.
	self assert: (fast allWithType: FASTCSSUniversalSelector) size equals: 1.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: 'a:hover {}
:nth-child(2) {}
p:has(li) {}
p:is(.foo) {}
p:has(li.foo) {}
*:where(li#foo) {}
p:has(.foo, .bar) {}
a:not([href]) {}
:host([a="b"]:hover) {}
:host([a=''b'']:hover) {}
:host {}
:host { display: block; }
:host(div.foo) {}
:nth-child(2n of a.external) {};' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTCSSStylesheet).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 15.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: 'a:hover {}'.
		self assert: (self topEntity isOfType: FASTCSSRuleSet).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: 'a:hover'.
			self assert: (self topEntity isOfType: FASTCSSSelectors).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'a:hover'.
				self assert: (self topEntity isOfType: FASTCSSPseudoClassSelector).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'a'.
					self assert: (self topEntity isOfType: FASTCSSTagName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: 'hover'.
					self assert: (self topEntity isOfType: FASTCSSClassName).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'hover'.
						self assert: (self topEntity isOfType: FASTCSSIdentifier).
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{}'.
			self assert: (self topEntity isOfType: FASTCSSBlock).
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: ':nth-child(2) {}'.
		self assert: (self topEntity isOfType: FASTCSSRuleSet).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: ':nth-child(2)'.
			self assert: (self topEntity isOfType: FASTCSSSelectors).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: ':nth-child(2)'.
				self assert: (self topEntity isOfType: FASTCSSPseudoClassSelector).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'nth-child'.
					self assert: (self topEntity isOfType: FASTCSSClassName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '(2)'.
					self assert: (self topEntity isOfType: FASTCSSArguments).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '2'.
						self assert: (self topEntity isOfType: FASTCSSIntegerValue).
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{}'.
			self assert: (self topEntity isOfType: FASTCSSBlock).
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 3).
		self assert: self topEntity sourceCode equals: 'p:has(li) {}'.
		self assert: (self topEntity isOfType: FASTCSSRuleSet).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: 'p:has(li)'.
			self assert: (self topEntity isOfType: FASTCSSSelectors).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'p:has(li)'.
				self assert: (self topEntity isOfType: FASTCSSPseudoClassSelector).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 3.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'p'.
					self assert: (self topEntity isOfType: FASTCSSTagName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: 'has'.
					self assert: (self topEntity isOfType: FASTCSSClassName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 3).
					self assert: self topEntity sourceCode equals: '(li)'.
					self assert: (self topEntity isOfType: FASTCSSArguments).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'li'.
						self assert: (self topEntity isOfType: FASTCSSTagName).
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{}'.
			self assert: (self topEntity isOfType: FASTCSSBlock).
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 4).
		self assert: self topEntity sourceCode equals: 'p:is(.foo) {}'.
		self assert: (self topEntity isOfType: FASTCSSRuleSet).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: 'p:is(.foo)'.
			self assert: (self topEntity isOfType: FASTCSSSelectors).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'p:is(.foo)'.
				self assert: (self topEntity isOfType: FASTCSSPseudoClassSelector).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 3.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'p'.
					self assert: (self topEntity isOfType: FASTCSSTagName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: 'is'.
					self assert: (self topEntity isOfType: FASTCSSClassName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 3).
					self assert: self topEntity sourceCode equals: '(.foo)'.
					self assert: (self topEntity isOfType: FASTCSSArguments).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '.foo'.
						self assert: (self topEntity isOfType: FASTCSSClassSelector).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'foo'.
							self assert: (self topEntity isOfType: FASTCSSClassName).
							
							"Testing value of multivalued relation childrenNodes"
							self assert: self topEntity childrenNodes size equals: 1.
							
								stack push: (stack top childrenNodes at: 1).
								self assert: self topEntity sourceCode equals: 'foo'.
								self assert: (self topEntity isOfType: FASTCSSIdentifier).
								stack pop.
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{}'.
			self assert: (self topEntity isOfType: FASTCSSBlock).
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 5).
		self assert: self topEntity sourceCode equals: 'p:has(li.foo) {}'.
		self assert: (self topEntity isOfType: FASTCSSRuleSet).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: 'p:has(li.foo)'.
			self assert: (self topEntity isOfType: FASTCSSSelectors).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'p:has(li.foo)'.
				self assert: (self topEntity isOfType: FASTCSSPseudoClassSelector).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 3.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'p'.
					self assert: (self topEntity isOfType: FASTCSSTagName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: 'has'.
					self assert: (self topEntity isOfType: FASTCSSClassName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 3).
					self assert: self topEntity sourceCode equals: '(li.foo)'.
					self assert: (self topEntity isOfType: FASTCSSArguments).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'li.foo'.
						self assert: (self topEntity isOfType: FASTCSSClassSelector).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 2.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'li'.
							self assert: (self topEntity isOfType: FASTCSSTagName).
							stack pop.
						
							stack push: (stack top childrenNodes at: 2).
							self assert: self topEntity sourceCode equals: 'foo'.
							self assert: (self topEntity isOfType: FASTCSSClassName).
							
							"Testing value of multivalued relation childrenNodes"
							self assert: self topEntity childrenNodes size equals: 1.
							
								stack push: (stack top childrenNodes at: 1).
								self assert: self topEntity sourceCode equals: 'foo'.
								self assert: (self topEntity isOfType: FASTCSSIdentifier).
								stack pop.
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{}'.
			self assert: (self topEntity isOfType: FASTCSSBlock).
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 6).
		self assert: self topEntity sourceCode equals: '*:where(li#foo) {}'.
		self assert: (self topEntity isOfType: FASTCSSRuleSet).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '*:where(li#foo)'.
			self assert: (self topEntity isOfType: FASTCSSSelectors).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '*:where(li#foo)'.
				self assert: (self topEntity isOfType: FASTCSSPseudoClassSelector).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 3.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: '*'.
					self assert: (self topEntity isOfType: FASTCSSUniversalSelector).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: 'where'.
					self assert: (self topEntity isOfType: FASTCSSClassName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 3).
					self assert: self topEntity sourceCode equals: '(li#foo)'.
					self assert: (self topEntity isOfType: FASTCSSArguments).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'li#foo'.
						self assert: (self topEntity isOfType: FASTCSSIdSelector).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 2.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'li'.
							self assert: (self topEntity isOfType: FASTCSSTagName).
							stack pop.
						
							stack push: (stack top childrenNodes at: 2).
							self assert: self topEntity sourceCode equals: 'foo'.
							self assert: (self topEntity isOfType: FASTCSSIdName).
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{}'.
			self assert: (self topEntity isOfType: FASTCSSBlock).
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 7).
		self assert: self topEntity sourceCode equals: 'p:has(.foo, .bar) {}'.
		self assert: (self topEntity isOfType: FASTCSSRuleSet).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: 'p:has(.foo, .bar)'.
			self assert: (self topEntity isOfType: FASTCSSSelectors).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'p:has(.foo, .bar)'.
				self assert: (self topEntity isOfType: FASTCSSPseudoClassSelector).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 3.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'p'.
					self assert: (self topEntity isOfType: FASTCSSTagName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: 'has'.
					self assert: (self topEntity isOfType: FASTCSSClassName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 3).
					self assert: self topEntity sourceCode equals: '(.foo, .bar)'.
					self assert: (self topEntity isOfType: FASTCSSArguments).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 2.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '.foo'.
						self assert: (self topEntity isOfType: FASTCSSClassSelector).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'foo'.
							self assert: (self topEntity isOfType: FASTCSSClassName).
							
							"Testing value of multivalued relation childrenNodes"
							self assert: self topEntity childrenNodes size equals: 1.
							
								stack push: (stack top childrenNodes at: 1).
								self assert: self topEntity sourceCode equals: 'foo'.
								self assert: (self topEntity isOfType: FASTCSSIdentifier).
								stack pop.
							stack pop.
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: '.bar'.
						self assert: (self topEntity isOfType: FASTCSSClassSelector).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'bar'.
							self assert: (self topEntity isOfType: FASTCSSClassName).
							
							"Testing value of multivalued relation childrenNodes"
							self assert: self topEntity childrenNodes size equals: 1.
							
								stack push: (stack top childrenNodes at: 1).
								self assert: self topEntity sourceCode equals: 'bar'.
								self assert: (self topEntity isOfType: FASTCSSIdentifier).
								stack pop.
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{}'.
			self assert: (self topEntity isOfType: FASTCSSBlock).
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 8).
		self assert: self topEntity sourceCode equals: 'a:not([href]) {}'.
		self assert: (self topEntity isOfType: FASTCSSRuleSet).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: 'a:not([href])'.
			self assert: (self topEntity isOfType: FASTCSSSelectors).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'a:not([href])'.
				self assert: (self topEntity isOfType: FASTCSSPseudoClassSelector).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 3.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'a'.
					self assert: (self topEntity isOfType: FASTCSSTagName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: 'not'.
					self assert: (self topEntity isOfType: FASTCSSClassName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 3).
					self assert: self topEntity sourceCode equals: '([href])'.
					self assert: (self topEntity isOfType: FASTCSSArguments).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '[href]'.
						self assert: (self topEntity isOfType: FASTCSSAttributeSelector).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'href'.
							self assert: (self topEntity isOfType: FASTCSSAttributeName).
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{}'.
			self assert: (self topEntity isOfType: FASTCSSBlock).
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 9).
		self assert: self topEntity sourceCode equals: ':host([a="b"]:hover) {}'.
		self assert: (self topEntity isOfType: FASTCSSRuleSet).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: ':host([a="b"]:hover)'.
			self assert: (self topEntity isOfType: FASTCSSSelectors).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: ':host([a="b"]:hover)'.
				self assert: (self topEntity isOfType: FASTCSSPseudoClassSelector).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'host'.
					self assert: (self topEntity isOfType: FASTCSSClassName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '([a="b"]:hover)'.
					self assert: (self topEntity isOfType: FASTCSSArguments).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '[a="b"]:hover'.
						self assert: (self topEntity isOfType: FASTCSSPseudoClassSelector).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 2.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: '[a="b"]'.
							self assert: (self topEntity isOfType: FASTCSSAttributeSelector).
							
							"Testing value of multivalued relation childrenNodes"
							self assert: self topEntity childrenNodes size equals: 2.
							
								stack push: (stack top childrenNodes at: 1).
								self assert: self topEntity sourceCode equals: 'a'.
								self assert: (self topEntity isOfType: FASTCSSAttributeName).
								stack pop.
							
								stack push: (stack top childrenNodes at: 2).
								self assert: self topEntity sourceCode equals: '"b"'.
								self assert: (self topEntity isOfType: FASTCSSStringValue).
								
								"Testing value of multivalued relation childrenNodes"
								self assert: self topEntity childrenNodes size equals: 1.
								
									stack push: (stack top childrenNodes at: 1).
									self assert: self topEntity sourceCode equals: 'b'.
									self assert: (self topEntity isOfType: FASTCSSStringContent).
									stack pop.
								stack pop.
							stack pop.
						
							stack push: (stack top childrenNodes at: 2).
							self assert: self topEntity sourceCode equals: 'hover'.
							self assert: (self topEntity isOfType: FASTCSSClassName).
							
							"Testing value of multivalued relation childrenNodes"
							self assert: self topEntity childrenNodes size equals: 1.
							
								stack push: (stack top childrenNodes at: 1).
								self assert: self topEntity sourceCode equals: 'hover'.
								self assert: (self topEntity isOfType: FASTCSSIdentifier).
								stack pop.
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{}'.
			self assert: (self topEntity isOfType: FASTCSSBlock).
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 10).
		self assert: self topEntity sourceCode equals: ':host([a=''b'']:hover) {}'.
		self assert: (self topEntity isOfType: FASTCSSRuleSet).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: ':host([a=''b'']:hover)'.
			self assert: (self topEntity isOfType: FASTCSSSelectors).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: ':host([a=''b'']:hover)'.
				self assert: (self topEntity isOfType: FASTCSSPseudoClassSelector).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'host'.
					self assert: (self topEntity isOfType: FASTCSSClassName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '([a=''b'']:hover)'.
					self assert: (self topEntity isOfType: FASTCSSArguments).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '[a=''b'']:hover'.
						self assert: (self topEntity isOfType: FASTCSSPseudoClassSelector).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 2.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: '[a=''b'']'.
							self assert: (self topEntity isOfType: FASTCSSAttributeSelector).
							
							"Testing value of multivalued relation childrenNodes"
							self assert: self topEntity childrenNodes size equals: 2.
							
								stack push: (stack top childrenNodes at: 1).
								self assert: self topEntity sourceCode equals: 'a'.
								self assert: (self topEntity isOfType: FASTCSSAttributeName).
								stack pop.
							
								stack push: (stack top childrenNodes at: 2).
								self assert: self topEntity sourceCode equals: '''b'''.
								self assert: (self topEntity isOfType: FASTCSSStringValue).
								
								"Testing value of multivalued relation childrenNodes"
								self assert: self topEntity childrenNodes size equals: 1.
								
									stack push: (stack top childrenNodes at: 1).
									self assert: self topEntity sourceCode equals: 'b'.
									self assert: (self topEntity isOfType: FASTCSSStringContent).
									stack pop.
								stack pop.
							stack pop.
						
							stack push: (stack top childrenNodes at: 2).
							self assert: self topEntity sourceCode equals: 'hover'.
							self assert: (self topEntity isOfType: FASTCSSClassName).
							
							"Testing value of multivalued relation childrenNodes"
							self assert: self topEntity childrenNodes size equals: 1.
							
								stack push: (stack top childrenNodes at: 1).
								self assert: self topEntity sourceCode equals: 'hover'.
								self assert: (self topEntity isOfType: FASTCSSIdentifier).
								stack pop.
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{}'.
			self assert: (self topEntity isOfType: FASTCSSBlock).
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 11).
		self assert: self topEntity sourceCode equals: ':host {}'.
		self assert: (self topEntity isOfType: FASTCSSRuleSet).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: ':host'.
			self assert: (self topEntity isOfType: FASTCSSSelectors).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: ':host'.
				self assert: (self topEntity isOfType: FASTCSSPseudoClassSelector).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'host'.
					self assert: (self topEntity isOfType: FASTCSSClassName).
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{}'.
			self assert: (self topEntity isOfType: FASTCSSBlock).
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 12).
		self assert: self topEntity sourceCode equals: ':host { display: block; }'.
		self assert: (self topEntity isOfType: FASTCSSRuleSet).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: ':host'.
			self assert: (self topEntity isOfType: FASTCSSSelectors).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: ':host'.
				self assert: (self topEntity isOfType: FASTCSSPseudoClassSelector).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'host'.
					self assert: (self topEntity isOfType: FASTCSSClassName).
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{ display: block; }'.
			self assert: (self topEntity isOfType: FASTCSSBlock).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'display: block;'.
				self assert: (self topEntity isOfType: FASTCSSDeclaration).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'display'.
					self assert: (self topEntity isOfType: FASTCSSPropertyName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: 'block'.
					self assert: (self topEntity isOfType: FASTCSSPlainValue).
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 13).
		self assert: self topEntity sourceCode equals: ':host(div.foo) {}'.
		self assert: (self topEntity isOfType: FASTCSSRuleSet).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: ':host(div.foo)'.
			self assert: (self topEntity isOfType: FASTCSSSelectors).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: ':host(div.foo)'.
				self assert: (self topEntity isOfType: FASTCSSPseudoClassSelector).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'host'.
					self assert: (self topEntity isOfType: FASTCSSClassName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '(div.foo)'.
					self assert: (self topEntity isOfType: FASTCSSArguments).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'div.foo'.
						self assert: (self topEntity isOfType: FASTCSSClassSelector).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 2.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'div'.
							self assert: (self topEntity isOfType: FASTCSSTagName).
							stack pop.
						
							stack push: (stack top childrenNodes at: 2).
							self assert: self topEntity sourceCode equals: 'foo'.
							self assert: (self topEntity isOfType: FASTCSSClassName).
							
							"Testing value of multivalued relation childrenNodes"
							self assert: self topEntity childrenNodes size equals: 1.
							
								stack push: (stack top childrenNodes at: 1).
								self assert: self topEntity sourceCode equals: 'foo'.
								self assert: (self topEntity isOfType: FASTCSSIdentifier).
								stack pop.
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{}'.
			self assert: (self topEntity isOfType: FASTCSSBlock).
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 14).
		self assert: self topEntity sourceCode equals: ':nth-child(2n of a.external) {}'.
		self assert: (self topEntity isOfType: FASTCSSRuleSet).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: ':nth-child(2n of a.external)'.
			self assert: (self topEntity isOfType: FASTCSSSelectors).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: ':nth-child(2n of a.external)'.
				self assert: (self topEntity isOfType: FASTCSSPseudoClassSelector).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'nth-child'.
					self assert: (self topEntity isOfType: FASTCSSClassName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '(2n of a.external)'.
					self assert: (self topEntity isOfType: FASTCSSArguments).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 2.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '2n '.
						self assert: (self topEntity isOfType: FASTCSSPlainValue).
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: 'a.external'.
						self assert: (self topEntity isOfType: FASTCSSClassSelector).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 2.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'a'.
							self assert: (self topEntity isOfType: FASTCSSTagName).
							stack pop.
						
							stack push: (stack top childrenNodes at: 2).
							self assert: self topEntity sourceCode equals: 'external'.
							self assert: (self topEntity isOfType: FASTCSSClassName).
							
							"Testing value of multivalued relation childrenNodes"
							self assert: self topEntity childrenNodes size equals: 1.
							
								stack push: (stack top childrenNodes at: 1).
								self assert: self topEntity sourceCode equals: 'external'.
								self assert: (self topEntity isOfType: FASTCSSIdentifier).
								stack pop.
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{}'.
			self assert: (self topEntity isOfType: FASTCSSBlock).
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 15).
		self assert: self topEntity sourceCode equals: ''.
		self assert: (self topEntity isOfType: FASTCSSERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		stack pop.
	self assert: self topEntity source equals: 'a:hover {}
:nth-child(2) {}
p:has(li) {}
p:is(.foo) {}
p:has(li.foo) {}
*:where(li#foo) {}
p:has(.foo, .bar) {}
a:not([href]) {}
:host([a="b"]:hover) {}
:host([a=''b'']:hover) {}
:host {}
:host { display: block; }
:host(div.foo) {}
:nth-child(2n of a.external) {};' withPlatformLineEndings
]

{ #category : 'tests' }
FASTCSSImporterTest >> testGeneratedPseudoelementSelectors [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedPseudoelementSelectors 	"

	self parse: 'a::first-line {};'.

	self assert: (fast allWithType: FASTCSSBlock) size equals: 1.
	self assert: (fast allWithType: FASTCSSERROR) size equals: 1.
	self assert: (fast allWithType: FASTCSSPseudoElementSelector) size equals: 1.
	self assert: (fast allWithType: FASTCSSRuleSet) size equals: 1.
	self assert: (fast allWithType: FASTCSSSelectors) size equals: 1.
	self assert: (fast allWithType: FASTCSSStylesheet) size equals: 1.
	self assert: (fast allWithType: FASTCSSTagName) size equals: 2.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: 'a::first-line {};'.
	self assert: (self topEntity isOfType: FASTCSSStylesheet).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 2.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: 'a::first-line {}'.
		self assert: (self topEntity isOfType: FASTCSSRuleSet).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: 'a::first-line'.
			self assert: (self topEntity isOfType: FASTCSSSelectors).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'a::first-line'.
				self assert: (self topEntity isOfType: FASTCSSPseudoElementSelector).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'a'.
					self assert: (self topEntity isOfType: FASTCSSTagName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: 'first-line'.
					self assert: (self topEntity isOfType: FASTCSSTagName).
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{}'.
			self assert: (self topEntity isOfType: FASTCSSBlock).
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: ''.
		self assert: (self topEntity isOfType: FASTCSSERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		stack pop.
	self assert: self topEntity source equals: 'a::first-line {};'
]

{ #category : 'tests' }
FASTCSSImporterTest >> testGeneratedRuleSets [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedRuleSets 	"

	self parse: '#some-id {
  some-property: 5px;
};'.

	self assert: (fast allWithType: FASTCSSBlock) size equals: 1.
	self assert: (fast allWithType: FASTCSSDeclaration) size equals: 1.
	self assert: (fast allWithType: FASTCSSERROR) size equals: 1.
	self assert: (fast allWithType: FASTCSSIdName) size equals: 1.
	self assert: (fast allWithType: FASTCSSIdSelector) size equals: 1.
	self assert: (fast allWithType: FASTCSSIntegerValue) size equals: 1.
	self assert: (fast allWithType: FASTCSSPropertyName) size equals: 1.
	self assert: (fast allWithType: FASTCSSRuleSet) size equals: 1.
	self assert: (fast allWithType: FASTCSSSelectors) size equals: 1.
	self assert: (fast allWithType: FASTCSSStylesheet) size equals: 1.
	self assert: (fast allWithType: FASTCSSUnit) size equals: 1.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '#some-id {
  some-property: 5px;
};' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTCSSStylesheet).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 2.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '#some-id {
  some-property: 5px;
}' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTCSSRuleSet).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '#some-id'.
			self assert: (self topEntity isOfType: FASTCSSSelectors).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '#some-id'.
				self assert: (self topEntity isOfType: FASTCSSIdSelector).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'some-id'.
					self assert: (self topEntity isOfType: FASTCSSIdName).
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{
  some-property: 5px;
}' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTCSSBlock).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'some-property: 5px;'.
				self assert: (self topEntity isOfType: FASTCSSDeclaration).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'some-property'.
					self assert: (self topEntity isOfType: FASTCSSPropertyName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '5px'.
					self assert: (self topEntity isOfType: FASTCSSIntegerValue).
					
					"Testing value of monovalue relation childrenNode"
					self assert: self topEntity childrenNode isNotNil.

						stack push: self topEntity childrenNode.
						self assert: self topEntity sourceCode equals: 'px'.
						self assert: (self topEntity isOfType: FASTCSSUnit).
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: ''.
		self assert: (self topEntity isOfType: FASTCSSERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		stack pop.
	self assert: self topEntity source equals: '#some-id {
  some-property: 5px;
};' withPlatformLineEndings
]

{ #category : 'tests' }
FASTCSSImporterTest >> testGeneratedScopeStatements [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedScopeStatements 	"

	self parse: '@scope (.card) {
  h1 {
    color: blue;
  }
}

@scope (.article-body) to (figure) {
  img {
    border: 5px solid black;
  }
};'.

	self assert: (fast allWithType: FASTCSSBlock) size equals: 4.
	self assert: (fast allWithType: FASTCSSClassName) size equals: 2.
	self assert: (fast allWithType: FASTCSSClassSelector) size equals: 2.
	self assert: (fast allWithType: FASTCSSDeclaration) size equals: 2.
	self assert: (fast allWithType: FASTCSSERROR) size equals: 1.
	self assert: (fast allWithType: FASTCSSIdentifier) size equals: 2.
	self assert: (fast allWithType: FASTCSSIntegerValue) size equals: 1.
	self assert: (fast allWithType: FASTCSSPlainValue) size equals: 3.
	self assert: (fast allWithType: FASTCSSPropertyName) size equals: 2.
	self assert: (fast allWithType: FASTCSSRuleSet) size equals: 2.
	self assert: (fast allWithType: FASTCSSScopeStatement) size equals: 2.
	self assert: (fast allWithType: FASTCSSSelectors) size equals: 2.
	self assert: (fast allWithType: FASTCSSStylesheet) size equals: 1.
	self assert: (fast allWithType: FASTCSSTagName) size equals: 3.
	self assert: (fast allWithType: FASTCSSUnit) size equals: 1.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '@scope (.card) {
  h1 {
    color: blue;
  }
}

@scope (.article-body) to (figure) {
  img {
    border: 5px solid black;
  }
};' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTCSSStylesheet).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 3.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '@scope (.card) {
  h1 {
    color: blue;
  }
}' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTCSSScopeStatement).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '.card'.
			self assert: (self topEntity isOfType: FASTCSSClassSelector).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'card'.
				self assert: (self topEntity isOfType: FASTCSSClassName).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'card'.
					self assert: (self topEntity isOfType: FASTCSSIdentifier).
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{
  h1 {
    color: blue;
  }
}' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTCSSBlock).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'h1 {
    color: blue;
  }' withPlatformLineEndings.
				self assert: (self topEntity isOfType: FASTCSSRuleSet).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'h1'.
					self assert: (self topEntity isOfType: FASTCSSSelectors).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'h1'.
						self assert: (self topEntity isOfType: FASTCSSTagName).
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '{
    color: blue;
  }' withPlatformLineEndings.
					self assert: (self topEntity isOfType: FASTCSSBlock).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'color: blue;'.
						self assert: (self topEntity isOfType: FASTCSSDeclaration).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 2.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'color'.
							self assert: (self topEntity isOfType: FASTCSSPropertyName).
							stack pop.
						
							stack push: (stack top childrenNodes at: 2).
							self assert: self topEntity sourceCode equals: 'blue'.
							self assert: (self topEntity isOfType: FASTCSSPlainValue).
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: '@scope (.article-body) to (figure) {
  img {
    border: 5px solid black;
  }
}' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTCSSScopeStatement).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 3.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '.article-body'.
			self assert: (self topEntity isOfType: FASTCSSClassSelector).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'article-body'.
				self assert: (self topEntity isOfType: FASTCSSClassName).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'article-body'.
					self assert: (self topEntity isOfType: FASTCSSIdentifier).
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: 'figure'.
			self assert: (self topEntity isOfType: FASTCSSTagName).
			stack pop.
		
			stack push: (stack top childrenNodes at: 3).
			self assert: self topEntity sourceCode equals: '{
  img {
    border: 5px solid black;
  }
}' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTCSSBlock).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'img {
    border: 5px solid black;
  }' withPlatformLineEndings.
				self assert: (self topEntity isOfType: FASTCSSRuleSet).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'img'.
					self assert: (self topEntity isOfType: FASTCSSSelectors).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'img'.
						self assert: (self topEntity isOfType: FASTCSSTagName).
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '{
    border: 5px solid black;
  }' withPlatformLineEndings.
					self assert: (self topEntity isOfType: FASTCSSBlock).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'border: 5px solid black;'.
						self assert: (self topEntity isOfType: FASTCSSDeclaration).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 4.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'border'.
							self assert: (self topEntity isOfType: FASTCSSPropertyName).
							stack pop.
						
							stack push: (stack top childrenNodes at: 2).
							self assert: self topEntity sourceCode equals: '5px'.
							self assert: (self topEntity isOfType: FASTCSSIntegerValue).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'px'.
								self assert: (self topEntity isOfType: FASTCSSUnit).
								stack pop.
							stack pop.
						
							stack push: (stack top childrenNodes at: 3).
							self assert: self topEntity sourceCode equals: 'solid'.
							self assert: (self topEntity isOfType: FASTCSSPlainValue).
							stack pop.
						
							stack push: (stack top childrenNodes at: 4).
							self assert: self topEntity sourceCode equals: 'black'.
							self assert: (self topEntity isOfType: FASTCSSPlainValue).
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 3).
		self assert: self topEntity sourceCode equals: ''.
		self assert: (self topEntity isOfType: FASTCSSERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		stack pop.
	self assert: self topEntity source equals: '@scope (.card) {
  h1 {
    color: blue;
  }
}

@scope (.article-body) to (figure) {
  img {
    border: 5px solid black;
  }
};' withPlatformLineEndings
]

{ #category : 'tests' }
FASTCSSImporterTest >> testGeneratedSiblingSelectors [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedSiblingSelectors 	"

	self parse: 'a.b ~ c.d {}
.e.f + .g.h {};'.

	self assert: (fast allWithType: FASTCSSAdjacentSiblingSelector) size equals: 1.
	self assert: (fast allWithType: FASTCSSBlock) size equals: 2.
	self assert: (fast allWithType: FASTCSSClassName) size equals: 6.
	self assert: (fast allWithType: FASTCSSClassSelector) size equals: 6.
	self assert: (fast allWithType: FASTCSSERROR) size equals: 1.
	self assert: (fast allWithType: FASTCSSIdentifier) size equals: 6.
	self assert: (fast allWithType: FASTCSSRuleSet) size equals: 2.
	self assert: (fast allWithType: FASTCSSSelectors) size equals: 2.
	self assert: (fast allWithType: FASTCSSSiblingSelector) size equals: 1.
	self assert: (fast allWithType: FASTCSSStylesheet) size equals: 1.
	self assert: (fast allWithType: FASTCSSTagName) size equals: 2.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: 'a.b ~ c.d {}
.e.f + .g.h {};' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTCSSStylesheet).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 3.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: 'a.b ~ c.d {}'.
		self assert: (self topEntity isOfType: FASTCSSRuleSet).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: 'a.b ~ c.d'.
			self assert: (self topEntity isOfType: FASTCSSSelectors).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'a.b ~ c.d'.
				self assert: (self topEntity isOfType: FASTCSSSiblingSelector).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'a.b'.
					self assert: (self topEntity isOfType: FASTCSSClassSelector).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 2.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'a'.
						self assert: (self topEntity isOfType: FASTCSSTagName).
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: 'b'.
						self assert: (self topEntity isOfType: FASTCSSClassName).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'b'.
							self assert: (self topEntity isOfType: FASTCSSIdentifier).
							stack pop.
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: 'c.d'.
					self assert: (self topEntity isOfType: FASTCSSClassSelector).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 2.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'c'.
						self assert: (self topEntity isOfType: FASTCSSTagName).
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: 'd'.
						self assert: (self topEntity isOfType: FASTCSSClassName).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'd'.
							self assert: (self topEntity isOfType: FASTCSSIdentifier).
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{}'.
			self assert: (self topEntity isOfType: FASTCSSBlock).
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: '.e.f + .g.h {}'.
		self assert: (self topEntity isOfType: FASTCSSRuleSet).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '.e.f + .g.h'.
			self assert: (self topEntity isOfType: FASTCSSSelectors).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '.e.f + .g.h'.
				self assert: (self topEntity isOfType: FASTCSSAdjacentSiblingSelector).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: '.e.f'.
					self assert: (self topEntity isOfType: FASTCSSClassSelector).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 2.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '.e'.
						self assert: (self topEntity isOfType: FASTCSSClassSelector).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'e'.
							self assert: (self topEntity isOfType: FASTCSSClassName).
							
							"Testing value of multivalued relation childrenNodes"
							self assert: self topEntity childrenNodes size equals: 1.
							
								stack push: (stack top childrenNodes at: 1).
								self assert: self topEntity sourceCode equals: 'e'.
								self assert: (self topEntity isOfType: FASTCSSIdentifier).
								stack pop.
							stack pop.
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: 'f'.
						self assert: (self topEntity isOfType: FASTCSSClassName).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'f'.
							self assert: (self topEntity isOfType: FASTCSSIdentifier).
							stack pop.
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '.g.h'.
					self assert: (self topEntity isOfType: FASTCSSClassSelector).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 2.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '.g'.
						self assert: (self topEntity isOfType: FASTCSSClassSelector).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'g'.
							self assert: (self topEntity isOfType: FASTCSSClassName).
							
							"Testing value of multivalued relation childrenNodes"
							self assert: self topEntity childrenNodes size equals: 1.
							
								stack push: (stack top childrenNodes at: 1).
								self assert: self topEntity sourceCode equals: 'g'.
								self assert: (self topEntity isOfType: FASTCSSIdentifier).
								stack pop.
							stack pop.
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: 'h'.
						self assert: (self topEntity isOfType: FASTCSSClassName).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'h'.
							self assert: (self topEntity isOfType: FASTCSSIdentifier).
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{}'.
			self assert: (self topEntity isOfType: FASTCSSBlock).
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 3).
		self assert: self topEntity sourceCode equals: ''.
		self assert: (self topEntity isOfType: FASTCSSERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		stack pop.
	self assert: self topEntity source equals: 'a.b ~ c.d {}
.e.f + .g.h {};' withPlatformLineEndings
]

{ #category : 'tests' }
FASTCSSImporterTest >> testGeneratedSlottedPseudoElement [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedSlottedPseudoElement 	"

	self parse: '::slotted(button) {};'.

	self assert: (fast allWithType: FASTCSSArguments) size equals: 1.
	self assert: (fast allWithType: FASTCSSBlock) size equals: 1.
	self assert: (fast allWithType: FASTCSSERROR) size equals: 1.
	self assert: (fast allWithType: FASTCSSPseudoElementSelector) size equals: 1.
	self assert: (fast allWithType: FASTCSSRuleSet) size equals: 1.
	self assert: (fast allWithType: FASTCSSSelectors) size equals: 1.
	self assert: (fast allWithType: FASTCSSStylesheet) size equals: 1.
	self assert: (fast allWithType: FASTCSSTagName) size equals: 2.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '::slotted(button) {};'.
	self assert: (self topEntity isOfType: FASTCSSStylesheet).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 2.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '::slotted(button) {}'.
		self assert: (self topEntity isOfType: FASTCSSRuleSet).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '::slotted(button)'.
			self assert: (self topEntity isOfType: FASTCSSSelectors).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '::slotted(button)'.
				self assert: (self topEntity isOfType: FASTCSSPseudoElementSelector).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'slotted'.
					self assert: (self topEntity isOfType: FASTCSSTagName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '(button)'.
					self assert: (self topEntity isOfType: FASTCSSArguments).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'button'.
						self assert: (self topEntity isOfType: FASTCSSTagName).
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{}'.
			self assert: (self topEntity isOfType: FASTCSSBlock).
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: ''.
		self assert: (self topEntity isOfType: FASTCSSERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		stack pop.
	self assert: self topEntity source equals: '::slotted(button) {};'
]

{ #category : 'tests' }
FASTCSSImporterTest >> testGeneratedSpacesAfterColonsInPropertyDeclarations [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedSpacesAfterColonsInPropertyDeclarations 	"

	self parse: 'div {
  margin      : 0;
  padding     : 0;
};'.

	self assert: (fast allWithType: FASTCSSBlock) size equals: 1.
	self assert: (fast allWithType: FASTCSSDeclaration) size equals: 2.
	self assert: (fast allWithType: FASTCSSERROR) size equals: 1.
	self assert: (fast allWithType: FASTCSSIntegerValue) size equals: 2.
	self assert: (fast allWithType: FASTCSSPropertyName) size equals: 2.
	self assert: (fast allWithType: FASTCSSRuleSet) size equals: 1.
	self assert: (fast allWithType: FASTCSSSelectors) size equals: 1.
	self assert: (fast allWithType: FASTCSSStylesheet) size equals: 1.
	self assert: (fast allWithType: FASTCSSTagName) size equals: 1.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: 'div {
  margin      : 0;
  padding     : 0;
};' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTCSSStylesheet).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 2.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: 'div {
  margin      : 0;
  padding     : 0;
}' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTCSSRuleSet).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: 'div'.
			self assert: (self topEntity isOfType: FASTCSSSelectors).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'div'.
				self assert: (self topEntity isOfType: FASTCSSTagName).
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{
  margin      : 0;
  padding     : 0;
}' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTCSSBlock).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 2.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'margin      : 0;'.
				self assert: (self topEntity isOfType: FASTCSSDeclaration).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'margin'.
					self assert: (self topEntity isOfType: FASTCSSPropertyName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '0'.
					self assert: (self topEntity isOfType: FASTCSSIntegerValue).
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: 'padding     : 0;'.
				self assert: (self topEntity isOfType: FASTCSSDeclaration).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'padding'.
					self assert: (self topEntity isOfType: FASTCSSPropertyName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '0'.
					self assert: (self topEntity isOfType: FASTCSSIntegerValue).
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: ''.
		self assert: (self topEntity isOfType: FASTCSSERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		stack pop.
	self assert: self topEntity source equals: 'div {
  margin      : 0;
  padding     : 0;
};' withPlatformLineEndings
]

{ #category : 'tests' }
FASTCSSImporterTest >> testGeneratedStrings [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedStrings 	"

	self parse: 'a {
  b: '''';
  c: ''\''hi\'''';
};'.

	self assert: (fast allWithType: FASTCSSBlock) size equals: 1.
	self assert: (fast allWithType: FASTCSSDeclaration) size equals: 2.
	self assert: (fast allWithType: FASTCSSERROR) size equals: 1.
	self assert: (fast allWithType: FASTCSSEscapeSequence) size equals: 2.
	self assert: (fast allWithType: FASTCSSPropertyName) size equals: 2.
	self assert: (fast allWithType: FASTCSSRuleSet) size equals: 1.
	self assert: (fast allWithType: FASTCSSSelectors) size equals: 1.
	self assert: (fast allWithType: FASTCSSStringContent) size equals: 1.
	self assert: (fast allWithType: FASTCSSStringValue) size equals: 2.
	self assert: (fast allWithType: FASTCSSStylesheet) size equals: 1.
	self assert: (fast allWithType: FASTCSSTagName) size equals: 1.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: 'a {
  b: '''';
  c: ''\''hi\'''';
};' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTCSSStylesheet).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 2.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: 'a {
  b: '''';
  c: ''\''hi\'''';
}' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTCSSRuleSet).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: 'a'.
			self assert: (self topEntity isOfType: FASTCSSSelectors).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'a'.
				self assert: (self topEntity isOfType: FASTCSSTagName).
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{
  b: '''';
  c: ''\''hi\'''';
}' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTCSSBlock).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 2.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'b: '''';'.
				self assert: (self topEntity isOfType: FASTCSSDeclaration).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'b'.
					self assert: (self topEntity isOfType: FASTCSSPropertyName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: ''''''.
					self assert: (self topEntity isOfType: FASTCSSStringValue).
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: 'c: ''\''hi\'''';'.
				self assert: (self topEntity isOfType: FASTCSSDeclaration).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'c'.
					self assert: (self topEntity isOfType: FASTCSSPropertyName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '''\''hi\'''''.
					self assert: (self topEntity isOfType: FASTCSSStringValue).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 3.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '\'''.
						self assert: (self topEntity isOfType: FASTCSSEscapeSequence).
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: 'hi'.
						self assert: (self topEntity isOfType: FASTCSSStringContent).
						stack pop.
					
						stack push: (stack top childrenNodes at: 3).
						self assert: self topEntity sourceCode equals: '\'''.
						self assert: (self topEntity isOfType: FASTCSSEscapeSequence).
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: ''.
		self assert: (self topEntity isOfType: FASTCSSERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		stack pop.
	self assert: self topEntity source equals: 'a {
  b: '''';
  c: ''\''hi\'''';
};' withPlatformLineEndings
]

{ #category : 'tests' }
FASTCSSImporterTest >> testGeneratedSupportsStatements [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedSupportsStatements 	"

	self parse: '@supports (animation-name: test) {
  div { animation-name: test; }
}
@supports (transform-style: preserve) or (-moz-transform-style: preserve) {}
@supports not ((text-align-last: justify) or (-moz-text-align-last: justify)) {}
@supports not selector(:matches(a, b)) {};'.

	self assert: (fast allWithType: FASTCSSArguments) size equals: 1.
	self assert: (fast allWithType: FASTCSSBinaryQuery) size equals: 2.
	self assert: (fast allWithType: FASTCSSBlock) size equals: 5.
	self assert: (fast allWithType: FASTCSSClassName) size equals: 1.
	self assert: (fast allWithType: FASTCSSDeclaration) size equals: 1.
	self assert: (fast allWithType: FASTCSSERROR) size equals: 1.
	self assert: (fast allWithType: FASTCSSFeatureName) size equals: 5.
	self assert: (fast allWithType: FASTCSSFeatureQuery) size equals: 5.
	self assert: (fast allWithType: FASTCSSIdentifier) size equals: 1.
	self assert: (fast allWithType: FASTCSSParenthesizedQuery) size equals: 1.
	self assert: (fast allWithType: FASTCSSPlainValue) size equals: 6.
	self assert: (fast allWithType: FASTCSSPropertyName) size equals: 1.
	self assert: (fast allWithType: FASTCSSPseudoClassSelector) size equals: 1.
	self assert: (fast allWithType: FASTCSSRuleSet) size equals: 1.
	self assert: (fast allWithType: FASTCSSSelectorQuery) size equals: 1.
	self assert: (fast allWithType: FASTCSSSelectors) size equals: 1.
	self assert: (fast allWithType: FASTCSSStylesheet) size equals: 1.
	self assert: (fast allWithType: FASTCSSSupportsStatement) size equals: 4.
	self assert: (fast allWithType: FASTCSSTagName) size equals: 3.
	self assert: (fast allWithType: FASTCSSUnaryQuery) size equals: 2.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '@supports (animation-name: test) {
  div { animation-name: test; }
}
@supports (transform-style: preserve) or (-moz-transform-style: preserve) {}
@supports not ((text-align-last: justify) or (-moz-text-align-last: justify)) {}
@supports not selector(:matches(a, b)) {};' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTCSSStylesheet).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 5.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '@supports (animation-name: test) {
  div { animation-name: test; }
}' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTCSSSupportsStatement).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '(animation-name: test)'.
			self assert: (self topEntity isOfType: FASTCSSFeatureQuery).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 2.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'animation-name'.
				self assert: (self topEntity isOfType: FASTCSSFeatureName).
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: 'test'.
				self assert: (self topEntity isOfType: FASTCSSPlainValue).
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{
  div { animation-name: test; }
}' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTCSSBlock).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'div { animation-name: test; }'.
				self assert: (self topEntity isOfType: FASTCSSRuleSet).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'div'.
					self assert: (self topEntity isOfType: FASTCSSSelectors).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'div'.
						self assert: (self topEntity isOfType: FASTCSSTagName).
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '{ animation-name: test; }'.
					self assert: (self topEntity isOfType: FASTCSSBlock).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'animation-name: test;'.
						self assert: (self topEntity isOfType: FASTCSSDeclaration).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 2.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'animation-name'.
							self assert: (self topEntity isOfType: FASTCSSPropertyName).
							stack pop.
						
							stack push: (stack top childrenNodes at: 2).
							self assert: self topEntity sourceCode equals: 'test'.
							self assert: (self topEntity isOfType: FASTCSSPlainValue).
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: '@supports (transform-style: preserve) or (-moz-transform-style: preserve) {}'.
		self assert: (self topEntity isOfType: FASTCSSSupportsStatement).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '(transform-style: preserve) or (-moz-transform-style: preserve)'.
			self assert: (self topEntity isOfType: FASTCSSBinaryQuery).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 2.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '(transform-style: preserve)'.
				self assert: (self topEntity isOfType: FASTCSSFeatureQuery).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'transform-style'.
					self assert: (self topEntity isOfType: FASTCSSFeatureName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: 'preserve'.
					self assert: (self topEntity isOfType: FASTCSSPlainValue).
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: '(-moz-transform-style: preserve)'.
				self assert: (self topEntity isOfType: FASTCSSFeatureQuery).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: '-moz-transform-style'.
					self assert: (self topEntity isOfType: FASTCSSFeatureName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: 'preserve'.
					self assert: (self topEntity isOfType: FASTCSSPlainValue).
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{}'.
			self assert: (self topEntity isOfType: FASTCSSBlock).
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 3).
		self assert: self topEntity sourceCode equals: '@supports not ((text-align-last: justify) or (-moz-text-align-last: justify)) {}'.
		self assert: (self topEntity isOfType: FASTCSSSupportsStatement).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: 'not ((text-align-last: justify) or (-moz-text-align-last: justify))'.
			self assert: (self topEntity isOfType: FASTCSSUnaryQuery).
			
			"Testing value of monovalue relation childrenNode"
			self assert: self topEntity childrenNode isNotNil.

				stack push: self topEntity childrenNode.
				self assert: self topEntity sourceCode equals: '((text-align-last: justify) or (-moz-text-align-last: justify))'.
				self assert: (self topEntity isOfType: FASTCSSParenthesizedQuery).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: '(text-align-last: justify) or (-moz-text-align-last: justify)'.
					self assert: (self topEntity isOfType: FASTCSSBinaryQuery).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 2.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '(text-align-last: justify)'.
						self assert: (self topEntity isOfType: FASTCSSFeatureQuery).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 2.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'text-align-last'.
							self assert: (self topEntity isOfType: FASTCSSFeatureName).
							stack pop.
						
							stack push: (stack top childrenNodes at: 2).
							self assert: self topEntity sourceCode equals: 'justify'.
							self assert: (self topEntity isOfType: FASTCSSPlainValue).
							stack pop.
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: '(-moz-text-align-last: justify)'.
						self assert: (self topEntity isOfType: FASTCSSFeatureQuery).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 2.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: '-moz-text-align-last'.
							self assert: (self topEntity isOfType: FASTCSSFeatureName).
							stack pop.
						
							stack push: (stack top childrenNodes at: 2).
							self assert: self topEntity sourceCode equals: 'justify'.
							self assert: (self topEntity isOfType: FASTCSSPlainValue).
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{}'.
			self assert: (self topEntity isOfType: FASTCSSBlock).
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 4).
		self assert: self topEntity sourceCode equals: '@supports not selector(:matches(a, b)) {}'.
		self assert: (self topEntity isOfType: FASTCSSSupportsStatement).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: 'not selector(:matches(a, b))'.
			self assert: (self topEntity isOfType: FASTCSSUnaryQuery).
			
			"Testing value of monovalue relation childrenNode"
			self assert: self topEntity childrenNode isNotNil.

				stack push: self topEntity childrenNode.
				self assert: self topEntity sourceCode equals: 'selector(:matches(a, b))'.
				self assert: (self topEntity isOfType: FASTCSSSelectorQuery).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: ':matches(a, b)'.
					self assert: (self topEntity isOfType: FASTCSSPseudoClassSelector).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 2.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'matches'.
						self assert: (self topEntity isOfType: FASTCSSClassName).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'matches'.
							self assert: (self topEntity isOfType: FASTCSSIdentifier).
							stack pop.
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: '(a, b)'.
						self assert: (self topEntity isOfType: FASTCSSArguments).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 2.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'a'.
							self assert: (self topEntity isOfType: FASTCSSTagName).
							stack pop.
						
							stack push: (stack top childrenNodes at: 2).
							self assert: self topEntity sourceCode equals: 'b'.
							self assert: (self topEntity isOfType: FASTCSSTagName).
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{}'.
			self assert: (self topEntity isOfType: FASTCSSBlock).
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 5).
		self assert: self topEntity sourceCode equals: ''.
		self assert: (self topEntity isOfType: FASTCSSERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		stack pop.
	self assert: self topEntity source equals: '@supports (animation-name: test) {
  div { animation-name: test; }
}
@supports (transform-style: preserve) or (-moz-transform-style: preserve) {}
@supports not ((text-align-last: justify) or (-moz-text-align-last: justify)) {}
@supports not selector(:matches(a, b)) {};' withPlatformLineEndings
]

{ #category : 'tests' }
FASTCSSImporterTest >> testGeneratedTheNotSelector [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedTheNotSelector 	"

	self parse: 'a:not(:hover) {}
.b:not(c > .d) {};'.

	self assert: (fast allWithType: FASTCSSArguments) size equals: 2.
	self assert: (fast allWithType: FASTCSSBlock) size equals: 2.
	self assert: (fast allWithType: FASTCSSChildSelector) size equals: 1.
	self assert: (fast allWithType: FASTCSSClassName) size equals: 5.
	self assert: (fast allWithType: FASTCSSClassSelector) size equals: 2.
	self assert: (fast allWithType: FASTCSSERROR) size equals: 1.
	self assert: (fast allWithType: FASTCSSIdentifier) size equals: 3.
	self assert: (fast allWithType: FASTCSSPseudoClassSelector) size equals: 3.
	self assert: (fast allWithType: FASTCSSRuleSet) size equals: 2.
	self assert: (fast allWithType: FASTCSSSelectors) size equals: 2.
	self assert: (fast allWithType: FASTCSSStylesheet) size equals: 1.
	self assert: (fast allWithType: FASTCSSTagName) size equals: 2.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: 'a:not(:hover) {}
.b:not(c > .d) {};' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTCSSStylesheet).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 3.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: 'a:not(:hover) {}'.
		self assert: (self topEntity isOfType: FASTCSSRuleSet).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: 'a:not(:hover)'.
			self assert: (self topEntity isOfType: FASTCSSSelectors).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'a:not(:hover)'.
				self assert: (self topEntity isOfType: FASTCSSPseudoClassSelector).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 3.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'a'.
					self assert: (self topEntity isOfType: FASTCSSTagName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: 'not'.
					self assert: (self topEntity isOfType: FASTCSSClassName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 3).
					self assert: self topEntity sourceCode equals: '(:hover)'.
					self assert: (self topEntity isOfType: FASTCSSArguments).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: ':hover'.
						self assert: (self topEntity isOfType: FASTCSSPseudoClassSelector).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'hover'.
							self assert: (self topEntity isOfType: FASTCSSClassName).
							
							"Testing value of multivalued relation childrenNodes"
							self assert: self topEntity childrenNodes size equals: 1.
							
								stack push: (stack top childrenNodes at: 1).
								self assert: self topEntity sourceCode equals: 'hover'.
								self assert: (self topEntity isOfType: FASTCSSIdentifier).
								stack pop.
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{}'.
			self assert: (self topEntity isOfType: FASTCSSBlock).
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: '.b:not(c > .d) {}'.
		self assert: (self topEntity isOfType: FASTCSSRuleSet).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '.b:not(c > .d)'.
			self assert: (self topEntity isOfType: FASTCSSSelectors).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '.b:not(c > .d)'.
				self assert: (self topEntity isOfType: FASTCSSPseudoClassSelector).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 3.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: '.b'.
					self assert: (self topEntity isOfType: FASTCSSClassSelector).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'b'.
						self assert: (self topEntity isOfType: FASTCSSClassName).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'b'.
							self assert: (self topEntity isOfType: FASTCSSIdentifier).
							stack pop.
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: 'not'.
					self assert: (self topEntity isOfType: FASTCSSClassName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 3).
					self assert: self topEntity sourceCode equals: '(c > .d)'.
					self assert: (self topEntity isOfType: FASTCSSArguments).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'c > .d'.
						self assert: (self topEntity isOfType: FASTCSSChildSelector).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 2.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'c'.
							self assert: (self topEntity isOfType: FASTCSSTagName).
							stack pop.
						
							stack push: (stack top childrenNodes at: 2).
							self assert: self topEntity sourceCode equals: '.d'.
							self assert: (self topEntity isOfType: FASTCSSClassSelector).
							
							"Testing value of multivalued relation childrenNodes"
							self assert: self topEntity childrenNodes size equals: 1.
							
								stack push: (stack top childrenNodes at: 1).
								self assert: self topEntity sourceCode equals: 'd'.
								self assert: (self topEntity isOfType: FASTCSSClassName).
								
								"Testing value of multivalued relation childrenNodes"
								self assert: self topEntity childrenNodes size equals: 1.
								
									stack push: (stack top childrenNodes at: 1).
									self assert: self topEntity sourceCode equals: 'd'.
									self assert: (self topEntity isOfType: FASTCSSIdentifier).
									stack pop.
								stack pop.
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{}'.
			self assert: (self topEntity isOfType: FASTCSSBlock).
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 3).
		self assert: self topEntity sourceCode equals: ''.
		self assert: (self topEntity isOfType: FASTCSSERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		stack pop.
	self assert: self topEntity source equals: 'a:not(:hover) {}
.b:not(c > .d) {};' withPlatformLineEndings
]

{ #category : 'tests' }
FASTCSSImporterTest >> testGeneratedTypeSelectors [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedTypeSelectors 	"

	self parse: 'div, span {}
h1, h2, h3, h4 {};'.

	self assert: (fast allWithType: FASTCSSBlock) size equals: 2.
	self assert: (fast allWithType: FASTCSSERROR) size equals: 1.
	self assert: (fast allWithType: FASTCSSRuleSet) size equals: 2.
	self assert: (fast allWithType: FASTCSSSelectors) size equals: 2.
	self assert: (fast allWithType: FASTCSSStylesheet) size equals: 1.
	self assert: (fast allWithType: FASTCSSTagName) size equals: 6.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: 'div, span {}
h1, h2, h3, h4 {};' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTCSSStylesheet).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 3.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: 'div, span {}'.
		self assert: (self topEntity isOfType: FASTCSSRuleSet).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: 'div, span'.
			self assert: (self topEntity isOfType: FASTCSSSelectors).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 2.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'div'.
				self assert: (self topEntity isOfType: FASTCSSTagName).
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: 'span'.
				self assert: (self topEntity isOfType: FASTCSSTagName).
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{}'.
			self assert: (self topEntity isOfType: FASTCSSBlock).
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: 'h1, h2, h3, h4 {}'.
		self assert: (self topEntity isOfType: FASTCSSRuleSet).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: 'h1, h2, h3, h4'.
			self assert: (self topEntity isOfType: FASTCSSSelectors).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 4.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'h1'.
				self assert: (self topEntity isOfType: FASTCSSTagName).
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: 'h2'.
				self assert: (self topEntity isOfType: FASTCSSTagName).
				stack pop.
			
				stack push: (stack top childrenNodes at: 3).
				self assert: self topEntity sourceCode equals: 'h3'.
				self assert: (self topEntity isOfType: FASTCSSTagName).
				stack pop.
			
				stack push: (stack top childrenNodes at: 4).
				self assert: self topEntity sourceCode equals: 'h4'.
				self assert: (self topEntity isOfType: FASTCSSTagName).
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{}'.
			self assert: (self topEntity isOfType: FASTCSSBlock).
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 3).
		self assert: self topEntity sourceCode equals: ''.
		self assert: (self topEntity isOfType: FASTCSSERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		stack pop.
	self assert: self topEntity source equals: 'div, span {}
h1, h2, h3, h4 {};' withPlatformLineEndings
]

{ #category : 'tests' }
FASTCSSImporterTest >> testGeneratedURLs [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedURLs 	"

	self parse: 'a {
  b: http://something-else?foo=bar;
};'.

	self assert: (fast allWithType: FASTCSSBlock) size equals: 1.
	self assert: (fast allWithType: FASTCSSDeclaration) size equals: 1.
	self assert: (fast allWithType: FASTCSSERROR) size equals: 1.
	self assert: (fast allWithType: FASTCSSPlainValue) size equals: 1.
	self assert: (fast allWithType: FASTCSSPropertyName) size equals: 1.
	self assert: (fast allWithType: FASTCSSRuleSet) size equals: 1.
	self assert: (fast allWithType: FASTCSSSelectors) size equals: 1.
	self assert: (fast allWithType: FASTCSSStylesheet) size equals: 1.
	self assert: (fast allWithType: FASTCSSTagName) size equals: 1.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: 'a {
  b: http://something-else?foo=bar;
};' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTCSSStylesheet).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 2.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: 'a {
  b: http://something-else?foo=bar;
}' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTCSSRuleSet).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: 'a'.
			self assert: (self topEntity isOfType: FASTCSSSelectors).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'a'.
				self assert: (self topEntity isOfType: FASTCSSTagName).
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{
  b: http://something-else?foo=bar;
}' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTCSSBlock).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'b: http://something-else?foo=bar;'.
				self assert: (self topEntity isOfType: FASTCSSDeclaration).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'b'.
					self assert: (self topEntity isOfType: FASTCSSPropertyName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: 'http://something-else?foo=bar'.
					self assert: (self topEntity isOfType: FASTCSSPlainValue).
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: ''.
		self assert: (self topEntity isOfType: FASTCSSERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		stack pop.
	self assert: self topEntity source equals: 'a {
  b: http://something-else?foo=bar;
};' withPlatformLineEndings
]

{ #category : 'tests' }
FASTCSSImporterTest >> testGeneratedUniversalSelectors [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedUniversalSelectors 	"

	self parse: '* {};'.

	self assert: (fast allWithType: FASTCSSBlock) size equals: 1.
	self assert: (fast allWithType: FASTCSSERROR) size equals: 1.
	self assert: (fast allWithType: FASTCSSRuleSet) size equals: 1.
	self assert: (fast allWithType: FASTCSSSelectors) size equals: 1.
	self assert: (fast allWithType: FASTCSSStylesheet) size equals: 1.
	self assert: (fast allWithType: FASTCSSUniversalSelector) size equals: 1.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '* {};'.
	self assert: (self topEntity isOfType: FASTCSSStylesheet).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 2.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '* {}'.
		self assert: (self topEntity isOfType: FASTCSSRuleSet).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '*'.
			self assert: (self topEntity isOfType: FASTCSSSelectors).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '*'.
				self assert: (self topEntity isOfType: FASTCSSUniversalSelector).
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{}'.
			self assert: (self topEntity isOfType: FASTCSSBlock).
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: ''.
		self assert: (self topEntity isOfType: FASTCSSERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		stack pop.
	self assert: self topEntity source equals: '* {};'
]

{ #category : 'as yet unclassified' }
FASTCSSImporterTest >> topEntity [
	^ stack top 
]
