# Custom App 📱

A modern Flutter application with authentication, navigation, and beautiful UI components.

## 👨‍💻 Developer

**John Mataa**  
📧 Email: [johnnymataa019@gmail.com](mailto:johnnymataa019@gmail.com)

## 📋 Description

Custom App is a comprehensive Flutter application that demonstrates modern mobile app development practices. It features a complete authentication system, beautiful UI components, and intuitive navigation patterns.

## ✨ Features

### 🔐 Authentication
- **Login Screen** - Secure user authentication with email validation
- **Registration Screen** - New user account creation with form validation
- **Splash Screen** - Beautiful app loading experience
- **Persistent Login** - Stay logged in across app sessions

### 🏠 Home Experience
- **Dashboard** - Clean and intuitive home interface
- **Quick Actions Grid** - Easy access to app features
- **Welcome Cards** - Personalized user experience

### 🧭 Navigation
- **Bottom Navigation Bar** - Easy switching between main sections
- **Custom Drawer** - Side menu with user profile and settings
- **Multiple Screens** - Home, Settings, and Profile sections

### 🎨 Custom Components
- **Custom Text Fields** - Reusable input components with validation
- **Custom Buttons** - Consistent button styling across the app
- **Custom Navigation Bar** - Beautiful bottom navigation implementation
- **Custom Drawer** - Sleek side menu with user information

### ⚙️ Settings & Profile
- **Profile Management** - View and manage user information
- **Settings Panel** - App preferences and configuration
- **Theme Support** - Light mode with dark mode preparation
- **Notification Controls** - Manage app notifications

## 🛠️ Technical Stack

- **Framework**: Flutter
- **Language**: Dart
- **State Management**: StatefulWidget
- **Storage**: SharedPreferences
- **UI Components**: Material Design 3
- **Architecture**: Feature-based structure

## 📁 Project Structure

```
lib/
├── apiServices/
│   └── auth_service.dart          # Authentication service
├── Component/
│   ├── custom_text_field.dart     # Reusable text input component
│   ├── custom_button.dart         # Reusable button component
│   ├── custom_drawer.dart         # Navigation drawer component
│   └── custom_navigation_bar.dart # Bottom navigation component
├── Model/
│   └── user.dart                  # User data model
├── Screens/
│   ├── Auth/
│   │   ├── Login.dart             # Login screen
│   │   └── Register.dart          # Registration screen
│   └── Home/
│       ├── main_screen.dart       # Main navigation container
│       ├── home_screen.dart       # Home dashboard
│       ├── settings_screen.dart   # Settings panel
│       └── profile_screen.dart    # User profile
└── main.dart                      # App entry point
```

## 🚀 Getting Started

### Prerequisites

- Flutter SDK (>=3.7.2)
- Dart SDK
- Android Studio / VS Code
- Android/iOS device or emulator

### Installation

1. **Clone the repository**
   ```bash
   git clone <repository-url>
   cd custom_app
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Run the app**
   ```bash
   flutter run
   ```

### Dependencies

```yaml
dependencies:
  flutter:
    sdk: flutter
  cupertino_icons: ^1.0.8
  shared_preferences: ^2.2.2

dev_dependencies:
  flutter_test:
    sdk: flutter
  flutter_lints: ^5.0.0
```

## 📱 Screenshots

### Authentication Flow
- Splash screen with app branding
- Login screen with email/password validation
- Registration screen with form validation

### Main Application
- Home dashboard with quick actions
- Profile screen with user statistics
- Settings panel with preferences

### Navigation
- Bottom navigation bar
- Custom drawer menu
- Smooth transitions between screens

## 🔑 Key Features Explained

### Authentication System
The app uses a mock authentication service that simulates real API calls. In production, you would replace this with actual backend integration.

### Custom Components
All UI components are designed to be reusable and consistent across the application, following Material Design principles.

### Navigation Pattern
The app uses a combination of bottom navigation and drawer navigation to provide intuitive user experience.

## 🎯 Future Enhancements

- [ ] Dark theme implementation
- [ ] Real backend integration
- [ ] Push notifications
- [ ] Biometric authentication
- [ ] Multiple language support
- [ ] Offline data caching
- [ ] Social media login
- [ ] Advanced user profiles

## 🐛 Known Issues

- None currently reported

## 🤝 Contributing

1. Fork the project
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 📞 Contact

**John Mataa**
- 🌐 Portfolio: [https://mataadev.vercel.app/](https://mataadev.vercel.app/)
- 📧 Email: [johnnymataa019@gmail.com](mailto:johnnymataa019@gmail.com)
- 🚀 Project Link: [Custom App Repository](https://github.com/mataa019/Custom_App)

## 🙏 Acknowledgments

- Flutter team for the amazing framework
- Material Design for UI guidelines
- Flutter community for inspiration and support

---

*Built with ❤️ using Flutter*
