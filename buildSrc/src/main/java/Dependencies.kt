object Versions {
    const val kotlin = "1.4.31"
    const val kermit = "0.1.8"
    const val ktor = "1.5.2"
    const val kotlinxSerialization = "1.0.1"
    const val compose = "1.0.0-beta02"
    const val nav_compose = "1.0.0-alpha09"
    const val accompanist = "0.6.2"
    const val buildTools = "30.0.2"
}

object AndroidSdk {
    const val min = 21
    const val compile = 29
    const val target = compile
}

object AndroidX {
    const val appcompat = "androidx.appcompat:appcompat:1.2.0"
}

object Tools {
    const val gradle = "com.android.tools.build:gradle:7.0.0-alpha06"
}
object Kotlin {
    const val gradle = "org.jetbrains.kotlin:kotlin-gradle-plugin:${Versions.kotlin}"
    const val serialization = "org.jetbrains.kotlin:kotlin-serialization:${Versions.kotlin}"
}

object Ktor {
    const val core = "io.ktor:ktor-client-core:${Versions.ktor}"
    const val json = "io.ktor:ktor-client-json:${Versions.ktor}"
    const val logging = "io.ktor:ktor-client-logging:${Versions.ktor}"
    const val serialization = "io.ktor:ktor-client-serialization:${Versions.ktor}"

    const val ios = "io.ktor:ktor-client-ios:${Versions.ktor}"
    const val android = "io.ktor:ktor-client-android:${Versions.ktor}"
}

object Serialization {
    val it = "org.jetbrains.kotlinx:kotlinx-serialization-core:${Versions.kotlinxSerialization}"
}

object Compose {
    const val ui = "androidx.compose.ui:ui:${Versions.compose}"
    const val uiGraphics = "androidx.compose.ui:ui-graphics:${Versions.compose}"
    const val uiTooling = "androidx.compose.ui:ui-tooling:${Versions.compose}"
    const val foundationLayout = "androidx.compose.foundation:foundation-layout:${Versions.compose}"
    const val material = "androidx.compose.material:material:${Versions.compose}"
    const val runtimeLiveData = "androidx.compose.runtime:runtime-livedata:${Versions.compose}"
    const val navigation = "androidx.navigation:navigation-compose:${Versions.nav_compose}"
    const val accompanist= "dev.chrisbanes.accompanist:accompanist-coil:${Versions.accompanist}"
}