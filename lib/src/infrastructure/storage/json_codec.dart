import 'dart:convert';

Map<String, dynamic> decodeJsonObject(String raw) {
  final obj = jsonDecode(raw);
  if (obj is Map<String, dynamic>) return obj;
  return Map<String, dynamic>.from(obj as Map);
}

String encodeJsonObject(Map<String, dynamic> obj) => jsonEncode(obj);
