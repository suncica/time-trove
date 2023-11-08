# time_trove_app

A new Flutter project for making daily tasks.

## Getting Started

### Important, before start:

For model classes used freezed package: https://pub.dev/packages/freezed#motivation
In order to generate freezed classes, please run the code (before build):

flutter pub run build_runner build --delete-conflicting-outputs

## Run App from terminal with:

flutter run

## Project Structure

The project's folder structure is organized as follows:

- `lib/app`: This is the main application folder.

  - `api`: Contains API classes for making network requests.
  - `bloc`: Houses the BLoC (Business Logic Component) classes, including Cubit and State classes.
  - `model`: Contains model classes for DTO (Data Transfer Object) objects.
  - pages - ui of the app

- `lib/common`: Contains files like theme, widgets, routing stc...

- `lib/l10n`: App localization..

- Other folders and files related to project's configuration, assets, and UI components as needed.

## Packages and Plugins

This project utilizes various Flutter packages and plugins to enhance its functionality:

- **BLoC for State Management:** The Business Logic Component pattern is used for efficient state management in the `bloc` folder.

- **Dio for Networking:** The Dio package is employed for making network requests in the `api` classes.

- **Freezed for Generating DTO Objects:** The Freezed package is used to generate DTO (Data Transfer Object) classes, which helps manage data efficiently.

- **Secure Storage for Token Management:** Secure storage is employed to securely store and retrieve tokens or sensitive data.

- **JSON Annotation Plugin:** This plugin aids in serializing and deserializing JSON data efficiently.

## Features

This project offers the following features:

- **User Login:** Users can log in to the application using their credentials.

- **User Registration:** New users can register and create an account.

- **Task Creation:** Users can create tasks, specifying details such as title, description, and priority.

- **Task Editing:** Existing tasks can be edited, allowing users to update task information.

- **Task Deletion:** Users can delete tasks they no longer need.

- **Task Filtering by Status:** Users can filter tasks based on their status.
