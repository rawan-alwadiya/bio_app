import 'package:flutter/material.dart';

class BioContainer extends StatelessWidget {
  const BioContainer({
    Key? key,
    required this.leadingIcon,
    required this.title,
    required this.subTitle,
    required this.trailingIcon,
    required this.onPressed,
    this.marginBottom =0,
  }) : super(key: key);

  final IconData leadingIcon;
  final String title;
  final String subTitle;
  final IconData trailingIcon;
  final void Function() onPressed;
  final double marginBottom;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.only(
          start: 30,
          end: 30,
          bottom: marginBottom,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow:const [
          BoxShadow(
            color: Colors.black45,
            blurRadius: 6,
            offset: Offset(0,10),
          ),
          // BoxShadow(
          //   color: Colors.red,
          //   blurRadius: 6,
          //   offset: Offset(-10,-10),
          // ),
        ],
      ),
      child: ListTile(
        leading: Icon(leadingIcon),
        title:Text(title),
        subtitle: Text(subTitle),
        trailing: IconButton(
          icon: Icon(trailingIcon),
          onPressed: onPressed,
        ),
      ),
    );
  }
}