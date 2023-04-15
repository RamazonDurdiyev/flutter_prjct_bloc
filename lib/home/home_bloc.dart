import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_prjct_bloc/home/home_state.dart';
import 'home_event.dart';

class Homebloc extends Bloc<HomeEvent, HomeState> {
  Homebloc() : super(Initial()) {
    on<IncrementEvent>((event, emit) {
      _increment(emit);
    });
  }
  int zikrCounter = 0;
  int changeCounter = 0;
  int zikrCounterSum = 0;
  String zikr = "";

  _increment(Emitter emit) {
    if (changeCounter < 33) {
      emit(ChangeZikrState(state: State.subhanAllah));
      zikrCounter++;
      zikrCounterSum++;
      changeCounter++;
      zikr = "Subhan Allah";
    } else if (changeCounter >= 33 && changeCounter < 66) {
      emit(ChangeZikrState(state: State.alhamdulillah));
      zikrCounter++;
      zikrCounterSum++;
      changeCounter++;
      zikr = "Alhamdulillah";
    } else if (changeCounter >= 66 && changeCounter < 99) {
      emit(ChangeZikrState(state: State.allahuAkbar));
      zikrCounter++;
      zikrCounterSum++;
      changeCounter++;
      zikr = "Allahu Akbar";
    } else {
      emit(ChangeZikrState(state: State.subhanAllah));
      zikrCounterSum++;
      changeCounter = 1;
      zikrCounter = 1;
      zikr = "Subhan Allah";
    }
  }
}
