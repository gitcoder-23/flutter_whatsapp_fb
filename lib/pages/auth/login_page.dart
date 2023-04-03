import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_whatsapp_fb/common/extension/custom_theme_extension.dart';
import 'package:flutter_whatsapp_fb/components/constants/colors.dart';
import 'package:flutter_whatsapp_fb/pages/auth/controller/auth_controller.dart';
import 'package:flutter_whatsapp_fb/widgets/custom_elevated_button.dart';
import 'package:flutter_whatsapp_fb/widgets/custom_icon_button.dart';
import 'package:flutter_whatsapp_fb/widgets/custom_text_field.dart';
import 'package:flutter_whatsapp_fb/widgets/show_alert_dialog.dart';

class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({super.key});

  @override
  ConsumerState<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  late TextEditingController countryNameController;
  late TextEditingController countryCodeController;
  late TextEditingController phoneNumberController;

  showCountryCodePicker() {
    showCountryPicker(
      context: context,
      showPhoneCode: true,
      favorite: ['IN'],
      countryListTheme: CountryListThemeData(
        bottomSheetHeight: 600,
        flagSize: 22,
        // ignore: deprecated_member_use
        backgroundColor: Theme.of(context).backgroundColor,

        borderRadius: BorderRadius.circular(20),
        textStyle: TextStyle(color: context.theme.greyColor),

        inputDecoration: InputDecoration(
          labelStyle: TextStyle(color: context.theme.greyColor),
          prefixIcon: Icon(
            Icons.language,
            color: greenDark,
          ),
          hintText: 'Search country by code or name',
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: context.theme.greyColor!.withOpacity(.2),
            ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: greenDark,
            ),
          ),
        ),
      ),
      // Onselect Code
      onSelect: (country) {
        print('country-sels-> $country');
        countryNameController.text = country.name;
        countryCodeController.text = country.phoneCode;
      },
    );
  }

  onIconBtnTap() {}

  sendCodeToPhone() {
    final phoneNumber = phoneNumberController.text;
    final countryName = countryNameController.text;
    final countryCode = countryCodeController.text;

    if (phoneNumber.isEmpty) {
      return ShowAlertDialog(
          context: context, message: "Please enter your phone number");
    } else if (phoneNumber.length < 9) {
      return ShowAlertDialog(
          context: context,
          message:
              "The phone number you entered is too short for the cuntry: $countryName. \n\nInclude your area code if you haven't");
    } else if (phoneNumber.length > 10) {
      return ShowAlertDialog(
        context: context,
        message:
            "The phone number you entered is too long for the country: $countryName",
      );
    }

    // Request A Verification Code
    ref.read(authControllerProvider).sendSmsCode(
          context: context,
          phoneNumber: "+$countryCode$phoneNumber",
        );
  }

  @override
  void initState() {
    countryNameController = TextEditingController(text: 'India');
    countryCodeController = TextEditingController(text: '91');
    phoneNumberController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    countryNameController.dispose();
    countryCodeController.dispose();
    phoneNumberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        title: Text(
          'Enter your phone number',
          style: TextStyle(
            color: context.theme.authAppbarTextColor,
          ),
        ),
        centerTitle: true,
        actions: [
          CustomIconButton(
            icon: Icons.more_vert,
            onIconBtnTap: onIconBtnTap,
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            child: RichText(
              textAlign: TextAlign.center,
              softWrap: true,
              text: TextSpan(
                text: 'WhatsApp will need to verify your phone number. ',
                style: TextStyle(
                  color: context.theme.greyColor,
                  height: 1.5,
                ),
                children: [
                  TextSpan(
                    text: "What's my number?",
                    style: TextStyle(
                      color: context.theme.blueColor,
                      height: 1.5,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: CustomTextField(
              onTap: showCountryCodePicker,
              controller: countryNameController,
              readOnly: true,
              suffixIcon: Icon(
                Icons.arrow_drop_down,
                color: greenDark,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Row(
              children: [
                SizedBox(
                  width: 70,
                  child: CustomTextField(
                    onTap: showCountryCodePicker,
                    controller: countryCodeController,
                    prefixText: '+',
                    readOnly: true,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: CustomTextField(
                    controller: phoneNumberController,
                    hintText: 'Phone number',
                    textAlign: TextAlign.left,
                    keyboardType: TextInputType.number,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Text(
            'Carrier charges may apply',
            style: TextStyle(
              color: context.theme.greyColor,
            ),
          ),
        ],
      ),
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CustomElevatedButton(
        btnHeight: 40,
        btnWidth: 90,
        btnName: 'Next',
        onBtnPressed: sendCodeToPhone,
      ),
    );
  }
}
