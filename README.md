# routing_bottom_nav_bar

## 1 Features
### 1.1 Goal
- Try Modular's Router Outlet as a bottom navigation bar routing system while keeping pages "alive"
### 1.2 Architecture
- Feature-based
### 1.3 State management
- Change Notifier
### 1.4 Dependency injection
- package <i>flutter_modular</i>
### 1.5 Requirements to understand
- Modular

## 2 Project specs
- Dart 2.19.6
- Flutter 3.7.10

## 3 Knowledges
### 3.1 RouterOutlet's tabs initial order
- LIFO (Last In First Out): The last module in the children list is the first tab
- See: root_module.dart

### 3.2 How to keep pages's states
- Keep states in controllers or stores
- Bind those classes in their respective modules and export them (i.e., export: true)
- Import those modules in the module Root
- Result: Even if we switch modules, child modules' controllers and stores won't be disposed because their lifecycles are bound to the module Root's lifecycle
- Alternative or Improvement: Hydrating strategy, as Hydrated Bloc does