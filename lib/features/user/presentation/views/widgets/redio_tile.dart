import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';



class RadioTile extends StatelessWidget {
  const RadioTile({Key? key, required this.userType, required this.value,required this.groupValue, this.onChanged}) : super(key: key);
  final String userType;
  final int value;
  final int groupValue;
  final void Function(int?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      height: 3.h,
      padding: const EdgeInsets.all(5),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side:  BorderSide(width: 1, color: Colors.black),
          borderRadius: BorderRadius.circular(5),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Radio(
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,

              value: value, groupValue: groupValue, onChanged:onChanged),
          Text(userType,
            style: GoogleFonts.roboto(
              color:Colors.grey,
              fontSize: 6.sp,
              fontWeight: FontWeight.w400,
            ),
          )
        ],
      ),
    );
  }
}