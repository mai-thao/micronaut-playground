# purge-scheduler
There are sample data saved in the Postgres database with dates. This app periodically purges 
old data from the database based on a scheduled cron job using the `@Scheduled` annotation.

### How to Run the App
1) Execute the command `./gradlew run`

### How to Build the app
1) Execute the command `./gradlew build`

### How to Test the app
1) Execute the command `./gradlew test`
