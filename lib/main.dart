import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';
import 'package:webview_flutter_android/webview_flutter_android.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize WebView platform for Android
  AndroidWebViewController.enableDebugging(true);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('3D Model Viewer'),
          backgroundColor: Colors.blue,
        ),
        body: const Center(
          child: SizedBox(
            width: double.infinity,
            height: 400,
            child: ModelViewer(
              backgroundColor: Color.fromARGB(0xFF, 0xEE, 0xEE, 0xEE),
              src: 'assets/models/DamagedHelmet.glb',
              alt: 'A 3D model of an astronaut',
              ar: true,
              autoRotate: true,
              autoPlay: true,
              cameraControls: true,
            ),
          ),
        ),
      ),
    );
  }
}