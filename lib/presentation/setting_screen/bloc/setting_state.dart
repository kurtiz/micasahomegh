// ignore_for_file: must_be_immutable

part of 'setting_bloc.dart';

/// Represents the state of Setting in the application.
class SettingState extends Equatable {
  SettingState({
    this.nameController,
    this.emailController,
    this.passwordController,
    this.fAQController,
    this.fAQController1,
    this.isSelectedSwitch = false,
    this.isSelectedSwitch1 = false,
    this.isSelectedSwitch2 = false,
    this.settingModelObj,
  });

  TextEditingController? nameController;

  TextEditingController? emailController;

  TextEditingController? passwordController;

  TextEditingController? fAQController;

  TextEditingController? fAQController1;

  SettingModel? settingModelObj;

  bool isSelectedSwitch;

  bool isSelectedSwitch1;

  bool isSelectedSwitch2;

  @override
  List<Object?> get props => [
        nameController,
        emailController,
        passwordController,
        fAQController,
        fAQController1,
        isSelectedSwitch,
        isSelectedSwitch1,
        isSelectedSwitch2,
        settingModelObj,
      ];
  SettingState copyWith({
    TextEditingController? nameController,
    TextEditingController? emailController,
    TextEditingController? passwordController,
    TextEditingController? fAQController,
    TextEditingController? fAQController1,
    bool? isSelectedSwitch,
    bool? isSelectedSwitch1,
    bool? isSelectedSwitch2,
    SettingModel? settingModelObj,
  }) {
    return SettingState(
      nameController: nameController ?? this.nameController,
      emailController: emailController ?? this.emailController,
      passwordController: passwordController ?? this.passwordController,
      fAQController: fAQController ?? this.fAQController,
      fAQController1: fAQController1 ?? this.fAQController1,
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      isSelectedSwitch1: isSelectedSwitch1 ?? this.isSelectedSwitch1,
      isSelectedSwitch2: isSelectedSwitch2 ?? this.isSelectedSwitch2,
      settingModelObj: settingModelObj ?? this.settingModelObj,
    );
  }
}
