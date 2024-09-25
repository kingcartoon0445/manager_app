
import 'export_bloc.dart'; 

class MenuTypeBloc extends Bloc<MenuTypeEvent, MenuTypeState> {
  MenuTypeBloc() : super(MenuTypeState(indexCarousel: 0)) {
    on<ChangeCarosel>((event, emit) {
      emit(MenuTypeState(indexCarousel: event.index));
    });
  }
}
