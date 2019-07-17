
./gradlew generatedb
echo ${1}
./gradlew diffChangeLog -PrunList=diffLocalDb -PchangeLogFile=migrations/${1}.groovy
