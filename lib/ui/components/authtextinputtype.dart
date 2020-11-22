import 'package:handy_notes/core/constants/countries.dart';
import 'package:handy_notes/ui/utils/colors/color_utils.dart';
import 'package:handy_notes/ui/utils/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:handy_notes/ui/utils/ui_extensions.dart';

class AppTextInputTypeA extends StatelessWidget {
  final String label;
  final String hint;
  final Function(String) validator;
  final TextEditingController controller;
  final Function(String) onFieldSubmitted;
  final FocusNode focusNode;
  final AutovalidateMode autovalidateMode;
  final TextInputType keyboardType;
  final int maxlines;
  const AppTextInputTypeA({
    Key key,
    this.label,
    this.hint,
    this.validator,
    this.controller,
    this.onFieldSubmitted,
    this.focusNode,
    this.autovalidateMode,
    this.keyboardType,
    this.maxlines,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: AppTextStyles.Body1.bold),
        VtSpace(10),
        TextFormField(
          controller: controller,
          validator: validator,
          focusNode: focusNode,
          onFieldSubmitted: onFieldSubmitted,
          style: AppTextStyles.Body1,
          maxLines: maxlines ?? 1,
          keyboardType: keyboardType,
          autovalidateMode:
              autovalidateMode ?? AutovalidateMode.onUserInteraction,
          decoration: InputDecoration(
            isDense: true,
            hintText: hint,
            hintStyle: AppTextStyles.Body1,
            border: OutlineInputBorder(),
          ),
        ),
      ],
    );
  }
}

class PasswordTextInput extends StatefulWidget {
  final String label;
  final String hint;
  final Function(String) validator;
  final TextEditingController controller;
  final Function(String) onFieldSubmitted;
  final FocusNode focusNode;
  final AutovalidateMode autovalidateMode;
  const PasswordTextInput({
    Key key,
    this.label,
    this.hint,
    this.validator,
    this.controller,
    this.onFieldSubmitted,
    this.focusNode,
    this.autovalidateMode,
  }) : super(key: key);

  @override
  _PasswordTextInputState createState() => _PasswordTextInputState();
}

class _PasswordTextInputState extends State<PasswordTextInput> {
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.label, style: AppTextStyles.Body1.bold),
        VtSpace(10),
        TextFormField(
          obscureText: !isVisible,
          controller: widget.controller,
          validator: widget.validator,
          focusNode: widget.focusNode,
          onFieldSubmitted: widget.onFieldSubmitted,
          style: AppTextStyles.Body1,
          autovalidateMode:
              widget.autovalidateMode ?? AutovalidateMode.onUserInteraction,
          decoration: InputDecoration(
            suffixIcon: isVisible
                ? Icon(Icons.visibility_off).clickable(() {
                    setState(() {
                      isVisible = false;
                    });
                  })
                : Icon(Icons.visibility).clickable(() {
                    setState(() {
                      isVisible = true;
                    });
                  }),
            isDense: true,
            hintText: widget.hint,
            hintStyle: AppTextStyles.Body2,
            border: OutlineInputBorder(),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: ColorUtils.primaryVar(context))),
          ),
        ),
      ],
    );
  }
}

class AppDropDownTypeA extends StatelessWidget {
  final String label;
  final String hint;
  final Function(String) validator;
  final TextEditingController controller;
  final Function(String) onFieldSubmitted;
  final FocusNode focusNode;
  final AutovalidateMode autovalidateMode;
  final TextInputType keyboardType;
  final Function(String) onChanged;
  const AppDropDownTypeA({
    Key key,
    this.label,
    this.hint,
    this.validator,
    this.controller,
    this.onFieldSubmitted,
    this.focusNode,
    this.autovalidateMode,
    this.keyboardType,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: AppTextStyles.Body1.bold),
        VtSpace(10),
        DropdownButtonFormField<String>(
          value: Countries.all[0],
          isDense: true,
          style: AppTextStyles.Body1.copyWith(color: Colors.black),
          items: Countries.all
              .map((e) => DropdownMenuItem<String>(
                    value: e,
                    child: Text(e),
                  ))
              .toList(),
          onChanged: onChanged,
          autovalidateMode:
              autovalidateMode ?? AutovalidateMode.onUserInteraction,
          validator: validator,
          decoration: InputDecoration(
            isDense: true,
            hintText: hint,
            hintStyle: AppTextStyles.Body1,
            border: OutlineInputBorder(),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: ColorUtils.primaryVar(context))),
          ),
        ),
      ],
    );
  }
}
