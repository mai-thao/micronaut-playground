# purge-scheduler

There are sample data saved in the Postgres database with dates. This app periodically purges old data from the database based on a scheduled cron job using the `@Scheduled` annotation.
