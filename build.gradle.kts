buildscript {
    repositories {
        gradlePluginPortal()
        jcenter()
        google()
        mavenCentral()
    }

    dependencies {
        classpath(Tools.gradle)
        classpath(Kotlin.gradle)
        classpath(Kotlin.serialization)
    }
}

allprojects {
    repositories {
        google()
        jcenter()
        mavenCentral()
    }
}