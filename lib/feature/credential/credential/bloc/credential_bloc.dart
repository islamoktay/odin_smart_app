import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'credential_event.dart';
part 'credential_state.dart';

class CredentialBloc extends Bloc<CredentialEvent, CredentialState> {
  CredentialBloc() : super(CredentialInitial()) {
    on<CredentialEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
