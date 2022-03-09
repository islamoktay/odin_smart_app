import '../../../core/_package_exports.dart';

class LevelOfOpenListCubit extends Cubit<List<double>> {
  LevelOfOpenListCubit() : super([]);
  void setList(List<double> list) {
    emit(list);
  }
}
