import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  final String text;
  final Color buttonColor;
  Color borderColor;
  Color newColor;

  final VoidCallback onPressed;
  String image;

  CustomButton({
    Key? key,
    required this.text,
    required this.image,
    required this.borderColor,
    required this.newColor,
    required this.buttonColor,
    required this.onPressed,
  }) : super(key: key);

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  late Color buttonColor;
  @override
  void initState() {
    super.initState();
    buttonColor = widget
        .buttonColor; // Initialize the button color from the widget parameter
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        setState(() {
          buttonColor = widget
              .newColor; // Change button color to the desired color immediately on tap
        });
        Future.delayed(const Duration(milliseconds: 200), () {
          setState(() {
            buttonColor = widget
                .buttonColor; // Revert back to the original button color after a delay
          });
        });
        widget.onPressed();
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(buttonColor),
        // Use the buttonColor variable to set the button color
        padding: MaterialStateProperty.all<EdgeInsets>(const EdgeInsets.all(7)),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
            side: BorderSide(color: widget.borderColor),
          ),
        ),
      ),
      child: Row(
        children: [
          Image.asset(
            widget.image,
            width: 20,
          ),
          Text(
            widget.text,
            style: const TextStyle(
                color: Colors.black, fontSize: 16, fontWeight: FontWeight.w900),
          ),
        ],
      ),
    );
  }
}
