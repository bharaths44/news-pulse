import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:phone_form_field/phone_form_field.dart';

class PhoneNumForm extends StatelessWidget {
  const PhoneNumForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PhoneFormField(
      initialValue: PhoneNumber.parse('+91'),
      validator: PhoneValidator.compose(
          [PhoneValidator.valid(context), PhoneValidator.validMobile(context)]),
      countrySelectorNavigator: CountrySelectorNavigator.modalBottomSheet(
        height: Get.size.height * 0.4,
      ),
      enabled: true,
      countryButtonPadding: null,
      isCountrySelectionEnabled: true,
      isCountryButtonPersistent: true,
      showDialCode: true,
      showIsoCodeInInput: true,
      showFlagInInput: false,
      flagSize: 16,
      cursorColor: Colors.white,
      style: const TextStyle(
        fontSize: 16,
        color: Colors.white,
        fontWeight: FontWeight.w500,
      ),
      decoration: InputDecoration(
        border: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white, width: 2),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white, width: 2),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white, width: 2),
        ),
        disabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white, width: 2),
        ),
        hintText: 'Enter your phone number',
        hintStyle: TextStyle(color: Colors.white),
      ),
    );
  }
}
