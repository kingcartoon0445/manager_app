abstract class InfomationCustomerEvent {}

class SetTime extends InfomationCustomerEvent {
  Duration time;
  SetTime({required this.time});
} 
class SetDate extends InfomationCustomerEvent {
  DateTime date;
  SetDate({required this.date});
} 
