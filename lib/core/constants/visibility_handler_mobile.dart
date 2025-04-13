import 'visibility_handler.dart';

class VisibilityHandlerImpl implements VisibilityHandler {
  @override
  void init(void Function() onHidden, void Function() onVisible) {
    // Tidak ada implementasi untuk mobile
  }

  @override
  void dispose() {
    // Tidak perlu dispose khusus
  }
}
