#!/bin/bash

cd ..
echo '############################### Set up #######################################'
flutter pub global activate remove_from_coverage
echo '############################### Running tests ################################'
flutter test --coverage
echo '############################### Removing generated files #####################'
flutter pub global run remove_from_coverage:remove_from_coverage -f coverage/lcov.info -r 'lib/core/error*' -r 'lib/core/transition*' -r 'navigator_service.dart'
echo '############################### Generating coverage ##########################'
genhtml coverage/lcov.info -o coverage/html