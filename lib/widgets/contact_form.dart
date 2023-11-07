import 'package:digihiro/configs/app_dimensions.dart';
import 'package:digihiro/configs/app_typography.dart';
import 'package:digihiro/configs/space.dart';
import 'package:digihiro/responsive/responsive.dart';
import 'package:digihiro/widgets/buttons/app_button.dart';
import 'package:digihiro/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class ContactForm extends StatefulWidget {
  const ContactForm({Key? key}) : super(key: key);

  @override
  State<ContactForm> createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 3,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
        borderRadius: BorderRadius.circular(
          10,
        ),
      ),
      padding: Space.all(1),
      height: Responsive.isMobile(context)
          ? 700
          : AppDimensions.size!.height * 0.75,
      width: Responsive.isMobile(context) ? AppDimensions.size!.width * 0.9 : AppDimensions.size!.width * 0.3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Space.y1!,
          !Responsive.isMobile(context)
              ? Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "First Name",
                            style: AppText.l1,
                          ),
                          const CustomTextField(
                            name: 'firstName',
                            hint: "Type First Name",
                            textInputType: TextInputType.name,
                          ),
                        ],
                      ),
                    ),
                    Space.x1!,
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Last Name",
                            style: AppText.l1,
                          ),
                          const CustomTextField(
                            name: 'lastName',
                            hint: "Type Last Name",
                            textInputType: TextInputType.name,
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "First Name",
                      style: AppText.l1,
                    ),
                    const CustomTextField(
                      name: 'firstName',
                      hint: "Type First Name",
                      textInputType: TextInputType.name,
                    ),
                    Space.y1!,
                    Text(
                      "Last Name",
                      style: AppText.l1,
                    ),
                    const CustomTextField(
                      name: 'lastName',
                      hint: "Type Last Name",
                      textInputType: TextInputType.name,
                    ),
                  ],
                ),
          Space.y1!,
          Text(
            "Email",
            style: AppText.l1,
          ),
          const CustomTextField(
            name: 'email',
            hint: "Type Email",
            textInputType: TextInputType.emailAddress,
          ),
          Space.y1!,
          Text(
            "Phone",
            style: AppText.l1,
          ),
          const CustomTextField(
            name: 'phone',
            hint: "Type Phone Number",
            textInputType: TextInputType.number,
          ),
          Space.y1!,
          Text(
            "Message",
            style: AppText.l1,
          ),
          const CustomTextField(
            name: 'message',
            hint: "Type Message",
            maxlines: 3,
            textInputType: TextInputType.multiline,
          ),
          Space.y1!,
          AppButton(
            onPressed: () {},
            label: "Send",
            variant: ButtonVariant.filled,
          ),
        ],
      ),
    );
  }
}
