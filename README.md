Project Name
Trading app

Overview

This project is a Flutter-based application developed as part of a technical assessment. The application is designed to demonstrate best practices in Flutter development, including clean architecture, state management, API integration, and error handling.

Features

Trading symbols and its prices with live data

API Integration (Fetching and displaying data from remote sources)

State Management: Bloc

Custom Repository Pattern for handling API calls efficiently

Error Handling & Logging

Unit & Widget Testing

Localization & Internationalization

Dark Mode Support

Tech Stack

Flutter (Latest stable version)

Dart (Latest stable version)

State Management: Provider / Riverpod / Bloc (Specify the one used)

Networking: Dio / HTTP

Local Storage: Hive / Shared Preferences

Dependency Injection: GetIt (if used)

Testing: Mockito, Flutter Test

Project Structure

lib/
|── app/                            # sdk  and material initialization
│── base/                           # Contains app-wide utilities (e.g., network handling, constants)
|── feature/ │── data/              # Repositories & data sources (API & Local)
             │── domain/            # Business logic layer (Use cases & models)
             │── presentation/      # UI layer (Screens, widgets, state management)
│── main.dart                       # Entry point

Installation & Setup

Prerequisites

Flutter SDK (Ensure you have the latest version installed)

Dart SDK

Android Studio / VS Code (For development & debugging)

Emulator or Physical Device

Setup Steps

Clone the Repository

git clone <repo_url>
cd <project_directory>

Install Dependencies

flutter pub get

Run the Application

flutter run

Run Tests

flutter test

API Configuration

API base URL and keys should be configured in env.dart (or appropriate config file).

Use .env or similar secure methods to store sensitive keys.

Error Handling

Uses a custom exception handler to manage API errors gracefully.

Implements a fallback UI to inform users of issues.

Testing

Unit Tests: Written for core business logic and API layers.

Widget Tests: Ensures UI behaves as expected.

Integration Tests: (If implemented) for end-to-end flow validation.

Future Improvements

Implement additional caching mechanisms for better performance.

Improve UI/UX with animations and better responsiveness.

Add more test coverage to improve reliability.

Author

Real SarkhanbayliLinkedIn Profile

License

This project is licensed under the MIT License - see the LICENSE file for details.

