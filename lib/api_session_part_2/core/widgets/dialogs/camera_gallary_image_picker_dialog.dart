import 'package:flutter/material.dart';
import '../../locale/app_local.dart';
import '../../utils/app_colors.dart';

import '../../utils/app_strings.dart';

class ImagePickerDialog extends StatelessWidget {
  final void Function()? cameraOnTap;
  final void Function()? galleryOnTap;

  const ImagePickerDialog({Key? key, this.cameraOnTap, this.galleryOnTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      clipBehavior: Clip.antiAlias,
      backgroundColor: AppColors.black,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16.0))),
      child: Wrap(children: <Widget>[
        ListTile(
            leading: const Icon(
              Icons.camera_alt,
              color: AppColors.primary,
            ),
            title:  Text(AppStrings.camera.tr(context),
                style: const TextStyle(
                  color: AppColors.primary,
                )),
            onTap: cameraOnTap),
        ListTile(
            leading: const Icon(
              Icons.photo_outlined,
              color: AppColors.primary,
            ),
            title:  Text(AppStrings.gallery.tr(context),
                style: const TextStyle(
                  color: AppColors.primary,
                )),
            onTap: galleryOnTap),
      ]),
    );
  }
}
///How to use
/*
onPressed: () {
  showDialog(
      context: context,
      builder: (context) => ImagePickerDialog(
            cameraOnTap: () {
              Navigator.pop(context);
              pickImage(ImageSource.camera)
                  .then((image) {
                if (image != null) {
                  cubit.updateProfile(
                    name: cubit.auth.data.name,
                    email: cubit.auth.data.email,
                    profilePicture: image,
                  );
                }
              });
            },
            galleryOnTap: () {
              Navigator.pop(context);
              pickImage(ImageSource.gallery)
                  .then((image) {
                if (image != null) {
                  cubit.updateProfile(
                    name: cubit.auth.data.name,
                    email: cubit.auth.data.email,
                    profilePicture: image,
                  );
                }
              });
            },
          ));
                              },
                              */