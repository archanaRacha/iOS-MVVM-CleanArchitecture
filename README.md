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


## Purpose of This Project
This project is intended to:
Demonstrate architectural decision-making
Showcase modern SwiftUI patterns
Serve as a reference implementation for scalable iOS apps
Highlight experience with clean, testable code

