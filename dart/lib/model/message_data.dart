//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class MessageData {
  /// Returns a new [MessageData] instance.
  MessageData({
    this.text = const [],
    @required this.task,
  });

  /// Returns a new [MessageData] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory MessageData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return MessageData(
      text: json[r'text'] is Iterable
          ? List<Map<String, dynamic>>.from(json[r'text'])
          : [],
      task: json[r'task'],
    );
  }

  List<Map<String, dynamic>> text;

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
  int get hashCode =>
      (text == null ? 0 : text.hashCode) + (task == null ? 0 : task.hashCode);

  static List<MessageData> listFromJson(List<dynamic> json) {
    return <MessageData>[
      if (json is List)
        for (dynamic value in json) MessageData.fromJson(value),
    ];
  }

  static Map<String, MessageData> mapFromJson(Map<String, dynamic> json) {
    return <String, MessageData>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: MessageData.fromJson(entry.value),
    };
  }

  // maps a json object with a list of MessageData-objects as value to a dart map
  static Map<String, List<MessageData>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<MessageData>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: MessageData.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'MessageData[text=$text, task=$task]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (text != null) r'text': text,
      r'task': task,
    };
  }
}
