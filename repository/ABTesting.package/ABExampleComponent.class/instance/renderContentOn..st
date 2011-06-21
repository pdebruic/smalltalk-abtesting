as yet unclassified
renderContentOn: html

	html html: (ABTest showVariation: 'sample'
			   a: (WARenderCanvas builder render:[:h | h
			   image
			   url:'http://www.seaside.st/styles/logo-plain.png' ]   )
			   b: (WARenderCanvas builder render:[:h | h
			   image
			   url:'http://www.seaside.st/styles/esug.gif' ]   )
			   user: user). 
	html break.
	
	html form
	with:[
	html submitButton 
		callback:[ABTest recordConversion: 'sample' by: user. 
			html javascript refresh];
		with: 'I like this one'.
	]