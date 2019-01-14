#!/bin/bash


find ${CodeDir} -type f -name '*.pyc' -delete
find ${CodeDir}/.. -type f -name '*.pyc' -delete

jenkins-jobs test -o /output "$*"
