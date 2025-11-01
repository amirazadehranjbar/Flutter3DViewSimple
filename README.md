# 3D Model Viewer - Flutter

A simple Flutter application that displays 3D models using the `model_viewer_plus` package. This project demonstrates how to integrate and render 3D GLB/GLTF models in a Flutter mobile app.

## 📱 Features

- ✨ Display 3D models in GLB/GLTF format
- 🔄 Auto-rotation of 3D models
- 👆 Interactive camera controls (zoom, pan, rotate)
- 📱 AR support for compatible devices
- 🎨 Customizable background color

## 🚀 Getting Started

### Prerequisites

- Flutter SDK (3.9.2 or higher)
- Android Studio or VS Code
- Android SDK (API level 21 or higher)
- An Android/iOS device or emulator

### Installation

1. Clone the repository:
```bash
git clone https://github.com/yourusername/flutter-3d-viewer.git
cd flutter-3d-viewer
```

2. Install dependencies:
```bash
flutter pub get
```

3. Run the app:
```bash
flutter run
```

## 📦 Dependencies

```yaml
dependencies:
  flutter:
    sdk: flutter
  model_viewer_plus: ^1.9.3
  webview_flutter: ^4.13.0
  webview_flutter_android: ^4.10.5
  webview_flutter_wkwebview: ^3.23.2
```

## 📂 Project Structure

```
lib/
├── main.dart          # Main application entry point
assets/
├── models/
    └── DamagedHelmet.glb  # 3D model file
```

## 🎯 Usage

### Basic Implementation

```dart
ModelViewer(
  backgroundColor: Color.fromARGB(0xFF, 0xEE, 0xEE, 0xEE),
  src: 'assets/models/DamagedHelmet.glb',  // Local asset
  alt: 'A 3D model',
  ar: true,
  autoRotate: true,
  autoPlay: true,
  cameraControls: true,
)
```

### Using Online Models

You can also load models from URLs:

```dart
ModelViewer(
  src: 'https://modelviewer.dev/shared-assets/models/Astronaut.glb',
  alt: 'A 3D model of an astronaut',
  autoRotate: true,
  cameraControls: true,
)
```

### Adding Your Own 3D Models

1. Place your `.glb` or `.gltf` file in the `assets/models/` directory
2. Update `pubspec.yaml`:
```yaml
flutter:
  assets:
    - assets/models/YourModel.glb
```
3. Reference it in your code:
```dart
src: 'assets/models/YourModel.glb'
```

## 🛠️ Configuration

### Android Setup

In `android/app/build.gradle`, ensure:
```gradle
minSdk = 21
compileSdk = 34
targetSdk = 34
```

### Internet Permission (for online models)

Add to `android/app/src/main/AndroidManifest.xml`:
```xml
<uses-permission android:name="android.permission.INTERNET"/>
```

## 🐛 Troubleshooting

### WebView Platform Error
If you encounter WebView initialization errors:
```dart
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  AndroidWebViewController.enableDebugging(true);
  runApp(const MyApp());
}
```

### Gradle Issues
If you face Gradle version conflicts:
- Use Android Gradle Plugin 8.3.0
- Use Gradle 8.4
- Use Kotlin 1.9.22

## 📚 Resources

- [model_viewer_plus Documentation](https://pub.dev/packages/model_viewer_plus)
- [Free 3D Models](https://modelviewer.dev/examples/)
- [GLB Model Viewer](https://gltf-viewer.donmccurdy.com/)
- [Flutter Documentation](https://flutter.dev/docs)

## 🤝 Contributing

Contributions are welcome! Feel free to open issues or submit pull requests.

## 📄 License

This project is open source and available under the [MIT License](LICENSE).

## 👤 Author

Created by [Your Name]
- GitHub: [@yourusername](https://github.com/yourusername)

## 🙏 Acknowledgments

- Thanks to the Flutter team for the amazing framework
- `model_viewer_plus` package developers
- Google's Model Viewer project

---

⭐ If you found this helpful, please star the repository!
