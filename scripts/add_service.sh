#!/bin/bash

# Check if service name argument provided
if [ -z "$1" ]; then
	echo "Error: service name not provided"
	echo "Usage: $0 <service_name>"
	exit 1
fi

SERVICE_NAME=$1
SERVICE_PATH="packages/service_$SERVICE_NAME"

# Check if service already exists
if [ -d "$SERVICE_PATH" ]; then
	echo "Error: Service $SERVICE_NAME already exists"
	exit 1
fi

# Create service folder and files
mkdir "$SERVICE_PATH"

cat <<EOL >"$SERVICE_PATH/pubspec.yaml"
name: service_$SERVICE_NAME
description: A new Flutter project.
publish_to: 'none' # Remove this line if you wish to publish to pub.dev

version: 1.0.0+1

environment:
  sdk: '>=3.1.1 <4.0.0'

dependencies:
  flutter:
    sdk: flutter

dev_dependencies:
  flutter_test:
    sdk: flutter
  flutter_lints: ^2.0.3
EOL

cat <<EOL >"$SERVICE_PATH/analysis_options.yaml"
include: ../../analysis_options.yaml
EOL

mkdir "$SERVICE_PATH/lib"

cat <<EOL >"$SERVICE_PATH/lib/service_$SERVICE_NAME.dart"
/// $SERVICE_NAME service.
library service_$SERVICE_NAME;

export 'src/${SERVICE_NAME}_service.dart';
EOL

mkdir "$SERVICE_PATH/lib/src"

cat <<EOL >"$SERVICE_PATH/lib/src/${SERVICE_NAME}_service.dart"
/// A Calculator.
class Calculator {
  /// Returns [value] plus 1.
  int addOne(final int value) => value + 1;
}
EOL

echo "Service $SERVICE_NAME created at $SERVICE_PATH"
