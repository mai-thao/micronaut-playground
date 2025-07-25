package com.example

import io.mockk.every
import io.mockk.mockk
import io.mockk.verify
import org.junit.jupiter.api.Test

class PurgeSchedulerTest {

    private val repo = mockk<UserRepository>()
    private val purgeDays = 1L
    private val purgeScheduler = PurgeScheduler(repo, purgeDays)

    @Test
    fun `should call deleteByCreatedTimestampBefore`() {
        every { repo.deleteByCreatedTimestampBefore(any()) } returns 1

        purgeScheduler.purgeData()

        verify { repo.deleteByCreatedTimestampBefore(any()) }
    }
}
