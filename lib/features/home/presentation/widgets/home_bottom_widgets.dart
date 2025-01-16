



import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stroll_task1/core/constants/padding_consts.dart';
import 'package:stroll_task1/core/constants/string_const.dart';
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
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: PaddingConsts.largeHorizontal),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(25.r),
                child: Image.asset(
                  "dp".png,
                  height: 50.0.h,
                  width: 50.0.w,
                ),
              ),
              10.0.horizontalSpace,
              Flexible(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Angelina, 28",
                      style: context.textTheme.bodySmall!.copyWith(
                        color: StrollAppColors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    5.0.verticalSpace,
                    Padding(
                      padding: EdgeInsets.only(left: 5.0.w),
                      child: Text(
                        "What is your favorite time of the day?",
                        softWrap: true,
                        style: context.textTheme.bodyLarge!.copyWith(
                            fontWeight: FontWeight.w700,
                            color: StrollAppColors.white1,
                            height: 1),
                      ),
                    ),
                  ],
                ),
              )
            ],
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
              crossAxisCount: 2, // 4 items in a row
              crossAxisSpacing: 12.0, // Spacing between columns
              mainAxisSpacing: 12.0, // Spacing between rows
              childAspectRatio: 2.5),
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
      // width: 166.w,
      // height: 30.h,
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
      ),
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
    );
  }
}
