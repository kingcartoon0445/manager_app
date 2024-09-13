
import 'export_bloc.dart'; 

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeState(indexCarousel: 0)) {
    on<ChangeCarosel>((event, emit) {
      emit(HomeState(indexCarousel: event.index));
    });
  }
}
