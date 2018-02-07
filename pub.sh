#!/bin/bash
name="sampler2"
# path1=/Users/ehaas/Documents/FHIR/IG-Template-New/
path2=/Users/ehaas/Documents/FHIR/working-build/publish/
# path3=/Users/ehaas/Documents/FHIR/IG-tools/
echo "====================================================================="
echo === Publish $name IG!!! $(date -u) using locally built ig-publisher in ${path2} ===
echo "====================================================================="
echo getting rid of .DS_Store files since they gum up the igpublisher....
find . -name '.DS_Store' -type f -delete
sleep 1
git
echo "================================================================="
echo === run igpublisher ===
echo "================================================================="
java -jar ${path2}org.hl7.fhir.igpublisher.jar -ig ig.json -watch
