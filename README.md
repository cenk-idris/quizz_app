# Quiz App

Quiz app consist of 5 distinct categories where user can choose or can press 'quick start' button for random category.

## Features

- 5 distinct categories
- Randomized questions at least 10 for each category
- Process bar to track performance

## Visual

| Homescreen                                        | Questionscreen                                            | Scorescreen                                         |
|---------------------------------------------------|-----------------------------------------------------------|-----------------------------------------------------|
| ![Home screen of QuizAPP](/assets/homescreen.jpg) | ![Question screen of QuizApp](/assets/questionscreen.jpg) | ![Score screen of QuizApp](/assets/scorescreen.jpg) |

## Run Locally

### Prerequisites

Ensure you have the following installed on your local machine:

- Xcode (iOS) or Android Studio (Android)
- [Flutter Version Manager](https://fvm.app/documentation/getting-started) 


### Clone the repository

First, navigate to the directory where you want to store the project and clone the repository:

```bash
git clone git@github.com:cenk-idris/bizz-card.git
cd bizz-card
```

### Sets correct Flutter SDK version for the project (it sets SDK only for this project so it wont mess your global config no worries)
```bash
fvm use
```

### Open iOS Simulator, hope you have mac :)
```bash
open -a Simulator
```

### Run the application
```bash
flutter run
```

### Try in case of error , might help :)
```bash
  flutter doctor -v
```