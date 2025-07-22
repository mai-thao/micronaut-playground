package com.example

import io.micronaut.context.annotation.Value
import io.micronaut.scheduling.annotation.Scheduled
import jakarta.inject.Singleton
import java.time.LocalDateTime

@Singleton // Create only one instance of this class, to prevent duplicate scheduled job runs and ensures thread safety
class PurgeScheduler(
    private val repo: UserRepository,
    @Value("\${database.purge.days}") private val ttlDays: Long
) {

    /**
     * * * * * * *
     * | | | | | |
     * | | | | | +-- Year (optional)
     * | | | | +---- Day of the week (0 - 7, where both 0 and 7 represent Sunday)
     * | | | +------ Month (1 - 12)
     * | | +-------- Day of the month (1 - 31)
     * | +---------- Hour (0 - 23)
     * +------------ Minute (0 - 59)
     */
    @Scheduled(cron = "*/10 * * * * *") // This cron expression invokes the method every 10 second
    fun purgeData() {
        println("purgeData() called")
        val cutoff = LocalDateTime.now().minusDays(ttlDays) // Delete any records older than 30 days
        val deletedCount = repo.deleteByCreatedTimestampBefore(cutoff)
        println("Deleted $deletedCount records older than $ttlDays days ago")
    }
}
