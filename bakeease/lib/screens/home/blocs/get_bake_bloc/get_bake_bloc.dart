import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:bake_repository/bake_repository.dart';

part 'get_bake_event.dart';
part 'get_bake_state.dart';

class GetBakeBloc extends Bloc<GetBakeEvent, GetBakeState> {
  final BakeRepo _bakeRepo;

  GetBakeBloc(this._bakeRepo) : super(GetBakeInitial()) {
    on<GetBakes>((event, emit) async {
      emit(GetBakeLoading());

      try {
        List<Bake> bakes = await _bakeRepo.getBakes();
        emit(GetBakeSuccess(bakes));
      } catch (e) {
        emit(GetBakeFailure());
      }
    });
  }
}
