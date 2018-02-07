#!/bin/bash
name="sampler2"
path2=/Users/ehaas/Downloads/
echo "================================================================="
echo === Publish $name IG!!! $(date -u) ===
echo === run bash pub2.sh to update ig.json ===
echo "================================================================="
# get rid of .DS_Store files since they gum up the igpublisher
find . -name '.DS_Store' -type f -delete
git status
echo "================================================================="
echo === run igpublisher without the term server - shorter...===
echo "================================================================="
java -jar ${path2}org.hl7.fhir.igpublisher.jar -ig ig.json -watch -tx N/A
