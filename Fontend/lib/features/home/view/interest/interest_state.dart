class InterestState {
  final List<bool> selectedInterests;

  InterestState({required this.selectedInterests});

  // Tạo bản sao với danh sách mới (bất biến)
  InterestState copyWith({List<bool>? selectedInterests}) {
    return InterestState(
      selectedInterests: selectedInterests ?? this.selectedInterests,
    );
  }

  factory InterestState.initial() {
    return InterestState(
      selectedInterests: List.generate(12, (_) => false),
    );
  }
}
