part of 'get_bake_bloc.dart';


// @immutable
sealed class GetBakeState extends Equatable {
  const GetBakeState();

  @override
  List<Object> get props => [];
}

final class GetBakeInitial extends GetBakeState {}

final class GetBakeFailure extends GetBakeState {}
final class GetBakeLoading extends GetBakeState {}
final class GetBakeSuccess extends GetBakeState {
  final List<Bake> bakes;

  const GetBakeSuccess(this.bakes);

  @override
  List<Object> get props => [bakes];
}