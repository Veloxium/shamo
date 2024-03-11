import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../utils/constans.dart';

class CTextFormField extends StatelessWidget {
  const CTextFormField(
      {super.key,
      required this.label,
      required this.hint,
      required this.iconAsset});
  final String label;
  final String hint;
  final String iconAsset;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: CTextStyles.label,
        ),
        const SizedBox(
          height: 12.0,
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 17.0),
          decoration: BoxDecoration(
            color: CColors.bgColor2,
            borderRadius: BorderRadius.circular(12.0),
          ),
          height: 50.0,
          child: Row(
            children: [
              Image.asset(
                iconAsset,
                width: 20.0,
                height: 20.0,
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(left: 10.0),
                  child: TextFormField(
                    style: const TextStyle(color: CColors.primaryText),
                    decoration: InputDecoration(
                      hintText: hint,
                      hintStyle: CTextStyles.sublabel,
                      border: const OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.all(
                          Radius.circular(12.0),
                        ),
                      ),
                      contentPadding: const EdgeInsets.symmetric(vertical: 15.0),
                    ),
                    onChanged: (value) {},
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
