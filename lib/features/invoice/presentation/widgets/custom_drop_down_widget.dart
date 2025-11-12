import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class CustomDropDownWidget extends StatefulWidget {
  const CustomDropDownWidget({super.key});

  @override
  State<CustomDropDownWidget> createState() => _CustomDropDownWidgetState();
}

class _CustomDropDownWidgetState extends State<CustomDropDownWidget> {
  final dropDownButtonStyle = ButtonStyle(
    foregroundColor: WidgetStatePropertyAll(
      const Color.fromARGB(255, 25, 114, 147),
    ),
    textStyle: WidgetStatePropertyAll(
      TextStyle(fontWeight: FontWeight.bold, fontFamily: "Quicksand"),
    ),
    backgroundColor: WidgetStatePropertyAll(
      const Color.fromARGB(255, 255, 255, 255),
    ),
    maximumSize: WidgetStatePropertyAll(Size(380, 200)),
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Company Invoice",
          style: TextStyle(
            color: const Color.fromARGB(255, 25, 114, 147),
            fontFamily: "Quicksand",
            fontSize: 15,
            fontWeight: FontWeight.w700,
          ),
        ),
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          elevation: 10,
          child: DropdownMenu(
            hintText: "Select The Company To Be Billed",
            enabled: true,
            enableSearch: true,
            menuStyle: MenuStyle(
              maximumSize: WidgetStatePropertyAll(Size(double.infinity, 300)),
              backgroundColor: WidgetStatePropertyAll(Colors.transparent),
              shadowColor: WidgetStatePropertyAll(Colors.transparent),
            ),
            trailingIcon: Icon(
              Ionicons.caret_back,
              color: const Color.fromARGB(255, 25, 114, 147),
            ),
            textStyle: TextStyle(
              fontFamily: "Quicksand",
              fontWeight: FontWeight.w600,
              color: const Color.fromARGB(255, 25, 114, 147),
            ),

            inputDecorationTheme: InputDecorationTheme(
              hintStyle: TextStyle(color: Colors.black26),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.white),
              ),
              filled: true,
              fillColor: Colors.white,
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
        ),
      ],
    );
  }
}
