package de.keepin.basics.common.remote

sealed class ApiError
data class UnknownError(val code: Int) : ApiError()
data class AuthenticationError(val error: Exception) : ApiError()
object NetworkError : ApiError()
object ItemNotFoundError : ApiError()