///Author: YangLang
///Email: yanglang116@gmail.com
///Date: 2023/9/5
import 'dart:convert';

void main() {
  String str = "avc";

// base64编码
  List<int> bytes = utf8.encode(str);
  print(bytes);
  String encodedStr = base64Encode(bytes);
  print(encodedStr);

// base64解码
  List<int> bytes2 = base64Decode(encodedStr);
  String decodeStr = String.fromCharCodes(bytes2);
  print(decodeStr);
}