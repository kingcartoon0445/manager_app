import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:manager_app/bloc/infomation_customer/export_infomation_customer_bloc.dart';
import 'package:manager_app/bloc/infomation_customer/infomation_customer_bloc.dart';
import 'package:manager_app/gen/colors.gen.dart';
import 'package:manager_app/routes/app_route.dart';
import 'package:manager_app/widget/appBar.dart';
import 'package:manager_app/widget/theme_app.dart';

import '../../export_global.dart';
import 'widget/text_filed_information.dart';

@RoutePage()
class InfomationCustomerScreen extends StatelessWidget {
  InfomationCustomerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController phoneController = TextEditingController();
    TextEditingController adressController = TextEditingController();
    TextEditingController numOfPeopleController = TextEditingController();
    TextEditingController numberOfTableController = TextEditingController();
    void _showDialog(Widget child) {
      showCupertinoModalPopup<void>(
        context: context,
        builder: (BuildContext context) => Container(
          height: 216,
          padding: const EdgeInsets.only(top: 6.0),
          // The Bottom margin is provided to align the popup above the system
          // navigation bar.
          margin: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          // Provide a background color for the popup.
          color: CupertinoColors.systemBackground.resolveFrom(context),
          // Use a SafeArea widget to avoid system overlaps.
          child: SafeArea(
            top: false,
            child: child,
          ),
        ),
      );
    }

    final infomationCustomerBloc =
        BlocProvider.of<InfomationCustomerBloc>(context);
    return Scaffold(
      appBar: AppBarGlobal(
        title: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Your", style: context.textTheme.bigHeadlineLarge),
                Image.asset(
                  "assets/icons/information.png",
                  height: 55,
                )
              ],
            ),
            Text("INFORMATION", style: context.textTheme.bigDisplayLarge),
          ],
        ),
        context: context,
      ),
      body: InkWell(
        onTap: () {
          FocusScope.of(context).requestFocus(new FocusNode());
        },
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                TextFiledInformation(
                  controller: nameController,
                  labelText: "Your name",
                ),
                TextFiledInformation(
                  controller: phoneController,
                  labelText: "Your phone",
                ),
                TextFiledInformation(
                  controller: adressController,
                  labelText: "Your adress",
                ),
                SizedBox(
                  // color:Colors.red,
                  height: 110,
                  child: Row(
                    children: [
                      TextFiledInformation(
                        controller: numOfPeopleController,
                        isSetWidth: true,
                        labelText: "Number of people",
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      TextFiledInformation(
                        isSetWidth: true,
                        controller: numberOfTableController,
                        labelText: "Number of table",
                      ),
                    ],
                  ),
                ),
                BlocBuilder<InfomationCustomerBloc, InfomationCustomerState>(
                    builder: (context, state) {
                  return Row(
                    children: [
                      _DatePickerItem(
                        children: <Widget>[
                          const Text('Date'),
                          InkWell(
                            // padding:EdgeInsets.zero,
                            // Display a CupertinoDatePicker in date picker mode.
                            onTap: () => _showDialog(
                              CupertinoDatePicker(
                                initialDateTime: state.dateTime,
                                mode: CupertinoDatePickerMode.date,
                                use24hFormat: true,
                                // This shows day of week alongside day of month
                                showDayOfWeek: true,
                                // This is called when the user changes the date.
                                onDateTimeChanged: (DateTime newDate) {
                                  // setState(() => date = newDate);
                                  infomationCustomerBloc
                                      .add(SetDate(date: newDate));
                                },
                              ),
                            ),
                            // In this example, the date is formatted manually. You can
                            // use the intl package to format the value based on the
                            // user's locale settings.
                            child: Text(
                                '${state.dateTime.month}-${state.dateTime.day}-${state.dateTime.year}',
                                style: context.textTheme.headlineLarge),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      _DatePickerItem(
                        children: <Widget>[
                          Text('Time', style: context.textTheme.miniLabelSmall),
                          InkWell(
                            // Display a CupertinoDatePicker in time picker mode.
                            onTap: () => _showDialog(
                              CupertinoDatePicker(
                                initialDateTime: state.dateTime,
                                mode: CupertinoDatePickerMode.time,
                                use24hFormat: true,
                                // This is called when the user changes the time.
                                onDateTimeChanged: (DateTime newTime) {
                                  // setState(() => time = newTime);
                                  Duration timeDuration = Duration(
                                    hours: newTime.hour,
                                    minutes: newTime.minute,
                                    seconds: newTime.second,
                                    milliseconds: newTime.millisecond,
                                  );
                                  infomationCustomerBloc
                                      .add(SetTime(time: timeDuration));
                                },
                              ),
                            ),
                            // In this example, the time value is formatted manually.
                            // You can use the intl package to format the value based on
                            // the user's locale settings.
                            child: Text(
                                DateFormat('HH:mm a').format(state.dateTime),
                                style: context.textTheme.headlineLarge),
                          ),
                        ],
                      ),
                    ],
                  );
                }),
              ],
            ),
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
                context.router.push(const ConformBookingRoute());
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
                  "Next",
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

class _DatePickerItem extends StatelessWidget {
  const _DatePickerItem({required this.children});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 75,
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          border: Border.all(color: ColorName.colorGrey4),
          borderRadius: const BorderRadius.all(
            Radius.circular(8),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: children,
        ),
      ),
    );
  }
}
