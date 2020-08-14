package com.joinpinata.pinescanner_example

import androidx.annotation.NonNull
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugins.GeneratedPluginRegistrant;

class MainActivity : FlutterActivity() { // You can keep this empty class or remove it. Plugins on the new embedding
    // now automatically registers plugins.
    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
        GeneratedPluginRegistrant.registerWith(flutterEngine);
    }
}