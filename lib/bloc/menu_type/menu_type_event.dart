abstract class MenuTypeEvent {}

class ChangeCarosel extends MenuTypeEvent {
  int index;
  ChangeCarosel({required this.index});
} 

