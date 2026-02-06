part of 'get_bake_bloc.dart';

sealed class GetBakeEvent extends Equatable {
  const GetBakeEvent();

  @override
  List<Object> get props => [];
}

final class GetBakes extends GetBakeEvent {}
