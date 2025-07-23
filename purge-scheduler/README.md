# purge-scheduler
This app demonstrates Micronaut (MN)'s scheduling capability. There are sample data saved in the Postgres database with dates. 
The app periodically purges old data from the database based on a scheduled cron job using the `@Scheduled` annotation.

### How to Run the App
1) Start the PostgreSQL Docker container with: `docker compose up -d`
   1) It will seed sample data into the database so you don't manually have to
   2) You can connect to the database and explore it using the `psql` [CLI](https://www.postgresql.org/docs/current/app-psql.html) or a GUI like [DBeaver](https://dbeaver.io/)
2) Execute the command `./gradlew run`
3) Stop the container with: `docker compose down`

### How to Build the app
1) Execute the command `./gradlew build`

### How to Test the app
1) Execute the command `./gradlew test`
