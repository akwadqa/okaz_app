import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:hive/hive.dart';
import 'package:okaz/src/application/data/user_information/user_information.dart';

void main() {
  test('persists country value in Hive after reopening box', () async {
    final tempDir = await Directory.systemTemp.createTemp('user_info_hive_test');
    Hive.init(tempDir.path);

    if (!Hive.isAdapterRegistered(UserInformationAdapter().typeId)) {
      Hive.registerAdapter<UserInformation>(UserInformationAdapter());
    }

    final box = await Hive.openBox<UserInformation>('user_info_test_box');
    await box.put(
      0,
      UserInformation(
        token: 'token',
        fullName: 'Test User',
        mobileNumber: '12345678',
        country: 'QA',
      ),
    );
    await box.close();

    final reopenedBox = await Hive.openBox<UserInformation>('user_info_test_box');
    final savedInfo = reopenedBox.get(0);
    expect(savedInfo?.token, 'token');
    expect(savedInfo?.fullName, 'Test User');
    expect(savedInfo?.mobileNumber, '12345678');
    expect(savedInfo?.country, 'QA');

    await reopenedBox.close();
    await Hive.deleteBoxFromDisk('user_info_test_box');
    await Hive.close();
    await tempDir.delete(recursive: true);
  });
}
