# 📱 Post Viewer App

A simple Flutter app that displays posts and comments using the [JSONPlaceholder API](https://jsonplaceholder.typicode.com). The app uses **GetX** for state management, **Dio + Retrofit** for network calls, and **Firebase** for analytics, crash reporting, and push notifications.

---

## ✅ Features

* 🏠 Home screen showing a list of posts (title + short body)
* 📄 Post details screen with:

  * Full post content
  * Comments list
  * Author information
* 🔔 Push notifications (simulated)

  * Navigate directly to post detail from notification
  * Log notification events with Firebase Analytics
* 💥 Crash simulation button (to test Crashlytics)

---

## 💠 Technologies Used

* **Flutter**
* **GetX** (State Management & Navigation)
* **Dio** (HTTP Client)
* **Retrofit** (API abstraction)
* **JsonSerializable** (Model generation)
* **Firebase**

  * Firebase Core
  * Firebase Crashlytics
  * Firebase Analytics
  * Firebase Messaging

---

## 🛆 Packages

```yaml
dependencies:
  flutter:
  get:
  dio:
  retrofit:
  json_annotation:
  firebase_core:
  firebase_analytics:
  firebase_crashlytics:
  firebase_messaging:
  get_storage:
dev_dependencies:
  build_runner:
  json_serializable:
```

---

## 🚀 How to Use

1. **Clone the repo**

   ```bash
   git clone https://github.com/your-repo/post_viewer_app.git
   cd post_viewer_app
   ```

2. **Install dependencies**

   ```bash
   flutter pub get
   ```

3. **Generate model files**

   ```bash
   flutter pub run build_runner build --delete-conflicting-outputs
   ```

4. **Run the app**

   ```bash
   flutter run
   ```

---

## 🧪 Testing

* Unit test included for controller logic
* Crash simulation available via button
* Use Firebase Console to test notification delivery

---

## 📌 Notes

* Backend used: [JSONPlaceholder](https://jsonplaceholder.typicode.com)
* No authentication is used — it’s a public demo API


---
