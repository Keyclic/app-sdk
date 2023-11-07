//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class TicketTypeJsonhalRead {
  /// Returns a new [TicketTypeJsonhalRead] instance.
  TicketTypeJsonhalRead({
    this.links,
    this.description,
    this.name,
    this.id,
    this.createdAt,
    this.updatedAt,
  });

  /// Returns a new [TicketTypeJsonhalRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static TicketTypeJsonhalRead? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    DateTime? createdAt =
        json[r'createdAt'] == null ? null : DateTime.parse(json[r'createdAt']);
    if (createdAt != null && createdAt.isUtc == false) {
      createdAt = DateTime.parse('${json[r'createdAt']}Z');
    }

    DateTime? updatedAt =
        json[r'updatedAt'] == null ? null : DateTime.parse(json[r'updatedAt']);
    if (updatedAt != null && updatedAt.isUtc == false) {
      updatedAt = DateTime.parse('${json[r'updatedAt']}Z');
    }

    return TicketTypeJsonhalRead(
      links: json[r'_links'] is! Map
          ? null
          : AssetTypeJsonhalReadLinks.fromJson(json[r'_links']),
      description: json[r'description'],
      name: json[r'name'],
      id: json[r'id'],
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  AssetTypeJsonhalReadLinks? links;

  String? description;

  String? name;

  /// The resource identifier.
  final String? id;

  /// The date and time when the resource was created, in UTC format.
  final DateTime? createdAt;

  /// The date and time when the resource was updated, in UTC format.
  final DateTime? updatedAt;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is TicketTypeJsonhalRead &&
        other.links == links &&
        other.description == description &&
        other.name == name &&
        other.id == id &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt;
  }

  @override
  int get hashCode =>
      (links == null ? 0 : links.hashCode) +
      (description == null ? 0 : description.hashCode) +
      (name == null ? 0 : name.hashCode) +
      (id == null ? 0 : id.hashCode) +
      (createdAt == null ? 0 : createdAt.hashCode) +
      (updatedAt == null ? 0 : updatedAt.hashCode);

  static List<TicketTypeJsonhalRead> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <TicketTypeJsonhalRead>[];
    }

    return json.fold(<TicketTypeJsonhalRead>[],
        (List<TicketTypeJsonhalRead> previousValue, element) {
      final TicketTypeJsonhalRead? object =
          TicketTypeJsonhalRead.fromJson(element);
      if (object is TicketTypeJsonhalRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, TicketTypeJsonhalRead> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, TicketTypeJsonhalRead>{};
    }

    return json.entries.fold(<String, TicketTypeJsonhalRead>{},
        (Map<String, TicketTypeJsonhalRead> previousValue, element) {
      final TicketTypeJsonhalRead? object =
          TicketTypeJsonhalRead.fromJson(element.value);
      if (object is TicketTypeJsonhalRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of TicketTypeJsonhalRead-objects as value to a dart map
  static Map<String, List<TicketTypeJsonhalRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<TicketTypeJsonhalRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<TicketTypeJsonhalRead>>(
          key, TicketTypeJsonhalRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'TicketTypeJsonhalRead[links=$links, description=$description, name=$name, id=$id, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && links != null) ||
          (keys?.contains(r'links') ?? false))
        r'_links': links?.toJson(),
      if ((keys == null && description != null) ||
          (keys?.contains(r'description') ?? false))
        r'description': description,
      if ((keys == null && name != null) || (keys?.contains(r'name') ?? false))
        r'name': name,
      if ((keys == null && id != null) || (keys?.contains(r'id') ?? false))
        r'id': id,
      if ((keys == null && createdAt != null) ||
          (keys?.contains(r'createdAt') ?? false))
        r'createdAt': createdAt?.toUtc().toIso8601String(),
      if ((keys == null && updatedAt != null) ||
          (keys?.contains(r'updatedAt') ?? false))
        r'updatedAt': updatedAt?.toUtc().toIso8601String(),
    };
  }
}
