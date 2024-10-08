import 'package:flutter/material.dart';
import 'package:manager_app/export_global.dart';
import 'package:manager_app/widget/appBar.dart';

@RoutePage()
class ConformBookingScreen extends StatelessWidget {
  const ConformBookingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarGlobal(
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("CONFIRM", style: context.textTheme.headlineMedium),
                const SizedBox(
                  height: 10,
                ),
                Text("YOUR BOOKING", style: context.textTheme.displayLarge),
                const SizedBox(
                  height: 10,
                )
              ],
            ),
            context: context),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: ColorName.colorGrey2.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Expanded(
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("Your name:",
                                          style: context.textTheme.labelSmall!),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Text("LAI HONG KHAI".toUpperCase(),
                                          style: context.textTheme.bodyLarge!),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Text("Your phone:",
                                          style: context.textTheme.labelSmall!),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Text("09089890986",
                                          style: context.textTheme.bodyLarge!),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Text("Status:",
                                          style: context.textTheme.labelSmall!),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Container(
                                        width: 100,
                                        height: 25,
                                        decoration: BoxDecoration(
                                          color: ColorName.colorFree,
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        child: Center(
                                            child: Text(
                                          "Booking",
                                          style: context.textTheme.labelLarge!
                                              .copyWith(
                                            color: ColorName.white,
                                          ),
                                        )),
                                      )
                                    ]),
                              ),
                              Expanded(
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("Your name:",
                                          style: context.textTheme.labelSmall!),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Text("LAI HONG KHAI".toUpperCase(),
                                          style: context.textTheme.bodyLarge!),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Text("Your phone:",
                                          style: context.textTheme.labelSmall!),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Text("09089890986",
                                          style: context.textTheme.bodyLarge!),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Text("Date & Time:",
                                          style: context.textTheme.labelSmall!),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Text("13/09/2024 19:00 PM",
                                          style: context.textTheme.bodyLarge!)
                                    ]),
                              )
                            ],
                          ),
                        ),
                        Text("Your name:",
                            style: context.textTheme.labelSmall!),
                        Text(
                            "TTTM Vincom, 12 Đ. Phan Văn Trị, Phường 7, Gò Vấp, Hồ Chí Minh 75000, Việt Nam",
                            style: context.textTheme.bodyLarge!),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ListTile(
                title: Center(
                    child: Text(
                  'FOOD & LIFE',
                  style: context.textTheme.displayLarge!.copyWith(color: ColorName.black,)
                  
              
                )),
                subtitle: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        "assets/icons/location.svg",
                        height: 15,
                        color: ColorName.colorGrey2,
                      ),
                      const SizedBox(
                        width: 3,
                      ),
                       Text(
                        "Haidilao Huoguo 海底捞火锅 Vincom Phan Văn Trị",
                        style:
                        context.textTheme.labelSmall!.copyWith( color: ColorName.colorGrey2, fontSize: 10),
                      )
                    ],
                  ),
                ),
              ),
            
                  ],),
                )
              ],
            ),
          ),
        ),
           bottomNavigationBar: Container(
        height: 100,
        margin: const EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                context.router.maybePop();
              },
              child: Image.asset(
                "assets/icons/back.png",
                height: 50,
              ),
            ),
            InkWell(
              onTap: () {
                // context.router.push(const ConformBookingRoute());
              },
              child: Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                  color: ColorName.colorGrey3,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                    child: Text(
                  "CONFIRM".toUpperCase(),
                  style: context.textTheme.headlineLarge!.copyWith(
                    color: ColorName.colorGrey4,
                  ),
                )),
              ),
            ),
          ],
        ),
      ),
   
        );
  }
}
