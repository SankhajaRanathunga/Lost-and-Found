Lost & Found Mobile Application

A mobile-based Lost & Found system designed for university environments, developed using Flutter, Firebase, and Cloudinary.

This application enables students to view lost items digitally while allowing administrators to manage and upload found items with images.


---

Project Overview

The purpose of this application is to digitize the traditional lost and found process within a university.

Instead of physically visiting a lost and found office, students can:

View recently found items

Search and filter items

Access detailed information such as location, date, and status


Administrators can:

Upload new found items

Attach images using camera or gallery

Update item status (e.g., available or collected)



---

How to Access the Application

To use this application, installation of the Android APK is required.

The APK file is available in the GitHub repository:

Option 1: GitHub Releases (Recommended)

Navigate to the Releases section of this repository

Download the latest app-debug.apk file



---

Option 2: From Project Directory

You can locate the APK within the project after building:

build/app/outputs/flutter-apk/app-debug.apk


---

Option 3: Download from Source Code (ZIP)

Go to the repository main page

Click Code → Download ZIP

Extract the downloaded file

Navigate to:


build/app/outputs/flutter-apk/app-debug.apk

Install the APK on your Android device



---

Installation Guide (APK)

1. Download the APK file


2. Transfer it to your Android device


3. Open the APK file


4. Allow installation from unknown sources if prompted


5. Install and launch the application




---

Account Access

Student Account

You can either create a new account or log in using a sample student account.

Account creation requirements:

You may use any username

The email must follow this format:


<your-name>@students.nsbm.ac.lk

Example:

john@students.nsbm.ac.lk

Only emails with the domain students.nsbm.ac.lk are accepted.

Sample Student Login:

Email: check1@students.nsbm.ac.lk

Password: 1234567



---

Administrator Access

The application includes a predefined administrator account:

Email: admin@nsbm.ac.lk

Password: admin123


This account provides access to administrative features such as item management and uploads.


---

Web Version Note

The application can be run on a web browser (e.g., Chrome). However:

Camera functionality may not work as expected

Image upload features may be limited


For full functionality, use the APK version.


---

Technologies Used

Flutter (UI and application development)

Dart (programming language)

Firebase Authentication

Cloud Firestore (database)

Cloudinary (image hosting)

Image Picker (camera and gallery integration)



---

Features

Student

View all found items

Search items by title

Filter items by category and status

View detailed item information


Administrator

Secure login

Add new items

Upload images (camera or gallery)

Manage item status (available or collected)



---

Project Structure

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


---

Setup (For Developers)

1. Clone the repository:



git clone <your-repo-link>

2. Install dependencies:



flutter pub get

3. Run the application:



flutter run


---

Configuration Requirements

Before running the application, ensure the following are configured:

Firebase project setup

google-services.json added to the project

Cloudinary configuration:

Cloud name

Upload preset




---

Future Improvements

Real-time notifications

Claim request system

Support for multiple images per item

Administrative analytics dashboard

Integration with university systems



---

Author

Developed as part of a university mobile application project.


---

License

This project is intended for educational purposes only.