import 'package:flutter/material.dart';

class BioCard extends StatelessWidget {
  const BioCard({
    Key? key,
    required this.leadingIcon,
    required this.title,
    required this.subtitle,
    required this.trailingIcon,
    this.marginBottom =0,
    required this.onPressed,
  }) : super(key: key);

  final IconData leadingIcon;
  final String title;
  final String subtitle;
  final IconData trailingIcon;
  final double marginBottom;
  final void Function() onPressed;


  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsetsDirectional.only(
        start: 30,
        end: 30,
        bottom: marginBottom,
      ),
      elevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      // margin: EdgeInsets.zero,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Icon(
              leadingIcon,
              color: Colors.grey.shade700,
            ),
            const SizedBox(width: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontFamily: 'Edu',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  subtitle,
                  style: const TextStyle(
                    fontFamily: 'Edu',
                    fontWeight: FontWeight.normal,
                    fontSize: 12,
                    height: 0,
                  ),
                ),
              ],
            ),
            const Spacer(),
            IconButton(
              onPressed: onPressed,
              icon: Icon(trailingIcon),
              iconSize: 18,
              // constraints: const BoxConstraints(
              //   maxHeight: 40,
              //   minHeight: 30,
              ),
          ],
        ),
      ),
    );
  }
}