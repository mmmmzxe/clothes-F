import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key? key,
    required this.title,
    required this.pressSeeAll,
  }) : super(key: key);
  final String title;
  final VoidCallback pressSeeAll;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          // ignore: deprecated_member_use
          style: Theme.of(context).textTheme.subtitle1!.copyWith(
                color: primaryColor,
                fontWeight: FontWeight.w600,
              ),
        ),
        TextButton(
          onPressed: pressSeeAll,
          child: const Text(
            "See All",
            style: TextStyle(color: primaryColor),
          ),
        )
      ],
    );
  }
}
