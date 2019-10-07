import 'dart:convert';
import 'dart:typed_data';

import 'package:built_value/serializer.dart';
import 'package:flutter_redux_starter/data/util/serializers.dart';
import 'package:redux_persist/redux_persist.dart';

class BuiltValueSerializer<T> implements StateSerializer<T> {
  final Serializer<T> decoder;

  final List<String> whiteList;

  BuiltValueSerializer(this.decoder, [this.whiteList]);

  @override
  T decode(dynamic data) {
    if (data == null) {
      return null;
    }

    Map<String, dynamic> whiteListData = json.decode(uint8ListToString(data));

    if (whiteList != null &&
        whiteList is List<String> &&
        whiteList.length > 0) {
      whiteListData = Map.fromEntries(whiteListData.entries
          .where((entry) => whiteList.contains(entry.key)));
    }

    T deserializedData = serializers.deserializeWith(decoder, whiteListData);

    return deserializedData;
  }

  @override
  Uint8List encode(T state) {
    if (state == null) {
      return null;
    }

    Object serializedState = serializers.serializeWith(decoder, state);

    return stringToUint8List(json.encode(serializedState));
  }
}
