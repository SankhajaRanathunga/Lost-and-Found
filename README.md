

# **Lost & Found Mobile Application**

A mobile-based Lost & Found system designed for university environments, developed using **Flutter**, **Firebase**, and **Cloudinary**.

This application allows students to view lost items digitally, while administrators manage and upload found items with images.

---

## **Project Overview**

The purpose of this application is to digitize the traditional lost and found process within a university.

Instead of physically visiting a lost and found office, students can:

* View recently found items
* Search and filter items
* Access detailed information (location, date, status)

Administrators can:

* Upload new found items
* Attach images using camera or gallery
* Update item status (Available / Collected)

---

## **How to Access the Application (IMPORTANT)**

To use this application, you must install the **Android APK**.

### **Option 1: GitHub Releases (Recommended)**

1. Go to the repository
2. Navigate to the **Releases** section
3. Download the latest file:

```
app-debug.apk
```

---

### **Option 2: From Project Directory**

After building the project, locate the APK at:

```
build/app/outputs/flutter-apk/app-debug.apk
```

---

### **Option 3: Download from Source Code (ZIP)**

1. Go to the repository main page
2. Click **Code → Download ZIP**
3. Extract the ZIP file
4. Navigate to:

```
build/app/outputs/flutter-apk/app-debug.apk
```

5. Install the APK on your Android device

---

## **APK Installation Guide**

1. Download the APK file
2. Transfer it to your Android device
3. Open the APK file
4. Allow installation from unknown sources (if prompted)
5. Install and launch the application

---

## **Account Access**

### **Student Account**

You can either create a new account or use a sample account.

**Account Requirements:**

* Any username can be used
* Email must follow this format:

```
<your-name>@students.nsbm.ac.lk
```

**Example:**

```
xxxx@students.nsbm.ac.lk
```

Only emails with the domain `students.nsbm.ac.lk` are accepted.

**Sample Login:**

```
Email: check1@students.nsbm.ac.lk  
Password: 1234567
```

---

### **Administrator Account**

```
Email: admin@nsbm.ac.lk  
Password: admin123
```

This account provides full administrative access, including item management and uploads.

---

## **Web Version Note**

The application can run on a web browser (e.g., Chrome), but:

* Camera functionality may not work properly
* Image uploads may be limited

For full functionality, use the **APK version**.

---

## **Technologies Used**

* Flutter (UI & App Development)
* Dart (Programming Language)
* Firebase Authentication
* Cloud Firestore (Database)
* Cloudinary (Image Hosting)
* Image Picker (Camera & Gallery Integration)

---

## **Features**

### **Student**

* View all found items
* Search items by title
* Filter by category and status
* View detailed item information

### **Administrator**

* Secure login
* Add new items
* Upload images (camera/gallery)
* Manage item status

---

## **Project Structure**

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

## **Setup (For Developers)**

### 1. Clone the Repository

```
git clone <your-repo-link>
```

### 2. Install Dependencies

```
flutter pub get
```

### 3. Run the Application

```
flutter run
```

---

## **Configuration Requirements**

Before running the application, ensure:

* Firebase project is configured
* `google-services.json` is added
* Cloudinary is configured with:

  * Cloud Name
  * Upload Preset

---

## **Future Improvements**

* Real-time notifications
* Claim request system
* Multiple images per item
* Admin analytics dashboard
* Integration with university systems

---

## **Author**

Developed as part of a university mobile application project.

---

## **License**

This project is intended for educational purposes only.


