# Set your project and Figma details
PROJECT_NAME="Shamo"
GITHUB_USERNAME="Veloxium"
FIGMA_URL="[Link to Figma](https://www.figma.com/file/gnU5qWcB4U1wHgGSaUVbKf/Shamo---Flutter-Laravel?type=design&node-id=0%3A1&mode=design&t=sm1Oob7p06SucAqL-1)"


# Add dependencies to pubspec.yaml
echo -e "dependencies:\n  get: ^4.3.8\n  google_fonts: ^2.1.0" >> pubspec.yaml

# Create README.md with template content
echo "# $PROJECT_NAME Flutter Project

## Overview
$PROJECT_NAME is a Flutter project that implements a user interface designed in Figma. This README provides essential information on setting up the project, dependencies, and other key details.

## Project Description
$PROJECT_NAME is a mobile application developed using Flutter to showcase the UI design created in Figma. It aims to demonstrate how to translate a Figma design into a fully functional Flutter app using the \"get\" package for state management and the \"google_fonts\" package for custom fonts.

## Getting Started

### Prerequisites
- Flutter installed on your machine. If not, follow the [official Flutter installation guide](https://flutter.dev/docs/get-started/install).

### Installation
1. Clone the repository to your local machine:
    \`\`\`bash
    git clone https://github.com/$GITHUB_USERNAME/$PROJECT_NAME.git
    \`\`\`

2. Navigate to the project directory:
    \`\`\`bash
    cd $PROJECT_NAME
    \`\`\`

3. Install dependencies:
    \`\`\`bash
    flutter pub get
    \`\`\`

### Figma Design
The Figma design for this project is available at [Figma - Shamo UI]($FIGMA_URL).

## Dependencies

### Get Package
$PROJECT_NAME uses the \"get\" package for state management. To include it in your project, add the following to your \`pubspec.yaml\` file:
\`\`\`yaml
dependencies:
  get: ^4.3.8
\`\`\`

### Google Fonts Package
For custom fonts, the \"google_fonts\" package is used. Add the following to your \`pubspec.yaml\` file:
\`\`\`yaml
dependencies:
  google_fonts: ^2.1.0
\`\`\`

## Usage

### Running the App
Use the following command to run the $PROJECT_NAME app on an emulator or a connected device:
\`\`\`bash
flutter run
\`\`\`

### Building the App
To build a release version of the app, use the following command:
\`\`\`bash
flutter build apk
\`\`\`

## Contributing
Feel free to contribute to the project by opening issues or submitting pull requests. We welcome your input and feedback.

## License
This project is licensed under the [MIT License](LICENSE).

## Acknowledgments
- [Flutter](https://flutter.dev/)
- [Figma]($FIGMA_URL)
" > README.md

# Open README in default text editor
open README.md
