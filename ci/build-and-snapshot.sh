#!/bin/bash

git clone https://github.com/quartz-scheduler/quartz.git
cd quartz
git fetch --tags
git checkout -b 2.5.0 v2.5.0
./gradlew clean build

cd ..
./mvnw -B deploy -P snapshot -s settings.xml
