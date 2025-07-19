package com.example

import io.micronaut.data.annotation.Id
import io.micronaut.data.annotation.MappedEntity
import java.time.LocalDateTime

@MappedEntity("user_transaction")
data class UserTransaction(
    @field:Id
    val id: Long,
    val name: String,
    val status: String,
    val amount: Double,
    val category: String,
    val createdTimestamp: LocalDateTime,
    val updatedTimestamp: LocalDateTime
)
