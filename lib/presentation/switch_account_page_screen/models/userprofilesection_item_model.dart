import '../../../core/app_export.dart';

/// This class is used in the [userprofilesection_item_widget] screen.
class UserprofilesectionItemModel {
  UserprofilesectionItemModel({
    this.virasadha,
    this.virasadha1,
    this.nameLabel,
    this.phoneLabel,
    this.genderImage,
    this.genderLabel,
    this.id,
  }) {
    virasadha = virasadha ?? ImageConstant.imgImage469x69;
    virasadha1 = virasadha1 ?? ImageConstant.imgImage51;
    nameLabel = nameLabel ?? "Virasadha";
    phoneLabel = phoneLabel ?? "+6289012345678";
    genderImage = genderImage ?? ImageConstant.imgIcon;
    genderLabel = genderLabel ?? "Female";
    id = id ?? "";
  }

  String? virasadha;

  String? virasadha1;

  String? nameLabel;

  String? phoneLabel;

  String? genderImage;

  String? genderLabel;

  String? id;
}
