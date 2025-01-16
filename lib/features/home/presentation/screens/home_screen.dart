import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stroll_task1/core/constants/padding_consts.dart';
import 'package:stroll_task1/core/constants/string_const.dart';
import 'package:stroll_task1/core/extensions/context_extensions.dart';
import 'package:stroll_task1/core/extensions/string_extensions.dart';
import 'package:stroll_task1/core/extensions/theme_extension.dart';
import 'package:stroll_task1/core/theme/colors.dart';
import 'package:websafe_svg/websafe_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.screenHeight,
      width: context.screenWidth,
      color: Theme.of(context).scaffoldBackgroundColor,
      child: Stack(
        children: [
          Positioned.fill(
            top: -250.0.h,
            child: Image.asset(
              "background".png,
              width: context.screenWidth,
            ),
          ),
          const Positioned(
            top: 0.0,
            left: 0.0,
            right: 0.0,
            child: GradientWidget(),
          ),
          Positioned(
            top: 0.0,
            left: 00.0,
            right: 0.0,
            child: SizedBox(
              height: context.screenHeight,
              width: context.screenWidth,
              child:  SafeArea(
                top: true,
                child: Padding(
                  padding: EdgeInsets.only(top: 20.0.h),
                  child:  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const HomeTopWidget(),
                      SizedBox(
                        height: context.screenHeight *.35,
                      ),
                      const HomeBottomWidget(),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

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
                      padding:  EdgeInsets.only(left: 5.0.w),
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

class HomeTopWidget extends StatelessWidget {
  const HomeTopWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Stroll Bonfire",
              style: context.textTheme.headlineLarge!.copyWith(
                color: StrollAppColors.primary1,
                shadows: [
                  const Shadow(
                    offset: Offset(0, 0),
                    blurRadius: 7.9,
                    color: Color(0x33000000), // Shadow #00000033
                  ),
                  const Shadow(
                    offset: Offset(0, 0),
                    blurRadius: 2.0,
                    color: Color(0xFFBEBEBE), // Shadow #BEBEBE
                  ),
                  const Shadow(
                    offset: Offset(0, 1),
                    blurRadius: 2.0,
                    color: Color(0x8024232F), // Shadow #24232F80
                  ),
                ],
              ),
            ),
            WebsafeSvg.asset("caret_down".svg)
          ],
        ),
        10.0.verticalSpace,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            WebsafeSvg.asset("clock".svg),
            5.0.horizontalSpace,
            Text(
              "22h 00m",
              style: context.textTheme.bodySmall!.copyWith(
                color: StrollAppColors.white,
                shadows: [
                  Shadow(
                    offset: const Offset(0, 1),
                    blurRadius: 1,
                    color: const Color(0xFF000000).withOpacity(0.3),
                  ),
                  Shadow(
                    offset: const Offset(0, 1),
                    blurRadius: 4.0,
                    color: const Color(0xFF000000).withOpacity(0.2),
                  ),
                ],
              ),
            ),
            10.0.horizontalSpace,
            WebsafeSvg.asset("person".svg),
            5.0.horizontalSpace,
            Text(
              "103",
              style: context.textTheme.bodySmall!.copyWith(
                color: StrollAppColors.white,
                shadows: [
                  Shadow(
                    offset: const Offset(0, 1),
                    blurRadius: 1,
                    color: const Color(0xFF000000).withOpacity(0.3),
                  ),
                  Shadow(
                    offset: const Offset(0, 1),
                    blurRadius: 4.0,
                    color: const Color(0xFF000000).withOpacity(0.2),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class GradientWidget extends StatelessWidget {
  const GradientWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.screenHeight,
      width: context.screenWidth,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.transparent,
            Color.fromRGBO(13, 14, 18, 0.28),
            Color.fromRGBO(11, 12, 15, 0.64),
            Color.fromRGBO(9, 11, 13, 0.8),
            Colors.black,
          ],
          stops: [0.4397, 0.486, 0.5252, 0.5514, 0.5694],
        ),
      ),
      child: Stack(
        children: [
          Container(
            height: context.screenHeight,
            width: context.screenWidth,
            decoration: const BoxDecoration(
              gradient: RadialGradient(
                center: Alignment(0.0, -0.7),
                radius: 1.0,
                colors: [
                  Color.fromRGBO(0, 0, 0, 0.045),
                  Color.fromRGBO(0, 0, 0, 0.107193),
                  Color.fromRGBO(0, 0, 0, 0.135),
                  Color.fromRGBO(0, 0, 0, 0.195),
                  Color.fromRGBO(0, 0, 0, 0.24),
                ],
                stops: [0.0, 0.6328, 0.7566, 0.8844, 1.0],
              ),
            ),
          ),
          Container(
            height: context.screenHeight,
            width: context.screenWidth,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromRGBO(0, 0, 0, 0.4),
                  Color.fromRGBO(0, 0, 0, 0.123359),
                  Colors.transparent,
                ],
                stops: [0.0, 0.14, 0.234],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
