import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stroll_task1/core/constants/padding_consts.dart';
import 'package:stroll_task1/core/constants/string_const.dart';
import 'package:stroll_task1/core/extensions/context_extensions.dart';
import 'package:stroll_task1/core/extensions/string_extensions.dart';
import 'package:stroll_task1/core/extensions/theme_extension.dart';
import 'package:stroll_task1/core/theme/colors.dart';
import 'package:websafe_svg/websafe_svg.dart';

class HomeBottomWidget extends StatefulWidget {
  const HomeBottomWidget({
    super.key,
  });

  @override
  State<HomeBottomWidget> createState() => _HomeBottomWidgetState();
}

class _HomeBottomWidgetState extends State<HomeBottomWidget> {
  int? selectedOptionIndex;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: PaddingConsts.largeHorizontal - 10.w),
          child: SizedBox(
            height: 75.h,
            width: context.screenWidth,
            child: Stack(
              children: [
                Positioned(
                  left: 30.w,
                  top: 5.h,
                  child: Container(
                    height: 20.0.h,
                    width: 107.w,
                    decoration: BoxDecoration(
                      color: StrollAppColors.black4,
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 25.w,
                        ),
                        child: Text(
                          "Angelina, 28",
                          style: context.textTheme.bodySmall!.copyWith(
                            color: StrollAppColors.white,
                            fontSize: 11.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 60.0.h,
                  width: 60.0.w,
                  decoration: BoxDecoration(
                    color: StrollAppColors.black3,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                          offset: const Offset(0, 3.41),
                          blurRadius: 11.93,
                          color: StrollAppColors.black.withOpacity(0.4))
                    ],
                  ),
                  child: Center(
                    child: Container(
                      height: 50.0.h,
                      width: 50.0.w,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage("dp".png)),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 28.0.h,
                  left: 60.0.w,
                  child: Padding(
                    padding: EdgeInsets.only(left: 10.0.w),
                    child: Text(
                      "What is your favorite time\nof the day?",
                      softWrap: true,
                      style: context.textTheme.bodyLarge!.copyWith(
                        fontWeight: FontWeight.w700,
                        color: StrollAppColors.white1,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        9.0.verticalSpace,
        Align(
          alignment: Alignment.center,
          child: Text(
            "“Mine is definitely the peace in the morning.”",
            softWrap: true,
            textAlign: TextAlign.center,
            style: context.textTheme.bodySmall!.copyWith(
              fontWeight: FontWeight.w700,
              color: StrollAppColors.primary2.withOpacity(0.7),
            ),
          ),
        ),
        14.0.verticalSpace,
        GridView.builder(
          shrinkWrap: true,
          padding:
              EdgeInsets.symmetric(horizontal: PaddingConsts.smallHorizontal),
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 12.0,
              mainAxisSpacing: 12.0,
              childAspectRatio: 2.8),
          itemCount: optionsList.length,
          itemBuilder: (context, index) {
            return CustomOptionsWidget(
              touched: selectedOptionIndex == index,
              data: optionsList[index],
              onTap: () {
                setState(() {
                  selectedOptionIndex = index;
                });
              },
            );
          },
        ),
        11.0.verticalSpace,
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: PaddingConsts.smallHorizontal),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Pick your option.\nSee who has a similar mind.",
                textAlign: TextAlign.start,
                style: context.textTheme.bodySmall!.copyWith(
                  color: StrollAppColors.white3,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {},
                    child: WebsafeSvg.asset("mic".svg),
                  ),
                  5.0.horizontalSpace,
                  InkWell(
                    onTap: () {},
                    child: WebsafeSvg.asset("arrow_right".svg),
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class CustomOptionsWidget extends StatelessWidget {
  final bool touched;
  final OptionsModel data;
  final void Function()? onTap;
  const CustomOptionsWidget({
    super.key,
    required this.touched,
    required this.data,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
      decoration: BoxDecoration(
        color: StrollAppColors.black1,
        borderRadius: BorderRadius.circular(12.r),
        border: touched
            ? Border.all(
                width: 2.0,
                color: StrollAppColors.primary,
              )
            : Border.all(
                width: 2.0,
                color: Colors.transparent,
              ),
        boxShadow: const [
          // Drop shadow
          BoxShadow(
            color: Color(0x4D000000), // #0000004D
            offset: Offset(2, 2),
            blurRadius: 8,
          ),
        ],
      ),
      child: Stack(
        children: [
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                boxShadow: const [
                  // First inset shadow
                  BoxShadow(
                    color: Color(0x4D000000), // #0000004D
                    offset: Offset(-1, -1),
                    blurRadius: 2,
                    spreadRadius: 0,
                  ),
                  // Second inset shadow
                  BoxShadow(
                    color: Color(0x4D484848), // #4848484D
                    offset: Offset(1, 1),
                    blurRadius: 2,
                    spreadRadius: 0,
                  ),
                ],
              ),
            ),
          ),
          Positioned.fill(
            child: Material(
              type: MaterialType.transparency,
              child: InkWell(
                borderRadius: BorderRadius.circular(12.r),
                onTap: onTap,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: PaddingConsts.smallHorizontal - 5.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                        width: 20.0.w,
                        height: 20.0.h,
                        decoration: BoxDecoration(
                          color: touched == true
                              ? StrollAppColors.primary
                              : StrollAppColors.black1,
                          shape: BoxShape.circle,
                          border: touched
                              ? Border.all(
                                  width: 0.5,
                                  color: StrollAppColors.primary,
                                )
                              : Border.all(
                                  width: 0.5,
                                  color: StrollAppColors.white2,
                                ),
                        ),
                        child: Center(
                          child: Text(
                            data.letter,
                            style: context.textTheme.bodySmall!.copyWith(
                              color: StrollAppColors.white2,
                            ),
                          ),
                        ),
                      ),
                      9.0.horizontalSpace,
                      Flexible(
                        child: Text(
                          data.description,
                          softWrap: true,
                          style: context.textTheme.bodyMedium!.copyWith(
                            color: StrollAppColors.white2,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
