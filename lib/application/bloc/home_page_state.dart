part of 'home_page_bloc.dart';

@freezed
class HomePageState with _$HomePageState {
  const factory HomePageState({
    required HidocModel? allDetails,
    required bool isError,
    required bool isLoading
  }) = _Initial;

  factory HomePageState.initial(){
    return const HomePageState(allDetails: null, isError: false, isLoading: false);
  } 
}
