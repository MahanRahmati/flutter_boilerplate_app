#!/bin/bash

# Check if screen name argument provided
if [ -z "$1" ]; then
  echo "Error: screen name not provided"
  echo "Usage: $0 <screen_name>"
  exit 1
fi

SCREEN_NAME=$1
SCREEN_PATH="packages/screen_$SCREEN_NAME"

# Check if screen already exists
if [ -d "$SCREEN_PATH" ]; then
  echo "Error: Screen $SCREEN_NAME already exists"
  exit 1
fi

# Create screen folder and files
mkdir "$SCREEN_PATH"

cat <<EOL >"$SCREEN_PATH/pubspec.yaml"
name: screen_$SCREEN_NAME
description: A new Flutter project.
publish_to: 'none' # Remove this line if you wish to publish to pub.dev

version: 1.0.0+1

environment:
  sdk: ^3.6.0

resolution: workspace

dependencies:
  flutter:
    sdk: flutter

  flutter_riverpod: ^2.6.1
  riverpod_annotation: ^2.6.1

  app_constants: ^1.0.0+1

  app_localizations: ^1.0.0+1

  app_providers: ^1.0.0+1

  app_router: ^1.0.0+1

dev_dependencies:
  flutter_test:
    sdk: flutter
  flutter_lints: ^2.0.3

  riverpod_generator: ^5.0.0
  build_runner: ^2.4.13
  custom_lint: ^0.7.0
  riverpod_lint: ^2.6.3

flutter:
  uses-material-design: true
EOL

cat <<EOL >"$SCREEN_PATH/analysis_options.yaml"
include: ../../analysis_options.yaml
EOL

mkdir "$SCREEN_PATH/lib"

cat <<EOL >"$SCREEN_PATH/lib/screen_$SCREEN_NAME.dart"
/// $SCREEN_NAME screen.
library screen_$SCREEN_NAME;

export 'src/screens/${SCREEN_NAME}_screen.dart';
EOL

mkdir "$SCREEN_PATH/lib/src"
mkdir "$SCREEN_PATH/lib/src/screens"

cat <<EOL >"$SCREEN_PATH/lib/src/screens/${SCREEN_NAME}_screen.dart"
import 'package:flutter/material.dart';

class Screen extends StatelessWidget {
  const Screen({super.key});

  @override
  Widget build(final BuildContext context) {
    return const Placeholder();
  }
}
EOL

mkdir "$SCREEN_PATH/lib/src/widgets"

echo "Screen $SCREEN_NAME created at $SCREEN_PATH"
