baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ spec
				baseline: 'Seaside3'
					with: [ spec
						repository: 'github://SeasideSt/Seaside:master/repository';
						loads: #('Base' 'Javascript-Core' 'JQuery-Core' 'JQuery-UI') ];
				package: 'DHB'
					with:
					[ spec
						repository: 'http://smalltalkhub.com/mc/pdebruic/DHBNumerical/main' ]
						yourself.
			spec
				package: 'ABTesting'
				with: [ spec requires: #('DHB' 'Seaside3') ].
			spec
				group: 'default' with: #('Core');
				group: 'Core' with: #('ABTesting') ]