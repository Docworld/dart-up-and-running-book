import 'dart:utf';

main() {
  List<int> expected = [0xc3, 0x8e, 0xc3, 0xb1, 0xc5, 0xa3, 0xc3, 0xa9, 0x72,
                        0xc3, 0xb1, 0xc3, 0xa5, 0xc5, 0xa3, 0xc3, 0xae, 0xc3,
                        0xb6, 0xc3, 0xb1, 0xc3, 0xa5, 0xc4, 0xbc, 0xc3, 0xae,
                        0xc5, 0xbe, 0xc3, 0xa5, 0xc5, 0xa3, 0xc3, 0xae, 0xe1,
                        0xbb, 0x9d, 0xc3, 0xb1];

  List<int> encoded = encodeUtf8('Îñţérñåţîöñåļîžåţîờñ');

  assert(() {
    if (encoded.length != expected.length) return false;
    for (int i = 0; i < encoded.length; i++) {
      if (encoded[i] != expected[i]) return false;
    }
    return true;
  });
}