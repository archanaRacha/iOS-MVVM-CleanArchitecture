# Movie Browser – SwiftUI | MVVM | Clean Architecture


## Overview
Movie Browser is a sample iOS application built using SwiftUI, demonstrating MVVM with Clean Architecture principles.
The app fetches movie data from a public REST API and presents it in a clean, scalable, and testable architecture.
This project is designed as a portfolio showcase to demonstrate modern iOS development practices, architectural thinking, and unit testing

## Architecture
View (SwiftUI)
   ↓
ViewModel (Business Logic, State)
   ↓
Repository / API Service
   ↓
Network Layer (URLSession)

Why this architecture?
Ensures testability
Improves maintainability
Supports scaling features without impacting UI
Aligns with production-grade iOS apps

MovieBrowser/
│
├── Core/
│   ├── Models/           # Decodable domain models
│   ├── Network/          # API service & protocols
│   └── Repository/       # Data abstraction
│
├── Features/
│   ├── MovieList/
│   │   ├── MovieListView.swift
│   │   └── MovieListViewModel.swift
│   │
│   └── MovieDetail/
│       └── MovieDetailView.swift
│
└── Shared/
    └── Helpers/


## Key Features
Fetches movie list using async/await
Displays movie details with poster images
Clean error & loading state handling
Dependency Injection via protocols
Unit tests for ViewModel using mocked services

## API Used
TVMaze API
https://api.tvmaze.com/shows


## Tech Stack
Swift 5
SwiftUI
MVVM
Clean Architecture
Async/Await
URLSession
XCTest

## Screenshots
<img width="828" height="1792" alt="IMG_4329" src="https://github.com/user-attachments/assets/dce07eb7-5e7c-4e14-a167-99c0eeb0aa52" />

<img width="828" height="1792" alt="IMG_4330" src="https://github.com/user-attachments/assets/6e8d85a6-6514-4f82-abfd-38c37999c8c8" />

## Purpose of This Project
This project is intended to:
Demonstrate architectural decision-making
Showcase modern SwiftUI patterns
Serve as a reference implementation for scalable iOS apps
Highlight experience with clean, testable code

👤 Author
Archana Racha
Senior iOS Engineer
🔗 LinkedIn: https://www.linkedin.com/in/archana-r-5600aa53/

