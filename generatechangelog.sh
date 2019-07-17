#!/bin/bash

./gradlew generatedb
./gradlew diffChangeLog -PrunList=diffLocalDb -PchangeLogFile=migrations/${1}.groovy
