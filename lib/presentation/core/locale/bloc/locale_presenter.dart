import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import './locale_state.dart';
import '../support_locale.dart';

class LocalePresenter extends Cubit<LocaleState> {
  LocalePresenter({
    @visibleForTesting LocaleState? state,
  }) : super(state ?? LocaleState.initial());

  Locale get locale => state.locale;

  void initialLocale([Locale? locale]) {
    emit(
      state.copyWith(
        locale: locale ?? SupportLocale.defaultLocal,
      ),
    );
  }

  void setLocale(Locale locale) {
    if (!SupportLocale.support.contains(locale)) {
      return;
    }
    emit(state.copyWith(locale: locale));
  }

  void clearLocale() {
    emit(
      state.copyWith(
        locale: SupportLocale.defaultLocal,
      ),
    );
  }
}
