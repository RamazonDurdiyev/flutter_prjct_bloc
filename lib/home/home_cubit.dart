import 'package:flutter_bloc/flutter_bloc.dart';

abstract class HomeCubit extends Cubit<int>{
  HomeCubit() : super(0);

  int zikrcount = 0;
  int zikrsum = 0;
  String zikr = "Subhan Allah";

  increment() {
    emit(++zikrcount);
    zikrsum++;
    if (zikrcount == 33) {
      zikrcount = 0;
    }
    if (zikrsum == 99) {
      zikrsum = 0;
    }
  }

  functionzikr() {
    if (zikrsum < 33) {
      zikr = "Subhan Allah";
      emit(state + 1);
    } else if (zikrsum > 33 && zikrsum < 67) {
      zikr = "Alhamdulillah";
      emit(state + 1);
    } else {
      zikr = "Allohu Akbar";
      emit(state + 1);
    }
  }
}

class CountCubit extends HomeCubit {
  @override
  increment() {
    emit(++zikrcount);
    zikrsum++;
    if (zikrcount == 33) {
      zikrcount = 0;
    }
    if (zikrsum == 99) {
      zikrsum = 0;
    }
  }
}

class ZikrCubit extends HomeCubit{
  @override
  functionzikr() {
    if (zikrsum <= 33) {
      zikr = "Subhan Allah";
      emit(state + 1);
    } else if (zikrsum > 33 && zikrsum <= 66) {
      zikr = "Alhamdulillah";
      emit(state + 1);
    } else if (zikrsum > 66 && zikrsum <= 99){
      zikr = "Allohu Akbar";
      emit(state + 1);
    }
  }
}
