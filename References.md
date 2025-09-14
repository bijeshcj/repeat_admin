Material Design Icons names
https://pub.dev/packages/material_design_icons_flutter
https://pictogrammers.com/library/mdi/

Architecture this project follows

lib/
├── core/
│    ├── theme/
│    │     ├── app_colors.dart
│    │     ├── app_text_styles.dart
│    ├── widgets/               # Shared/reusable custom components
│    │     ├── app_button.dart
│    │     ├── app_text_field.dart
│    │     ├── loading_spinner.dart
│    │     └── custom_card.dart
│    ├── utils/
│
├── features/
│    ├── auth/
│    │     ├── presentation/
│    │     │     ├── pages/login_page.dart
│    │     │     ├── widgets/login_form.dart   # Feature-specific widget
│    │     │     ├── widgets/social_login.dart # Feature-specific widget
│    │     ├── domain/
│    │     ├── data/
│
├── main.dart



