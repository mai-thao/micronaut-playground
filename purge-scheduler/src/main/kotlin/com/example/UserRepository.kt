package com.example

import io.micronaut.data.annotation.Repository
import io.micronaut.data.jdbc.annotation.JdbcRepository
import io.micronaut.data.model.query.builder.sql.Dialect
import io.micronaut.data.repository.CrudRepository
import java.time.LocalDateTime

@Repository
@JdbcRepository(dialect = Dialect.POSTGRES)
interface UserRepository : CrudRepository<UserTransaction, Long> {
    // Delete records that are older than the cutoff date
    fun deleteByCreatedTimestampBefore(cutoff: LocalDateTime): Long
}
