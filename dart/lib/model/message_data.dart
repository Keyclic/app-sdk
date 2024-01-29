//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class MessageData {
  /// Returns a new [MessageData] instance.
  MessageData({
    this.text,
    required this.task,
  });

  /// Returns a new [MessageData] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static MessageData? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageData(
      text: json[r'text'] == null
          ? null
          : List<Map<String, Object?>>.from(json[r'text']),
      task: json[r'task'],
    );
  }

  List<Map<String, Object?>>? text;

  String task;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is MessageData &&
        DeepCollectionEquality.unordered().equals(text, other.text) &&
        other.task == task;
  }

  @override
  int get hashCode => (text == null ? 0 : text.hashCode) + task.hashCode;

  static List<MessageData> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <MessageData>[];
    }

    return json.fold(<MessageData>[],
        (List<MessageData> previousValue, element) {
      final MessageData? object = MessageData.fromJson(element);
      if (object is MessageData) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, MessageData> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, MessageData>{};
    }

    return json.entries.fold(<String, MessageData>{},
        (Map<String, MessageData> previousValue, element) {
      final MessageData? object = MessageData.fromJson(element.value);
      if (object is MessageData) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of MessageData-objects as value to a dart map
  static Map<String, List<MessageData>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<MessageData>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<MessageData>>(
          key, MessageData.listFromJson(value));
    });
  }

  @override
  String toString() => 'MessageData[text=$text, task=$task]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'text')) r'text': text,
      r'task': task,
    };
  }
}
