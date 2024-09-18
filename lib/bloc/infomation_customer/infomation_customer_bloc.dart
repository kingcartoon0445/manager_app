
import 'export_infomation_customer_bloc.dart'; 

class   InfomationCustomerBloc extends Bloc<InfomationCustomerEvent, InfomationCustomerState> {
  InfomationCustomerBloc() : super(InfomationCustomerState(dateTime: DateTime.now())) {
    on<SetDate>((event, emit) {
      emit(InfomationCustomerState(dateTime: event.date));
    });
    on<SetTime>((event, emit) {
      emit(InfomationCustomerState(dateTime: state.dateTime.add(event.time)));
    });
  }
}
