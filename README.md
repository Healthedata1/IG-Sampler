# IG-Sampler  
Author:  Eric Haas

A Sampler of the IG-publishing framework for building an FHIR Implemenation Guide(IG) using the IG publisher and profile spreadsheets.  This is based on the design of the [Argonaut](http://www.fhir.org/guides/argonaut/r2/) and [US-Core](http://hl7.org/fhir/us/core/) IGs.    See the [FHIR IG publisher documentation](http://wiki.hl7.org/index.php?title=IG_Publisher_Documentation)  for how to set up your local environment.

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
Meeting agenda and notes are archived [here](https://github.com/argonautproject/scheduling/tree/master/meeting-notes)


## Setup instructions

See the [FHIR IG publisher documentation](http://wiki.hl7.org/index.php?title=IG_Publisher_Documentation)  for how to set up your local environment.

You will also need to import these modules

- [IG-Template](https://github.com/Healthedata1/IG-Template): a module containing all the static template and pages and build files for FHIR IG Publishing

- If using the bash scripts `publish2.sh` you will also need the file. [IG-FileBuilder](https://github.com/Healthedata1/FHIR-IGPub-filebuilder): A python script that will create the ig.json and ig.xnl file based on the content in the `resources` and `example` directories and the `definitions.csv`.  See the inline comments for how to use.

#### To run the igpublisher from directly from the command line:

1. copy the ig.json file to the IG-Template folder
1. run the command line from this cloned (source) directory:

      java -jar ${path1}org.hl7.fhir.igpublisher.jar -ig ${path2}ig.json -watch

where:
- ${path1} = relative or absolute path to the jar file
- ${path2} = relative or absolute path to the IG-Template folder

####  To run the igpublisher using the bash scripts (todo create bat files)

- update the path and title in the script to local names and paths.  The scripts run from the source directory.
- If using the bash scripts:  `publish2.sh` the relative locations of the two modules above need to updated in The `definitions.csv` file.
- To update the ig.json and ig.xml files using the IG-Filebuilder prior to running the ig publisher

       bash publish2.sh

- To run the ig publisher

       bash publish.sh

Some screenshots....

Some screenshots....

## TODO how integrate with the [FHIR Implementation Guide Auto-Builder](https://github.com/Healthedata1/auto-ig-builder)
