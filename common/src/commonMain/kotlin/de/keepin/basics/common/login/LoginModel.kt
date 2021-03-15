package de.keepin.basics.common.login

import kotlinx.serialization.Serializable

@Serializable
data class LoginModel(
    val email: String? = "",
    val password: String? = "",
    val userType: String? = ""
) {
    fun isNotNullOrEmpty(): Boolean {
        return email.toString().isNotEmpty() && password.toString().isNotEmpty()
    }
}