

buildscript {
    repositories {
        gradlePluginPortal()
        jcenter()
        google()
        mavenCentral()
    }

    dependencies {
        val kotlin = "1.4.21-2"
        classpath("com.android.tools.build:gradle:7.0.0-alpha06")
        classpath("org.jetbrains.kotlin:kotlin-gradle-plugin:${kotlin}")
    }
}

allprojects {
    repositories {
        google()
        jcenter()
        mavenCentral()
    }
}