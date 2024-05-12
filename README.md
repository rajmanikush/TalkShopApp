How to run the app on a simulator/Device

- Navigate to the Project folder and open `TalkShopApp.xcodeproj` in Xcode
- Choose any simulator/iOS Devices
- Run the project

High-level flow of the Application

<img width="1621" alt="Screenshot 2024-05-12 at 11 26 46 AM" src="https://github.com/rajmanikush/TalkShopApp/assets/47313996/e913bfca-99e9-4921-b62f-f684b29528f4">

<img width="633" alt="Screenshot 2024-05-12 at 11 30 15 AM" src="https://github.com/rajmanikush/TalkShopApp/assets/47313996/370779c7-b19c-4535-ae2f-1eaad2fcd117">


Low Level design of the application

Tech stack: SwiftUI
Architecture: MVVM
Design Patterns: Dependency injection to make layers loosely coupled 
API Services: We currently use services that get the data from the local JSON files.
Views: Created small and reusable components like   `NetworkImageView`, `UserSectionView` and `LikeCellView` 

All the views support the light and dark modes.


Future Scope
- Create configurations to switch from mock response to server response to make data dynamic.
- Created Loading views which we can improve and utilise shimmer for better UX.
- Customised Error screen instead of showing the plain normal error message.
- Vanilla AVPlay is used for video playing, which can be further customised for a better viewing experience.
