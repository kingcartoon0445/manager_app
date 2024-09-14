abstract class HomeEvent {}

class ChangeCarosel extends HomeEvent {
  int index;
  ChangeCarosel({required this.index});
} 

