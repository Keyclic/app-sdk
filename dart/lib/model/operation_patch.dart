part of keyclic_sdk_api.api;

class OperationPatch {
  OperationPatch({
    this.description,
    this.identificationNumber,
    this.name,
    this.scheduledAt,
  });

  OperationPatch.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    description = json['description'];
    identificationNumber = json['identificationNumber'];
    name = json['name'];
    scheduledAt = json['scheduledAt'] == null
        ? null
        : DateTime.parse(json['scheduledAt']);
    if (scheduledAt is DateTime && scheduledAt.isUtc == false) {
      scheduledAt = DateTime.parse('${scheduledAt.toIso8601String()}Z');
    }
  }

  String description;

  String identificationNumber;

  String name;

  DateTime scheduledAt;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OperationPatch &&
        runtimeType == other.runtimeType &&
        description == other.description &&
        identificationNumber == other.identificationNumber &&
        name == other.name &&
        scheduledAt == other.scheduledAt;
  }

  /// By default hashCode return reference
  @override
  int get hashCode =>
      0 ^
      description.hashCode ^
      identificationNumber.hashCode ^
      name.hashCode ^
      scheduledAt.hashCode;

  static List<OperationPatch> listFromJson(List<dynamic> json) {
    return json == null
        ? <OperationPatch>[]
        : json.map((value) => OperationPatch.fromJson(value)).toList();
  }

  static Map<String, OperationPatch> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, OperationPatch>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = OperationPatch.fromJson(value));
    }
    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'description': description,
      'identificationNumber': identificationNumber,
      'name': name,
      'scheduledAt':
          scheduledAt == null ? '' : scheduledAt.toUtc().toIso8601String(),
    };
  }

  @override
  String toString() {
    return 'OperationPatch[description=$description, identificationNumber=$identificationNumber, name=$name, scheduledAt=$scheduledAt, ]';
  }
}
