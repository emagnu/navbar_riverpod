//  //   ///
//  Import LIBRARIES
import 'package:riverpod_annotation/riverpod_annotation.dart';
//  Import FILES
//  PARTS
part 'navigation_notifier.g.dart';
//  //   ///

//  navigationNotifierProvider
@riverpod
class NavigationNotifier extends _$NavigationNotifier {
  @override
  int build() {
    return 0;
  }

  void setSelectedIndex(int index) {
    state = index;
  }
}
