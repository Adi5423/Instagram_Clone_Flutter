# Instagram Clone

This is a **mobile application built with Flutter** that aims to replicate the core features of the popular social media platform, Instagram. The project is designed to showcase modern Flutter development practices, including a clean project structure and responsive UI design.

---

## ✨ Features

* **User Authentication:** Secure login and sign-up screens for new and returning users.
* **Main Feed:** A scrollable feed to view posts from other users.
* **Post Creation:** A dedicated screen for users to create and share new posts.
* **User Profile:** A personal profile page to view your own posts and information.
* **Search:** A search screen for finding other users and content.

---

## ⚙️ Prerequisites

To run this project on your local machine, you will need the following installed:

* **Flutter SDK**: The core framework for building the app.
* **Dart SDK**: The programming language used by Flutter.
* A code editor such as **Visual Studio Code** or **Android Studio**.

---

## 🚀 Getting Started

Follow these simple steps to get the project up and running on your device:

1.  **Clone the repository:**
    ```bash
    git clone [https://github.com/your-username/your-repo-name.git](https://github.com/your-username/your-repo-name.git)
    ```
2.  **Navigate to the project directory:**
    ```bash
    cd your-repo-name
    ```
3.  **Install dependencies:**
    ```bash
    flutter pub get
    ```
4.  **Run the app:**
    ```bash
    flutter run
    ```

---

## 📂 Project Structure

The project follows a modular file structure to keep the code organized and scalable.

```text
├── android/            # Android-specific files
├── assets/             # Images, fonts, and other assets
│   ├── ic_meta_logo.png
│   └── ic_instagram_logo.png
├── lib/
│   ├── core/           # Core app components and helpers
│   │   ├── router/
│   │   │   └── app_router.dart
│   │   └── theme/
│   │       └── app_theme.dart
│   └── features/       # Feature-specific code organized by screen
│       ├── auth/
│       │   └── presentation/
│       │       ├── login_screen.dart
│       │       └── signup_screen.dart
│       ├── feed/
│       │   └── presentation/
│       │       └── feed_screen.dart
│       ├── post/
│       │   └── presentation/
│       │       └── create_post_screen.dart
│       ├── profile/
│       │   └── presentation/
│       │       └── profile_screen.dart
│       └── search/
│           └── presentation/
│               └── search_screen.dart
├── pubspec.yaml        # Project dependencies
├── README.md           # This file
└── ...other files...
```

---

## 📦 Dependencies

* `go_router`: A declarative routing package for Flutter, used for navigating between screens.

---

