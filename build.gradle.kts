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
    }
}

allprojects {
    repositories {
        google()
        jcenter()
        mavenCentral()
    }
}