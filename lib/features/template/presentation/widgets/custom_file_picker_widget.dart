import 'package:app_prototype/features/template/dependency_injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ionicons/ionicons.dart';

class CustomFilePickerWidget extends ConsumerWidget {
  const CustomFilePickerWidget({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final filePath = ref.watch(fileNotifierProvider);
    final filePathController = ref.read(fileNotifierProvider.notifier);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(
            "Template Format File",
            style: TextStyle(
              color: Colors.black,
              fontFamily: "Quicksand",
              fontSize: 15,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),

        SizedBox(
          width: double.infinity,
          height: 60,
          child: Card(
            color: Colors.white,
            elevation: 10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child:
                      filePath.value == null
                          ? Row(
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
                              Icon(
                                Ionicons.arrow_forward,
                                color: Colors.black26,
                              ),
                            ],
                          )
                          : SizedBox(
                            width: 250,
                            child: Text(
                              filePath.value!.name,
                              style: TextStyle(
                                overflow: TextOverflow.ellipsis,
                                fontSize: 16,
                                fontFamily: "Quicksand",
                                color: const Color.fromARGB(255, 40, 78, 244),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                ),

                SizedBox(
                  height: double.infinity,
                  width: 65,
                  child: IconButton(
                    onPressed: () => filePathController.pickTemplateFile(),
                    style: IconButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                      backgroundColor: const Color.fromARGB(255, 40, 78, 244),
                      foregroundColor: const Color.fromARGB(255, 255, 255, 255),
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
