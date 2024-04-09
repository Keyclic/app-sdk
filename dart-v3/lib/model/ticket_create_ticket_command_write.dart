//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class TicketCreateTicketCommandWrite {
  /// Returns a new [TicketCreateTicketCommandWrite] instance.
  TicketCreateTicketCommandWrite({
    this.description,
    this.member,
    this.name,
    required this.parent,
    this.scheduledAt,
  });

  /// Returns a new [TicketCreateTicketCommandWrite] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static TicketCreateTicketCommandWrite? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    DateTime? scheduledAt = json[r'scheduledAt'] == null
        ? null
        : DateTime.parse(json[r'scheduledAt']);
    if (scheduledAt != null && scheduledAt.isUtc == false) {
      scheduledAt = DateTime.parse('${json[r'scheduledAt']}Z');
    }

    return TicketCreateTicketCommandWrite(
      description: json[r'description'],
      member: json[r'member'],
      name: json[r'name'],
      parent: json[r'parent'],
      scheduledAt: scheduledAt,
    );
  }

  String? description;

  String? member;

  String? name;

  String parent;

  DateTime? scheduledAt;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is TicketCreateTicketCommandWrite &&
        other.description == description &&
        other.member == member &&
        other.name == name &&
        other.parent == parent &&
        other.scheduledAt == scheduledAt;
  }

  @override
  int get hashCode =>
      (description == null ? 0 : description.hashCode) +
      (member == null ? 0 : member.hashCode) +
      (name == null ? 0 : name.hashCode) +
      parent.hashCode +
      (scheduledAt == null ? 0 : scheduledAt.hashCode);

  static List<TicketCreateTicketCommandWrite> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <TicketCreateTicketCommandWrite>[];
    }

    return json.fold(<TicketCreateTicketCommandWrite>[],
        (List<TicketCreateTicketCommandWrite> previousValue, element) {
      final TicketCreateTicketCommandWrite? object =
          TicketCreateTicketCommandWrite.fromJson(element);
      if (object is TicketCreateTicketCommandWrite) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, TicketCreateTicketCommandWrite> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, TicketCreateTicketCommandWrite>{};
    }

    return json.entries.fold(<String, TicketCreateTicketCommandWrite>{},
        (Map<String, TicketCreateTicketCommandWrite> previousValue, element) {
      final TicketCreateTicketCommandWrite? object =
          TicketCreateTicketCommandWrite.fromJson(element.value);
      if (object is TicketCreateTicketCommandWrite) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of TicketCreateTicketCommandWrite-objects as value to a dart map
  static Map<String, List<TicketCreateTicketCommandWrite>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<TicketCreateTicketCommandWrite>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<TicketCreateTicketCommandWrite>>(
          key, TicketCreateTicketCommandWrite.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'TicketCreateTicketCommandWrite[description=$description, member=$member, name=$name, parent=$parent, scheduledAt=$scheduledAt]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'description'))
        r'description': description,
      if (keys == null || keys.contains(r'member')) r'member': member,
      if (keys == null || keys.contains(r'name')) r'name': name,
      r'parent': parent,
      if (keys == null || keys.contains(r'scheduledAt'))
        r'scheduledAt': scheduledAt?.toUtc().toIso8601String(),
    };
  }
}
