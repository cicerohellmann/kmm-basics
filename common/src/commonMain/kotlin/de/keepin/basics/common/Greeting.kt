package de.keepin.basics.common


class Greeting {
    fun greeting(): String {
        return "Hello, ${Platform().platform}!"
    }
}
