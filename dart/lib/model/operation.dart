//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class Operation {
  /// Returns a new [Operation] instance.
  Operation({
    this.embedded,
    this.links,
    this.createdAt,
    this.description,
    this.dueBy,
    this.id,
    this.identificationNumber,
    this.name,
    this.priority,
    this.scheduledAt,
    this.signature,
    this.tags = const [],
    this.type,
    this.updatedAt,
  });

  /// Returns a new [Operation] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Operation? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    DateTime? createdAt =
        json[r'createdAt'] == null ? null : DateTime.parse(json[r'createdAt']);
    if (createdAt != null && createdAt.isUtc == false) {
      createdAt = DateTime.parse('${json[r'createdAt']}Z');
    }

    DateTime? dueBy =
        json[r'dueBy'] == null ? null : DateTime.parse(json[r'dueBy']);
    if (dueBy != null && dueBy.isUtc == false) {
      dueBy = DateTime.parse('${json[r'dueBy']}Z');
    }

    DateTime? scheduledAt = json[r'scheduledAt'] == null
        ? null
        : DateTime.parse(json[r'scheduledAt']);
    if (scheduledAt != null && scheduledAt.isUtc == false) {
      scheduledAt = DateTime.parse('${json[r'scheduledAt']}Z');
    }

    DateTime? updatedAt =
        json[r'updatedAt'] == null ? null : DateTime.parse(json[r'updatedAt']);
    if (updatedAt != null && updatedAt.isUtc == false) {
      updatedAt = DateTime.parse('${json[r'updatedAt']}Z');
    }

    return Operation(
      embedded: json[r'_embedded'] is! Map
          ? null
          : OperationEmbedded.fromJson(json[r'_embedded']),
      links: json[r'_links'] is! Map
          ? null
          : OperationLinks.fromJson(json[r'_links']),
      createdAt: createdAt,
      description: json[r'description'],
      dueBy: dueBy,
      id: json[r'id'],
      identificationNumber: json[r'identificationNumber'],
      name: json[r'name'],
      priority: json[r'priority'] is! Map
          ? null
          : OperationPriority.fromJson(json[r'priority']),
      scheduledAt: scheduledAt,
      signature: json[r'signature'] is! Map
          ? null
          : OperationSignature.fromJson(json[r'signature']),
      tags: json[r'tags'] == null ? null : List<String>.from(json[r'tags']),
      type: json[r'type'],
      updatedAt: updatedAt,
    );
  }

  OperationEmbedded? embedded;

  OperationLinks? links;

  final DateTime? createdAt;

  String? description;

  DateTime? dueBy;

  final String? id;

  String? identificationNumber;

  String? name;

  OperationPriority? priority;

  DateTime? scheduledAt;

  OperationSignature? signature;

  List<String>? tags;

  String? type;

  final DateTime? updatedAt;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Operation &&
        other.embedded == embedded &&
        other.links == links &&
        other.createdAt == createdAt &&
        other.description == description &&
        other.dueBy == dueBy &&
        other.id == id &&
        other.identificationNumber == identificationNumber &&
        other.name == name &&
        other.priority == priority &&
        other.scheduledAt == scheduledAt &&
        other.signature == signature &&
        DeepCollectionEquality.unordered().equals(tags, other.tags) &&
        other.type == type &&
        other.updatedAt == updatedAt;
  }

  @override
  int get hashCode =>
      (embedded == null ? 0 : embedded.hashCode) +
      (links == null ? 0 : links.hashCode) +
      (createdAt == null ? 0 : createdAt.hashCode) +
      (description == null ? 0 : description.hashCode) +
      (dueBy == null ? 0 : dueBy.hashCode) +
      (id == null ? 0 : id.hashCode) +
      (identificationNumber == null ? 0 : identificationNumber.hashCode) +
      (name == null ? 0 : name.hashCode) +
      (priority == null ? 0 : priority.hashCode) +
      (scheduledAt == null ? 0 : scheduledAt.hashCode) +
      (signature == null ? 0 : signature.hashCode) +
      (tags == null ? 0 : tags.hashCode) +
      (type == null ? 0 : type.hashCode) +
      (updatedAt == null ? 0 : updatedAt.hashCode);

  static List<Operation> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <Operation>[];
    }

    return json.fold(<Operation>[], (List<Operation> previousValue, element) {
      final Operation? object = Operation.fromJson(element);
      if (object is Operation) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, Operation> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, Operation>{};
    }

    return json.entries.fold(<String, Operation>{},
        (Map<String, Operation> previousValue, element) {
      final Operation? object = Operation.fromJson(element.value);
      if (object is Operation) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of Operation-objects as value to a dart map
  static Map<String, List<Operation>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<Operation>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<Operation>>(
          key, Operation.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'Operation[embedded=$embedded, links=$links, createdAt=$createdAt, description=$description, dueBy=$dueBy, id=$id, identificationNumber=$identificationNumber, name=$name, priority=$priority, scheduledAt=$scheduledAt, signature=$signature, tags=$tags, type=$type, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && embedded != null) ||
          (keys?.contains(r'embedded') ?? false))
        r'_embedded': embedded?.toJson(),
      if ((keys == null && links != null) ||
          (keys?.contains(r'links') ?? false))
        r'_links': links?.toJson(),
      if ((keys == null && createdAt != null) ||
          (keys?.contains(r'createdAt') ?? false))
        r'createdAt': createdAt?.toUtc().toIso8601String(),
      if ((keys == null && description != null) ||
          (keys?.contains(r'description') ?? false))
        r'description': description,
      if ((keys == null && dueBy != null) ||
          (keys?.contains(r'dueBy') ?? false))
        r'dueBy': dueBy?.toUtc().toIso8601String(),
      if ((keys == null && id != null) || (keys?.contains(r'id') ?? false))
        r'id': id,
      if ((keys == null && identificationNumber != null) ||
          (keys?.contains(r'identificationNumber') ?? false))
        r'identificationNumber': identificationNumber,
      if ((keys == null && name != null) || (keys?.contains(r'name') ?? false))
        r'name': name,
      if ((keys == null && priority != null) ||
          (keys?.contains(r'priority') ?? false))
        r'priority': priority?.toJson(),
      if ((keys == null && scheduledAt != null) ||
          (keys?.contains(r'scheduledAt') ?? false))
        r'scheduledAt': scheduledAt?.toUtc().toIso8601String(),
      if ((keys == null && signature != null) ||
          (keys?.contains(r'signature') ?? false))
        r'signature': signature?.toJson(),
      if ((keys == null && tags != null) || (keys?.contains(r'tags') ?? false))
        r'tags': tags,
      if ((keys == null && type != null) || (keys?.contains(r'type') ?? false))
        r'type': type,
      if ((keys == null && updatedAt != null) ||
          (keys?.contains(r'updatedAt') ?? false))
        r'updatedAt': updatedAt?.toUtc().toIso8601String(),
    };
  }
}
