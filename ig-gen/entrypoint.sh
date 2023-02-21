#!/bin/sh

./_updatePublisher.sh -y
chmod a+x _genonce.sh

java -jar plantuml.jar -tsvg -o /usr/share/ig/content/input/images /usr/share/ig/content/input/images-source

cd content
../_genonce.sh
