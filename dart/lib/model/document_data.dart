part of keyclic_sdk_api.api;

class DocumentData {
  DocumentData({
    this.container,
    this.file,
    this.permission,
    this.template,
    this.type,
  });

  factory DocumentData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return DocumentData(
      container: json['container'],
      file: DocumentDataFile.fromJson(json['file']),
      permission: DocumentDataPermission.fromJson(json['permission']),
      template: json['template'],
      type: json['type'],
    );
  }

  String container;

  DocumentDataFile file;

  DocumentDataPermission permission;

  String template;

  String type;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is DocumentData &&
        runtimeType == other.runtimeType &&
        container == other.container &&
        file == other.file &&
        permission == other.permission &&
        template == other.template &&
        type == other.type;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= container?.hashCode ?? 0;
    hashCode ^= file?.hashCode ?? 0;
    hashCode ^= permission?.hashCode ?? 0;
    hashCode ^= template?.hashCode ?? 0;
    hashCode ^= type?.hashCode ?? 0;

    return hashCode;
  }

  static List<DocumentData> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => DocumentData.fromJson(value))
            ?.toList() ??
        <DocumentData>[];
  }

  static Map<String, DocumentData> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, DocumentData>((String key, dynamic value) {
          return MapEntry(key, DocumentData.fromJson(value));
        }) ??
        <String, DocumentData>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (container != null) 'container': container,
      if (file != null) 'file': file.toJson(),
      if (permission != null) 'permission': permission.toJson(),
      if (template != null) 'template': template,
      if (type != null) 'type': type,
    };
  }

  @override
  String toString() {
    return 'DocumentData[container=$container, file=$file, permission=$permission, template=$template, type=$type, ]';
  }
}
