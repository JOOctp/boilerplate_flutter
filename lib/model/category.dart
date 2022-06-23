class Category {
  String? id;
  String? name;
  int? branchId;

  Category({this.id, this.name, this.branchId});

  Category.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    branchId = json['branchId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['branchId'] = this.branchId;
    return data;
  }
}
