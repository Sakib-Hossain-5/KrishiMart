import '../../consts/consts.dart';

Widget customTextField({
  required String title,
  required String hint,
  required TextEditingController controller,
  bool obscureText = false,
  FormFieldValidator<String>? validator,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      // Title Text
      title.text.color(Colors.green).fontFamily(semibold).size(16).make(),
      5.heightBox, // Spacing
      // Text Form Field
      TextFormField(
        controller: controller,
        obscureText: obscureText,
        validator: validator, // Adding validator
        decoration: InputDecoration(
          hintStyle: const TextStyle(
            fontFamily: semibold,
            color: textfieldGrey,
          ),
          hintText: hint,
          isDense: true,
          fillColor: lightGrey,
          filled: true,
          border: InputBorder.none, // No border by default
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: greenColor), // Focused border color
          ),
        ),
      ),
      5.heightBox, // Spacing after TextFormField
    ],
  );
}
