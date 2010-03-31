as yet unclassified
getPValueWithAYes: aYes aNo: aNo bYes:bYes bNo:bNo 
|x|
	x:=ABGTest new
					aYes: aYes;
					aNo: aNo;
					bYes: bYes;
					bNo: bNo.
	^x pValue.