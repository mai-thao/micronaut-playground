package com.example

import jakarta.inject.Singleton
import java.time.LocalDateTime

@Singleton
class PurgeScheduler(private val repo: UserRepository) {
    fun purgeData() {
        println("purgeData() called")
        val cutoff = LocalDateTime.now().minusDays(30) // Delete any records older than 30 days
        val deletedCount = repo.deleteByCreatedTimestampBefore(cutoff)
        println(deletedCount)
    }
}
