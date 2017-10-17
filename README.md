# IG-Template  
Authors:  Eric Haas, Brett Marquard

A template for building an FHIR Implemenation Guide(IG) using the IG publisher and profile spreadsheets.  This is based on the design of the [Argonaut](http://www.fhir.org/guides/argonaut/r2/) and [US-Core](http://hl7.org/fhir/us/core/) IGs.    See the [FHIR IG publisher documentation](http://wiki.hl7.org/index.php?title=IG_Publisher_Documentation)  for how to set up your local environment.

Shows how to create:

- Profiles
- Extensions ( complex and simple )
- CodeSystems
- ValueSets
- SearchParameters
- Operations ?
- Logical Models [todo]
- ConformanceStatements

And the Jekyll templates and static pages to go with them...



### Rendered IG-Template at

https://healthedata1.github.io/IG-Sampler/

(GitHub will automatically trigger a new build whenever you commit changes.)


## Setup instructions

You will also need to import these modules

- [IG-FileBuilder](https://github.com/Healthedata1/FHIR-IGPub-filebuilder): A python script that will create the ig.json and ig.xnl file based on the content in the `resources` and `example` directories.  See the inline comments for how to use.  The bash scripts to run the ig publisher with or without the python script.

- [IG-Template](https://github.com/Healthedata1/IG-Template): a module containing all the static template and pages and build files for FHIR IG Publishing

The relative locations of the two modules above need to updated in:
- The `definitions.csv` file
- The bash scripts if used:  publish2.sh and publish.sh


Some screenshots....
