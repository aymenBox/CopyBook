class Photo {
  int? id;
  String? photoName;
  String? photoType;

  Photo(this.id, this.photoName, this.photoType);

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      'id': id,
      'photoName': photoName,
      'photoType': photoType,
    };
    return map;
  }

  Photo.fromMap(Map<String, dynamic> map) {
    id = map['id'];
    photoName = map['photoName'];
    photoType = map['photoType'];
  }
}
