---
`AppetizersApp` is a simple food ordering application for iOS that showcases a modern, SwiftUI-based development approach. The app allows users to browse a list of appetizers fetched from a remote server, view detailed information for each item, and add them to a virtual order.

**Key Features:**
* **Appetizer List:** Displays a grid or list of available appetizers with their names, prices, and images.
* **Detail View:** Tapping an item shows a detailed screen with a larger image, description, nutritional information (calories, carbs, protein), and an "Add to Order" button.
* **Order Management:** A dedicated tab shows all items currently in the user's order, allowing them to view the total price and remove items.
* **Account View:** A placeholder screen for user account information and settings.

### **Technologies & Concepts Used**

* **UI Framework:** **SwiftUI**
    * A modern, declarative framework used to build the entire user interface.

* **Architecture:** **MVVM (Model-View-ViewModel)**
    * The code is structured to separate data (Model), UI (View), and business logic (ViewModel), which is a standard practice for building scalable SwiftUI apps.

* **Concurrency:** **Swift Concurrency (async/await)**
    * Used for performing asynchronous network operations in a clean and modern way, replacing older closure-based syntax.

* **Networking:** **URLSession**
    * Natively used to fetch the appetizer data from a remote API endpoint. The fetched JSON data is decoded into Swift objects using the `Decodable` protocol.

* **State Management:**
    * **`@StateObject` & `@ObservedObject`:** To create and manage the lifecycle of ViewModels.
    * **`@Published`:** To automatically announce changes from the ViewModel to the View, triggering UI updates.
    * **`@EnvironmentObject`:** To share data (like the current order) across different views in the app without passing it down manually.

* **Image Loading:** **`AsyncImage`**
    * A native SwiftUI view used to asynchronously download and display images from a URL, complete with placeholder and error states.
