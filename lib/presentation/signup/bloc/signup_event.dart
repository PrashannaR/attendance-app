part of 'signup_bloc.dart';

@immutable
sealed class SignupEvent {}

class RegisterUserEvent extends SignupEvent {
  final String email;
  final String name;
  final String password;
  final String profileImage;

  RegisterUserEvent({
    required this.email,
    required this.name,
    required this.password,
    required this.profileImage,
  });
}
