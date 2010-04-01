accessing
showVariation: aTestName a: optionA b: optionB user: aUser
|show test user |
	
	(users includesKey: aUser) ifFalse:[users at: aUser put: Dictionary new]. 
	user:=users at: aUser.
	test:=tests at: aTestName ifAbsent:[self newTest: aTestName a: optionA   b: optionB ].
	show := test winner.
	
show ifNil:[
				(user includesKey: aTestName)
					 ifTrue:[ show:=user at: aTestName] 
					ifFalse:[show:=test getAorB.
							user at: aTestName put: show.
					
				(show=optionA )
					ifTrue:[test aViews: test aViews +1]
					ifFalse:[test bViews: test bViews +1]].
				tests at: aTestName put: test.].
	^show