import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wealth_wise/view_model/bills/states.dart';

class BillsCubit extends Cubit<BillsStates> {
  // BillsCubit(super.initialState);
  BillsCubit() : super(InitialState());
  static BillsCubit getInstance(context) => BlocProvider.of(context);

  bool isActive = true;

  void activeIsTrue() {
    isActive = true;
    log('$isActive');
    emit(ChangeActiveToTrue());
  }

  void activeIsFalse() {
    isActive = false;
    log('$isActive');
    emit(ChangeActiveToFalse());
  }
}
