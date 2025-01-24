import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:phone_form_field/phone_form_field.dart';

class PhoneNumForm extends StatelessWidget {
  const PhoneNumForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final phoneController = PhoneController(
      initialValue: PhoneNumber(
        isoCode: IsoCode.IN,
        nsn: '',
      ),
    );

    return PhoneFormField(
      controller: phoneController,
      validator: PhoneValidator.compose([
        PhoneValidator.valid(context),
        PhoneValidator.validMobile(context),
      ]),
      countrySelectorNavigator: CountrySelectorNavigator.modalBottomSheet(
        height: Get.size.height * 0.4,
      ),
      enabled: true,
      isCountrySelectionEnabled: true,
      isCountryButtonPersistent: true,
      cursorColor: Colors.white,
      style: const TextStyle(
        fontSize: 16,
        color: Colors.white,
        fontWeight: FontWeight.w500,
      ),
      decoration: InputDecoration(
        border: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white, width: 2),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white, width: 2),
        ),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white, width: 2),
        ),
        disabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white, width: 2),
        ),
        hintText: 'Enter your phone number',
        hintStyle: const TextStyle(color: Colors.white70),
        errorStyle: const TextStyle(color: Colors.redAccent),
      ),
      onChanged: (PhoneNumber? number) {
        // Handle phone number changes
        if (number?.isValid() ?? false) {
          print('Valid phone: ${number?.international}');
        }
      },
      onSaved: (PhoneNumber? number) {
        // Handle save action
        if (number?.isValid() ?? false) {
          print('Saved phone: ${number?.international}');
        }
      },
    );
  }
}
