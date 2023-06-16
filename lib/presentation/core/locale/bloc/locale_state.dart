import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../support_locale.dart';

part 'locale_state.freezed.dart';

@freezed
class LocaleState with _$LocaleState {
  factory LocaleState({
    required Locale locale,
  }) = _LocaleState;

  const LocaleState._();

  factory LocaleState.initial() => LocaleState(
        locale: SupportLocale.defaultLocal,
      );
}
