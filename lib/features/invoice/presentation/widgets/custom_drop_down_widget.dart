import 'package:app_prototype/core/themes/app_color.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class CustomDropDownWidget extends StatefulWidget {
  const CustomDropDownWidget({super.key});

  @override
  State<CustomDropDownWidget> createState() => _CustomDropDownWidgetState();
}

class _CustomDropDownWidgetState extends State<CustomDropDownWidget> {
  final dropDownButtonStyle = ButtonStyle(
    foregroundColor: WidgetStatePropertyAll(AppColor.primaryAppColor),
    textStyle: WidgetStatePropertyAll(
      TextStyle(fontWeight: FontWeight.bold, fontFamily: "Quicksand"),
    ),
    backgroundColor: WidgetStatePropertyAll(Colors.white),
    maximumSize: WidgetStatePropertyAll(Size(380, 200)),
  );

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Icon(Icons.description, color: Colors.black54),
            ),
            Text(
              "Company Invoice",
              style: TextStyle(
                color: Colors.black,
                fontFamily: "Quicksand",
                fontSize: screenWidth * 0.036,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        DropdownMenu(
          requestFocusOnTap: true,
          enableFilter: true,
          hintText: "Select The Company To Be Billed",
          enabled: true,
          enableSearch: true,
          menuStyle: MenuStyle(
            maximumSize: WidgetStatePropertyAll(Size(double.infinity, 300)),
            backgroundColor: WidgetStatePropertyAll(Colors.transparent),
            shadowColor: WidgetStatePropertyAll(Colors.transparent),
          ),
          selectedTrailingIcon: Icon(
            Ionicons.caret_down,
            color: AppColor.primaryAppColor,
          ),
          trailingIcon: Icon(
            Ionicons.caret_back,
            color: AppColor.primaryAppColor,
          ),
          textStyle: TextStyle(
            fontFamily: "Quicksand",
            fontWeight: FontWeight.w600,
            color: AppColor.primaryAppColor,
          ),

          inputDecorationTheme: InputDecorationTheme(
            hintStyle: TextStyle(color: Colors.black26),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: AppColor.primaryAppColor),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.black12, width: 2),
            ),
          ),
          width: double.infinity,
          dropdownMenuEntries: [
            DropdownMenuEntry(
              style: dropDownButtonStyle,
              value: 0,
              label: "HOTEL NEW SARAVANAS PRIVATE LIMITED",
            ),
            DropdownMenuEntry(
              value: 0,
              label: "SATHYA ELECTRONIC PRIVATE LIMITED",
              style: dropDownButtonStyle,
            ),
            DropdownMenuEntry(
              value: 0,
              label: "TATA CONSULTANCY SOLUTIONS",
              style: dropDownButtonStyle,
            ),
            DropdownMenuEntry(
              value: 0,
              label: "JUST PLAY PRODUCTIONS",
              style: dropDownButtonStyle,
            ),
            DropdownMenuEntry(
              value: 0,
              label: "CUBIT CONSTRUCTIONS PRIVATE LIMITED",
              style: dropDownButtonStyle,
            ),
            DropdownMenuEntry(
              value: 0,
              label: "CHENNAI HEATTREATERS PRIVATE LIMITED",
              style: dropDownButtonStyle,
            ),
            DropdownMenuEntry(
              value: 0,
              label: "SRI VENKATESWARA GROUP OF SCHOOLS",
              style: dropDownButtonStyle,
            ),
            DropdownMenuEntry(
              value: 0,
              label: "ALKCRAFT SOLUTIONS PRIVATE LIMITED",
              style: dropDownButtonStyle,
            ),
            DropdownMenuEntry(
              value: 0,
              label: "BEST CAST PRODUCTIONS ",
              style: dropDownButtonStyle,
            ),
          ],
        ),
      ],
    );
  }
}
