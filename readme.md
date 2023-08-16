# Project Introduction

In this project, our aim is to assist Kimia, the owner of a shopping application, in creating and enhancing the filtering page for purchased products. This page holds significant importance as it empowers the administrator to filter products based on various attributes.

## UI Challenge

Kimia has provided the initial styles for Buttons, Text, and the bottom sheet. Now, your task is to help her implement these challenges.

![BaseStyle](https://github.com/novaday-co/flutter-test/blob/master/screen_shots/main.png?raw=true)


### Challenge 1

In the bottom sheet, our goal is to create a dropdown-style filter. However, a concern has arisen. When there is insufficient space at the bottom to display the dropdown, it should open from the top, and vice versa when sufficient space is available.

![Challenge 1]([image_location_1](https://raw.githubusercontent.com/novaday-co/flutter-test/master/screen_shots/challenge1.png))

### Challenge 2

Within the bottom sheet, we require a user selection filter. The intriguing aspect is that after each typing action, an overlay should appear above or below the TextField to present user options (similar to a dropdown). Upon selecting a user, their choice should be displayed as a Chip within the TextField, with the option to remove it.

![Challenge 2]([image_location_2](https://raw.githubusercontent.com/novaday-co/flutter-test/master/screen_shots/challenge2.png))

### Challenge 3

Using the Bloc State Management, showcase the selected filters on the main page. The crucial point is to ensure that the filters persist even after the application is closed and reopened.
Guidance: Consider utilizing Hive or an alternative approach.

![Challenge 3]([image_location_3](https://raw.githubusercontent.com/novaday-co/flutter-test/master/screen_shots/home.png))

## Integration Test

Write tests for selecting filter states and triggering the apply button.

## Scoring Criteria

|Title  |Score   |
| :------------ | :------------ |
|   Challenge 1|  80 |
|   Challenge 2|  120 |
|   Challenge 3|   60|
|   Test writing|   50|
|   Use Bloc architecture|  40 |
|   Clean commit|  20 |
|   Clean code|  20 |

**Minimum required score : 150**


## Getting Started Guide

We have provided the initial project files and styles for your convenience. You just need to begin the implementation process in your forked repository.
In addition to the provided screenshots, you can also utilize the following [Figma link](https://www.figma.com/file/vsCOYKLiwwDIRwk06nymIJ/Flutter-test-Novaday?type=design&node-id=0:1&mode=design&t=a5a0W9Jwzts13b57-1) for reference.
