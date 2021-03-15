package de.keepin.basics.common.login

import de.keepin.basics.common.remote.ApiError
import de.keepin.basics.common.remote.Either
import de.keepin.basics.common.remote.client
import de.keepin.basics.common.remote.handleError
import io.ktor.client.request.*
import io.ktor.client.statement.*
import io.ktor.http.*

@Throws(Exception::class)
suspend fun postLogin(login: LoginModel): Either<ApiError, String> = try {
    val response = client.post<HttpResponse> {
        url("https://keepin-dev.herokuapp.com/v1/authenticate")
        accept(ContentType.Application.Json)
        contentType(ContentType.Application.Json)
        body = login
    }
    val authentication = response.headers["authorization"] ?: ""
    Either.Right(authentication)
} catch (e: Exception) {
    handleError(e)
}

@Throws(Exception::class)
suspend fun postLoginIOS(login: LoginModel): String? {
    val response = client.post<HttpResponse> {
        url("https://keepin-dev.herokuapp.com/v1/authenticate")
        accept(ContentType.Application.Json)
        contentType(ContentType.Application.Json)
        body = login
    }
    return response.headers["authorization"] ?: ""
}
