package br.com.jeangoncalves.orderpublisher.domain.model.order

import java.math.BigDecimal
import java.time.LocalDateTime

data class Order (
    val code: String,
    val customerName: String,
    val totalAmount: BigDecimal,
    val createdAt: LocalDateTime,
)