package br.com.jeangoncalves.orderpublisher.domain.model.order

import java.math.BigDecimal

data class OrderItem (
    val orderCode: String,
    val sku: String,
    val price: BigDecimal,
    val quantity: Int,
)