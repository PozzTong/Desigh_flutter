import 'package:first_project_vscode/Log%20Form/dashboard/global/global_field.dart';

class ProductModel {
  late int id;
  late String name;
  ProductModel({required this.id, required this.name});
  Map<String, dynamic> toMap() {
    return {fid: id, fName: name};
  }

  ProductModel.fromMap(Map<String, dynamic> res)
      : id = res[fid],
        name = res[fName];
}
