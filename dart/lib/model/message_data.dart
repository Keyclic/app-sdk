part of keyclic_sdk_api.api;

class MessageData {
  MessageData({
    this.text,
    this.task,
  });

  factory MessageData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return MessageData(
      text: json['text'] is Iterable
          ? List<Map<String, dynamic>>.from(json['text'])
          : [],
      task: json['task'],
    );
  }

  List<Map<String, dynamic>> text;

  String task;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is MessageData &&
        runtimeType == other.runtimeType &&
        DeepCollectionEquality.unordered().equals(text, other.text) &&
        task == other.task;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    if (text is List && text.isNotEmpty) {
      hashCode ^= text
          .map((Map<String, dynamic> element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }

    hashCode ^= task?.hashCode ?? 0;

    return hashCode;
  }

  static List<MessageData> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => MessageData.fromJson(value))
            ?.toList() ??
        <MessageData>[];
  }

  static Map<String, MessageData> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, MessageData>((String key, dynamic value) {
          return MapEntry(key, MessageData.fromJson(value));
        }) ??
        <String, MessageData>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (text != null) 'text': text,
      if (task != null) 'task': task,
    };
  }

  @override
  String toString() {
    return 'MessageData[text=$text, task=$task, ]';
  }
}
