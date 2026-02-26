# 🧮 Flutter Calculator App

A simple and clean calculator application built using **Flutter**.
This app performs basic arithmetic operations with a responsive grid-based UI.

---

## 🚀 Features

* Basic arithmetic operations:

  * Addition (+)
  * Subtraction (-)
  * Multiplication (×)
  * Division (/)
* Real-time expression display
* Result evaluation using expression parser
* Clear (C) and Delete (DEL) functionality
* Error handling for invalid expressions

---

## 🛠 Built With

* 💙 **Flutter**
* 🎯 Dart
* 📦 [`math_expressions`](https://pub.dev/packages/math_expressions) package for parsing and evaluating expressions

---

## 📂 Project Structure

```
lib/
 ├── main.dart
 ├── buttons.dart
```

* `main.dart` → Main application logic and UI
* `buttons.dart` → Custom reusable button widget

---

## ▶️ Getting Started

### 1️⃣ Clone the repository

```bash
git clone https://github.com/your-username/your-repo-name.git
```

### 2️⃣ Navigate into the project

```bash
cd your-repo-name
```

### 3️⃣ Install dependencies

```bash
flutter pub get
```

### 4️⃣ Run the app

```bash
flutter run
```

---

## 🧠 How It Works

* User inputs are stored as a string expression.
* Before evaluation:

  * `x` is converted to `*` for parsing.
* The expression is parsed and evaluated using the `math_expressions` package.
* Results are displayed dynamically in the UI.
* Errors are handled using try-catch to prevent crashes.

---

## 📸 Screenshots
<div className="flex flex-row items-center justify-center gap-4">
  <img 
    className="w-[300px] h-auto rounded-lg" 
    alt="Screenshot 1" 
    src="https://github.com/user-attachments/assets/b75387f3-5bf8-4eab-a6ef-09bbc947fd01" 
  />

  <img 
    className="w-[300px] h-auto rounded-lg" 
    alt="Screenshot 2" 
    src="https://github.com/user-attachments/assets/8efeebb4-e1d3-4c03-a705-f822c382c7c6" 
  />
</div>

---

## 📌 Future Improvements

* Percentage (%) functionality
* ANS memory feature
* Scientific calculator mode
* Improved UI/UX design
* Dark mode

---

## 👨‍💻 Author

**Yasas Aththanayaka**
BSc (Hons) IT Undergraduate


