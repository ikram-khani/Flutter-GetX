import 'package:get/get.dart';

class Message extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'hello': 'Hello',
        },
        'ur_PK': {
          'hello': 'سلام',
        },
        'zh_CN': {
          'hello': '你好',
        },
        'ar_SA': {
          'hello': 'السَّلاَمُ عَلَيْكُمْ',
        }
      };
}
