

# Ecommerce App

This is an Ecommerce application built using **Flutter** and **Firebase**. The app provides essential features for creating an online shopping platform where users can browse products, add them to their cart, and proceed to checkout.

## Features
- **User Authentication**: Sign up, login, and account management using Firebase.
- **Product Browsing**: Display a list of products with details.
- **Shopping Cart**: Add products to the shopping cart and view them.
- **Checkout Process**: Proceed to checkout and handle payment integration.
- **Admin Panel**: Manage products, orders, and users.

## Tech Stack
- **Flutter**: Frontend development
- **Firebase**: Backend services like Authentication, Firestore Database, and Storage

## Prerequisites
- **Flutter**: Version 2.0 or higher
- **Firebase**: A Firebase account with configured services for Authentication, Firestore, and Storage

## Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/mzerroug/ecommerce.git
   ```

2. Navigate to the project directory:
   ```bash
   cd ecommerce
   ```

3. Install dependencies:
   ```bash
   flutter pub get
   ```

4. Set up Firebase:
   - Create a Firebase project and enable Authentication (Email/Password), Firestore, and Storage.
   - Download the `google-services.json` or `GoogleService-Info.plist` and place it in the `android/app` or `ios/Runner` directory respectively.

5. Run the application:
   ```bash
   flutter run
   ```

## License

This project is licensed under the **MIT License**.
