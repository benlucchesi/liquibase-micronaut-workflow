
Liquibase-Micronaut Workflow Demonstration

This sample application demonstrates how to setup a Micronaut application to use liquibase for managing database schemas reflected from GORM domain objects.


Step 1: start the application 

   Run the command: ./gradlew run

  Notice that the application fails to start? This is because the database schema fails to validate because its missing tables required by the domain objects

Step 2: generate a change log

  Run the command: `./generatechangelog.sh mydomainobject`

  This command generates a change log in the ./migrations directory. Inspect it to review the contents.

Step 3: update the master changelog

  Edit ./migrations/changelog.groovy and uncomment the line
    `include file: 'migrations/mydomainobject'`

Step 4: migrate the database

  Run the command `./migratelocaldb`

  The migration will successfully complete

Step 5: start the application 

  Run the command: ./gradlew run

  The application should successfully start. Congratulations, you've migrated your development database.


To reset this example, delete the generatedb and developmentdb files created in the working directory.

For a full description and writeup, see the following article: <link to article>

The demonstration is provided by Accuracy Software
www.accuracysoftware.com
Software Development*Engineering and Design*Cloud Hosting and DevOps
