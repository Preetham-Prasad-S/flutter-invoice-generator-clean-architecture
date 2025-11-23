import 'package:app_prototype/core/themes/app_color.dart';
import 'package:app_prototype/features/template/dependency_injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ionicons/ionicons.dart';

class CustomFilePickerWidget extends ConsumerWidget {
  final IconData icon;

  const CustomFilePickerWidget({
    super.key,
    required this.icon,
    required this.screenWidth,
  });

  final double screenWidth;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final templateFilePath = ref.watch(templateFileNotifierProvider);
    final templateFilePathController = ref.read(
      templateFileNotifierProvider.notifier,
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Row(
            children: [
              Icon(icon, size: screenWidth * 0.05),
              SizedBox(width: 10),
              Text(
                "Template Format File",
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: "Quicksand",
                  fontSize: screenWidth * 0.035,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 10),

        DecoratedBox(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black12, width: 1.5),
            borderRadius: BorderRadius.circular(10),
          ),
          child: SizedBox(
            width: double.infinity,
            height: screenWidth * 0.135,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: templateFilePath.whenOrNull(
                    data: (data) {
                      if (data == null) {
                        return Row(
                          children: [
                            Text(
                              "Pick A File in 'xlsx' format",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: "Quicksand",
                                color: Colors.black26,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(width: 5),
                            Icon(Ionicons.arrow_forward, color: Colors.black26),
                          ],
                        );
                      }
                      return SizedBox(
                        width: 250,
                        child: Text(
                          data.name,
                          style: TextStyle(
                            overflow: TextOverflow.ellipsis,
                            fontSize: 16,
                            fontFamily: "Quicksand",
                            color: const Color.fromARGB(255, 40, 78, 244),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      );
                    },
                  ),
                ),

                SizedBox(
                  height: double.infinity,
                  width: 65,
                  child: IconButton(
                    onPressed:
                        () => templateFilePathController.pickTemplateFile(),
                    style: IconButton.styleFrom(
                      side: BorderSide(color: Colors.black12, width: 1.5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                      backgroundColor: AppColor.primaryAppColor,
                      foregroundColor: AppColor.whiteColor,
                    ),

                    icon: Icon(Ionicons.file_tray_outline, size: 25),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
