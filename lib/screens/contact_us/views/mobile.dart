part of '../contact_us.dart';

class Mobile extends StatelessWidget {
  const Mobile({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    App.init(context);
    List<String> emails = [
      "asdkska@gmai.com",
      "asdkska@gmai.com",
      "asdkska@gmai.com",
      "asdkska@gmai.com",
    ];
    App.init(context);
    return SingleChildScrollView(
      child: SizedBox(
        child: Padding(
          padding: Space.all(2),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Space.y2!,
              SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Get in Touch",
                      style: AppText.h2b,
                    ),
                    Space.y1!,
                    Text(
                      "Phone",
                      style: AppText.b1b,
                    ),
                    Space.yf(0.5),
                    Text(
                      " + 12 129 234 103 2",
                      style: AppText.l1,
                    ),
                    Space.yf(0.5),
                    Text(
                      "Email",
                      style: AppText.b1b,
                    ),
                    Space.yf(0.5),
                    ...emails.asMap().entries.map((e) {
                      return TextButton(
                        onPressed: () {},
                        child: Text(
                          e.value,
                          style: AppText.l1!.copyWith(
                            color: AppTheme.c!.primary,
                          ),
                        ),
                      );
                    }),
                    Space.yf(0.5),
                    Text(
                      "Office",
                      style: AppText.b1b,
                    ),
                    SizedBox(
                      width: AppDimensions.normalize(100),
                      child: Text(
                        "Branches all over Pakistan, main branches at Lahore, Rawalpindi, Karachi and Multan",
                        style: AppText.l1,
                      ),
                    ),
                  ],
                ),
              ),
              Space.y2!,
              const ContactForm(),
            ],
          ),
        ),
      ),
    );
  }
}
