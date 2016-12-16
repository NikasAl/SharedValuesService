#!/bin/sh

rm -Rf ./.svn
rm -Rf ./.idea
mvn clean
find . -name "*.iml" | xargs rm


