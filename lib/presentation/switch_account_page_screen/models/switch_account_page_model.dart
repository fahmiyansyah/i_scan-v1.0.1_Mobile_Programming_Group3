import '../../../core/app_export.dart';
import 'userprofilesection_item_model.dart';

class SwitchAccountPageModel {
  List<UserprofilesectionItemModel> userprofilesectionItemList = [
    UserprofilesectionItemModel(
        virasadha: ImageConstant.imgImage469x69,
        virasadha1: ImageConstant.imgImage51,
        nameLabel: "Virasadha",
        phoneLabel: "+6289012345678",
        genderImage: ImageConstant.imgIcon,
        genderLabel: "Female"),
    UserprofilesectionItemModel(
        virasadha: ImageConstant.imgImage469x69,
        virasadha1: ImageConstant.imgImage52,
        nameLabel: "Abigail",
        phoneLabel: "+6289012345678",
        genderImage: ImageConstant.imgIconLightBlue900,
        genderLabel: "Male"),
    UserprofilesectionItemModel(
        nameLabel: "Fairy",
        phoneLabel: "+6289012345678",
        genderImage: ImageConstant.imgIcon,
        genderLabel: "Female")
  ];
}
