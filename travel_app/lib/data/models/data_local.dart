class DataLocal {
  List<Data>? data;

  DataLocal({this.data});

  DataLocal.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String? sId;
  Null? parentsID;
  String? name;
  String? slug;
  bool? status;
  List<Childs>? childs;

  Data(
      {this.sId,
      this.parentsID,
      this.name,
      this.slug,
      this.status,
      this.childs});

  Data.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    parentsID = json['parentsID'];
    name = json['name'];
    slug = json['slug'];
    status = json['status'];
    if (json['childs'] != null) {
      childs = <Childs>[];
      json['childs'].forEach((v) {
        childs!.add(new Childs.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['parentsID'] = this.parentsID;
    data['name'] = this.name;
    data['slug'] = this.slug;
    data['status'] = this.status;
    if (this.childs != null) {
      data['childs'] = this.childs!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Childs {
  String? sId;
  String? parentsID;
  String? name;
  String? slug;
  bool? status;

  Childs({this.sId, this.parentsID, this.name, this.slug, this.status});

  Childs.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    parentsID = json['parentsID'];
    name = json['name'];
    slug = json['slug'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['parentsID'] = this.parentsID;
    data['name'] = this.name;
    data['slug'] = this.slug;
    data['status'] = this.status;
    return data;
  }
}