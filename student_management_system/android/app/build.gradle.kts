// App level build.gradle.kts

plugins {
    id("com.android.application")
    id("kotlin-android")
    // Flutter plugin must be applied after Android and Kotlin plugins
    id("dev.flutter.flutter-gradle-plugin")
    id("com.google.gms.google-services")
}

android {
    namespace = "com.example.student_management_system"
    compileSdk = flutter.compileSdkVersion
    ndkVersion = "27.0.12077973" // ✅ fixed NDK version

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_11
        targetCompatibility = JavaVersion.VERSION_11
    }

    kotlinOptions {
        jvmTarget = "11" // ✅ cleaner version
    }

    defaultConfig {
        applicationId = "com.example.student_management_system"
        minSdk = flutter.minSdkVersion
        targetSdk = flutter.targetSdkVersion
        versionCode = flutter.versionCode
        versionName = flutter.versionName
    }

    buildTypes {
        release {
            // TODO: Add your own signing config for release builds
            signingConfig = signingConfigs.getByName("debug")
        }
    }
}

flutter {
    source = "../.."
}

dependencies {
    // Import the Firebase BoM
    implementation(platform("com.google.firebase:firebase-bom:33.13.0"))

    // Add Firebase Analytics
    implementation("com.google.firebase:firebase-analytics")

    // You can add other Firebase products if needed
}
