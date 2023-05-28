import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hidoc/domain/core/failures/main_failure.dart';
import 'package:hidoc/domain/home_page/home_page_services.dart';
import 'package:hidoc/domain/home_page/model/hidoc_model.dart';
import 'package:injectable/injectable.dart';

part 'home_page_event.dart';
part 'home_page_state.dart';
part 'home_page_bloc.freezed.dart';
@injectable
class HomePageBloc extends Bloc<HomePageEvent, HomePageState> {
  final HomePageServices _homePageServices;
  HomePageBloc(this._homePageServices) : super(HomePageState.initial()) {
    on<FetchDetails>((event, emit) async{
      emit(const HomePageState(allDetails: null, isError: false, isLoading: true));
      final _result = await _homePageServices.fetchDetails();
      final newState = _result.fold((MainFailure failure) {
        return const HomePageState(allDetails: null, isError: true, isLoading: false);
      }, (HidocModel resp) {
        return HomePageState(allDetails: resp, isError: false, isLoading: false);
      });
      emit(newState);
    });
  }
}
