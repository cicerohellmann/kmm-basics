object Versions {
    const val kotlin = "1.4.21-2"
    const val kermit = "0.1.8"
    const val compose = "1.0.0-alpha11"
    const val nav_compose = "1.0.0-alpha06"
    const val accompanist = "0.5.0"
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