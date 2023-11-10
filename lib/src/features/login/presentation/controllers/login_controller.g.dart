// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$LoginController on LoginControllerBase, Store {
  late final _$userValidationTextAtom =
      Atom(name: 'LoginControllerBase.userValidationText', context: context);

  @override
  String? get userValidationText {
    _$userValidationTextAtom.reportRead();
    return super.userValidationText;
  }

  @override
  set userValidationText(String? value) {
    _$userValidationTextAtom.reportWrite(value, super.userValidationText, () {
      super.userValidationText = value;
    });
  }

  late final _$passwordValidationTextAtom = Atom(
      name: 'LoginControllerBase.passwordValidationText', context: context);

  @override
  String? get passwordValidationText {
    _$passwordValidationTextAtom.reportRead();
    return super.passwordValidationText;
  }

  @override
  set passwordValidationText(String? value) {
    _$passwordValidationTextAtom
        .reportWrite(value, super.passwordValidationText, () {
      super.passwordValidationText = value;
    });
  }

  @override
  String toString() {
    return '''
userValidationText: ${userValidationText},
passwordValidationText: ${passwordValidationText}
    ''';
  }
}
