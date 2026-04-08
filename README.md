# 📱 Lost & Found Mobile Application

A simple and efficient **Lost & Found system for university students**, built using **Flutter, Firebase, and Cloudinary**.

This application allows students to view lost items and enables administrators to manage and upload found items with images.

---

## 🚀 Project Overview

The goal of this application is to **digitize the traditional lost and found process** in a university environment.

Instead of physically visiting a lost and found office, students can:

* View recently found items
* Search and filter items
* Check item details (location, date, status)

Admins can:

* Upload new found items
* Attach images (camera/gallery)
* Mark items as collected

---

## ⚠️ IMPORTANT — How to Use

This application is designed to be used as an **APK on an Android device**.

👉 You MUST install the APK to fully use all features (especially camera & image upload).

---

## 📦 Installation Guide (APK)

1. Download the APK file from this repository:

   ```
   build/app/outputs/flutter-apk/app-release.apk
   ```

2. Transfer the APK to your Android phone

3. Open the APK file on your phone

4. Allow:

   * Install from unknown sources

5. Install the app

6. Open and use 🚀

---

## 🧪 Note on Web Version

The app can run on web (Chrome), but:

❌ Camera access may not work
❌ Some image upload features are limited

👉 For full functionality, **use the APK version**

---

## 🛠️ Technologies Used

* Flutter (UI & App Development)
* Dart (Programming Language)
* Firebase Authentication
* Cloud Firestore (Database)
* Cloudinary (Image Hosting)
* Image Picker (Camera & Gallery)

---

## ✨ Features

### 👨‍🎓 Student

* View all found items
* Search items by title
* Filter by category and status
* View item details

### 🔐 Admin

* Secure login
* Add new items
* Upload images (camera/gallery)
* Manage item status (Available / Collected)

---

## 📂 Project Structure

```
lib/
 ├── core/
 │    └── services/
 │         └── cloudinary_service.dart
 │
 ├── features/
 │    ├── auth/
 │    ├── home/
 │    └── admin/
 │
 └── main.dart
```

---

## ⚙️ Setup (For Developers)

1. Clone the repository:

   ```
   git clone <your-repo-link>
   ```

2. Install dependencies:

   ```
   flutter pub get
   ```

3. Run the app:

   ```
   flutter run
   ```

---

## 🔑 Configuration Required

Before running:

* Setup Firebase project
* Add `google-services.json`
* Configure Cloudinary:

  * Cloud Name
  * Upload Preset

---

## 📌 Future Improvements

* Real-time notifications
* Claim request system
* Multiple images per item
* Admin dashboard analytics
* University system integration

---

## 👨‍💻 Author

Developed as part of a university mobile application project.

---

## 📄 License

This project is for educational purposes.
