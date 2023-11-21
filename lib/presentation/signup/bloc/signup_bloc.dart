import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import 'package:http/http.dart' as http;
import 'dart:convert';

part 'signup_event.dart';
part 'signup_state.dart';

class SignupBloc extends Bloc<SignupEvent, SignupState> {
  SignupBloc() : super(SignupInitial()) {
    on<RegisterUserEvent>(registerUserEvent);
  }

  FutureOr<void> registerUserEvent(
      RegisterUserEvent event, Emitter<SignupState> emit) async {
    try {
      final response = await http.post(
        Uri.parse('https://atapp.fly.dev/v1/auth/register'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({
          'email': event.email,
          'name': event.name,
          'password': event.password,
          'profile_image': event.profileImage,
        }),
      );

      if (response.statusCode == 200) {
        // Successful registration
        print("success");
        emit(SignupSuccess());
      } else {
        // Registration failed
        print("failure");
        emit(SignupFailure());
      }
    } catch (e) {
      // Handle exceptions
      print("exception");
      print(e);
      emit(SignupFailure());
    }
  }
}
