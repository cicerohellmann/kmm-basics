package de.keepin.basics.android

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import androidx.compose.material.Text
import de.keepin.basics.common.Greeting
import androidx.compose.runtime.Composable
import androidx.compose.ui.platform.setContent

fun greet(): String {
    return Greeting().greeting()
}

class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContent {
            PreviewGreeting()
        }
    }
}

@Composable
fun Greeting(name: String) {
    Text (text = "Hello $name!")
}

@androidx.compose.ui.tooling.preview.Preview
@Composable
fun PreviewGreeting() {
    Greeting(greet())
}