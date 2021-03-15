package de.keepin.basics.android

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.*
import androidx.compose.runtime.Composable
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.activity.compose.setContent
import androidx.compose.ui.text.input.TextFieldValue
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp

fun click() {
    print("click")
}

class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContent {
            LoginPreview()
        }
    }
}

@Preview
@Composable
fun LoginPreview() {
    MaterialTheme {
        Column(
            modifier = Modifier.padding(16.dp)
                .background(color = Color.Transparent, shape = RoundedCornerShape(percent = 1))
                .fillMaxSize(),

        ) {
            TextField("Login")
            TextField("Password")
        }
        Column(
            modifier = Modifier.padding(16.dp)
                .background(color = Color.Transparent, shape = RoundedCornerShape(percent = 1))
                .fillMaxSize(),
            verticalArrangement = Arrangement.Bottom,

            ) {
            ConfirmButton()
        }
    }
}

@Composable
fun TextField(hint: String) {
    val textState = remember { mutableStateOf(TextFieldValue()) }
    TextField(
        value = textState.value,
        onValueChange = { textState.value = it },
        label = { Text(text = hint) },
        modifier = Modifier.padding(16.dp).fillMaxWidth()
    )
}

@Composable
fun ConfirmButton() {

    Button(
        onClick = {
            click()
        },
        modifier = Modifier.padding(16.dp).fillMaxWidth()
    ) {
        Text("Button")
    }
}