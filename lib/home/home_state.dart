abstract class HomeState {}

class Initial extends HomeState {}

class ChangeZikrState extends HomeState{
  final State state;

  ChangeZikrState({required this.state});
}

enum State{subhanAllah,alhamdulillah,allahuAkbar}

