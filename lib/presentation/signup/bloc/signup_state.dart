part of 'signup_bloc.dart';

@immutable
sealed class SignupState {}

class SignupInitial extends SignupState {}

class SignupSuccess extends SignupState {}

class SignupFailure extends SignupState {}
