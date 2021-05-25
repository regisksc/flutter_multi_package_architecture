import 'package:iupp_core/core.dart';

import '../../../utils/data/storage/shared_preferences_mock.dart';

void main() {
  late SharedPreferencesLocalStorage sharedPreferencesLocalStorage;
  late SharedPreferencesMock sharedPreferencesMock;

  setUp(() {
    sharedPreferencesMock = SharedPreferencesMock();
    sharedPreferencesLocalStorage = SharedPreferencesLocalStorage(sharedPreferencesMock);
  });

  test('when saveValue is called should call setString', () async {
    // arrange
    when(() => sharedPreferencesMock.setString(any(), any())).thenAnswer((_) => Future.value(true));

    // act
    await sharedPreferencesLocalStorage.saveValue(key: 'key', value: 'value');

    // assert
    verify(() => sharedPreferencesMock.setString('key', 'value'));
  });

  test('when getValue is called should call getString', () async {
    // arrange
    when(() => sharedPreferencesMock.getString(any())).thenReturn('');

    // act
    await sharedPreferencesLocalStorage.getValue('key');

    // assert
    verify(() => sharedPreferencesMock.getString('key'));
  });

  test('when deleteValue is called should call getString', () async {
    // arrange
    when(() => sharedPreferencesMock.remove(any())).thenAnswer((_) async => true);

    // act
    await sharedPreferencesLocalStorage.deleteValue('key');

    // assert
    verify(() => sharedPreferencesMock.remove('key'));
  });
}
