# IG-Sampler
A template for building IG based on the Argonaut and US-Core IG
 
Author:  Eric Haas


**THE ORIGINAL "FRAMEWORK" USING HTML 'WRAPPER' PAGES AND _INCLUDES FILES VS THE CURRENT IG-SAMPLER USING MARKDOWN PAGES AND  MODULES FOR THE STATIC FILES HAS BEEN MOVED to the OLD-IG-TEMPLATE BRANCH**


A Sampler of the IG-publishing framework for building an FHIR Implemenation Guide(IG) using the IG publisher and profile spreadsheets.  This is based on the design of the [Argonaut](http://www.fhir.org/guides/argonaut/r2/) and [US-Core](http://hl7.org/fhir/us/core/) IGs.    See the [FHIR IG publisher documentation](http://wiki.hl7.org/index.php?title=IG_Publisher_Documentation)  for how to set up your local environment.

Shows how to create:

- Profiles
- Extensions ( complex and simple )
- CodeSystems
- ValueSets
- SearchParameters
- Operations
- Logical Models
- ConformanceStatements

And the Jekyll templates and static pages to go with them...


### Rendered IG-Template at

https://healthedata1.github.io/IG-Sampler/

(GitHub will automatically trigger a new build whenever you commit changes.)


## Setup instructions

See the [FHIR IG publisher documentation](http://wiki.hl7.org/index.php?title=IG_Publisher_Documentation)  for how to set up your local environment.

- If using the bash scripts `publish2.sh` you will also need the file. [IG-FileBuilder](https://github.com/Healthedata1/FHIR-IGPub-filebuilder): A python 3.5 script that will create the ig.json and ig.xnl file based on the content in the `resources` and `example` directories and the `definitions.csv`.  See the inline comments for how to use and note the required python libraries you will need to run.

#### To run the igpublisher from directly from the command line:


1. run the command line:

      java -jar ${path1}org.hl7.fhir.igpublisher.jar -ig ig.json -watch

where:
- ${path1} = relative or absolute path to the jar file


####  To run the igpublisher using the bash scripts (todo create bat files)

- update the path and title in the script to local names and paths.  The scripts run from the source directory.
-
- To update the ig.json and ig.xml files using the IG-Filebuilder prior to running the ig publisher NOTE This reads the definitions.csv file and creates ig.json and ig.xml

       bash pub2.sh
       bash pub2-notx.sh  (offline and without term server - for faster build)

- To run the ig publisher

       bash pub.sh
       bash pub-notx.sh  (offline and without term server - for faster build)

Some screenshots....

Some screenshots....

## TODO integrate with the [FHIR Implementation Guide Auto-Builder](https://github.com/Healthedata1/auto-ig-builder)

