# fp22-happ
Apprenticeship Spring 2022 - Final Project Repository

# About
Happ is an iOS app designed to help college students find local events that are happening near them. Users are able to create and share their events to a cloud database which is then visible for anyone who has downloaded the app. Events are displayed in the map tab as pins on a map that tracks the user's location, and tapping on them shows more information about the specific event. Users can also filter the events shown by category in the search tab. The account tab allows users to set a name that will be shared when hosting an event and enter their instagram handle. Version 1.0.0 is just the start, and we have big plans for the future of Happ. Our goal is to develop it into a feature-rich application that can be published to the app store and utilized by UNC Students.

# Documentation
Models:

Profile - Models the user's profile data, and handles calls to store info in userDefaults.
Event - Models an event and includes all relevant data for display.
firebaseService - Handles access to the firestore cloud database through helper functions exposed only in certain parts of the app. Additionally, manages authentication for new users and log-in for pre-existing users.

ViewModels:

MapViewModel - Uses CoreLocation to establish a location manager, get the user's location, and supply these to the mapView.
SearchViewModel - Implements methods to search by category, and handles access to the firestore database for the search feature.
AccountViewModel - Regulates access to userDefaults and supplies the saved name and instagram handle values.

Views:
WelcomeView - View for user onboarding that allows users to create their own account and registers them in the firebase Authentication database
MapView - The main view of our application, it presents a map centered on the user's location with a dropped pin for each event.
SearchView - The main search view of our application that filters events into categories and allows users to access them in a list format
AccountView - The main profile view of our application that displays the user's saved name and instagram handle.
