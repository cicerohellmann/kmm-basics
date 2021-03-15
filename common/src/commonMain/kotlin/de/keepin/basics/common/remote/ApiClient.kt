package de.keepin.basics.common.remote

import io.ktor.client.*
import io.ktor.client.features.*
import io.ktor.client.features.json.*
import io.ktor.client.features.json.serializer.*
import kotlinx.serialization.json.Json

private val json = Json {
    isLenient = true; ignoreUnknownKeys = true; coerceInputValues = true; useArrayPolymorphism =
    true; encodeDefaults = true
//    this will be here until I'' sure it will not brake other stuff

}

internal val client = HttpClient() {
    install(JsonFeature) {
        serializer = KotlinxSerializer(json)
    }
}

internal fun handleError(exception: Exception): Either<ApiError, Nothing> =
    if (exception is ResponseException) {
        if (exception.response.status.value == 404) {
            Either.Left(ItemNotFoundError)
        } else {
            Either.Left(UnknownError(exception.response.status.value))
        }
    } else {
        Either.Left(NetworkError)
    }