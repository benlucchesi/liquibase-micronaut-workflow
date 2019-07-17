#!/bin/bash

./gradlew update -PrunList=migrateLocalDb -PchangeLogFile=migrations/changelog.groovy
