import 'package:flutter/foundation.dart';
import 'interest_state.dart';

class InterestController {
  final ValueNotifier<InterestState> state = ValueNotifier(
    InterestState.initial(),
  );

  void toggleInterest(int index) {
    final current = List<bool>.from(state.value.selectedInterests);
    final isSelected = current[index];

    // Đếm số lượng sở thích đã chọn
    final selectedCount = current.where((e) => e).length;

    // Nếu đang bỏ chọn => cho phép luôn
    // Nếu đang chọn mới => chỉ cho chọn nếu chưa đủ 4
    if (!isSelected && selectedCount >= 4) {
      return;
    }

    current[index] = !isSelected;
    state.value = state.value.copyWith(selectedInterests: current);
  }

  void dispose() {
    state.dispose();
  }
}
