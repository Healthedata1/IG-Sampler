#!/bin/bash
name="IG-Sampler"
# $PWD=/Users/ehaas/Documents/FHIR/IG-Template2
path2=/Users/ehaas/Downloads/
path3=/Users/ehaas/Documents/FHIR/IG-tools/
while getopts ds:t option
do
 case "${option}"
 in
 d) DEFN=1;;
 s) SOURCE=${OPTARG};;
 t) NA='N/A';;
 esac
done
echo "================================================================="
echo === Publish $name IG!!! $(date -u) ===
echo "Optional Parameters"
echo '-s parameter = source directory (default is root) = ' $SOURCE
echo '-d parameter = create definitions files = ' $DEFN
echo === if -d paremeter then create ig.json and ig.xml in $PWD and ../$SOURCE ===
echo '-t parameter for no terminology server (run faster and offline)= ' $NA
echo "================================================================="
echo getting rid of .DS_Store files since they gum up the igpublisher....
find . -name '.DS_Store' -type f -delete
sleep 1
# git status
if [[ $DEFN ]]; then
  echo "================================================================="
  echo === run definitions maker with optional source directory name as first argument ===
  echo "================================================================="
  python3.5 ${path3}definitions.py $SOURCE
  sleep 1
  git status
fi
echo "================================================================="
echo === run igpublisher ===
echo "================================================================="
java -jar ${path2}org.hl7.fhir.igpublisher.jar -ig ig.json -watch -tx $NA
