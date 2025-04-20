import 'package:flutter/widgets.dart';
import 'visibility_handler.dart';

class VisibilityHandlerImpl extends WidgetsBindingObserver
    implements VisibilityHandler {
  void Function()? _onHidden;
  void Function()? _onVisible;
  bool _isDisposed = false;

  @override
  void init(void Function() onHidden, void Function() onVisible) {
    _onHidden = onHidden;
    _onVisible = onVisible;
    WidgetsBinding.instance.addObserver(this);
    print("VisibilityHandlerImpl (MOBILE) - observer ditambahkan");
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (_isDisposed) return;

    if (state == AppLifecycleState.paused ||
        state == AppLifecycleState.inactive) {
      print("App disembunyikan (via Lifecycle)");
      _onHidden?.call();
    } else if (state == AppLifecycleState.resumed) {
      print("App terlihat kembali (via Lifecycle)");
      _onVisible?.call();
    }
  }

  @override
  void dispose() {
    print("VisibilityHandlerImpl DISPOSE DIPANGGIL");
    _isDisposed = true;
    WidgetsBinding.instance.removeObserver(this);
  }

  // Tambahan agar sesuai interface abstract class
  @override
  void setNavigatingToResult(bool value) {
    print('[VisibilityHandler] setNavigatingToResult (mobile): $value');
  }

  @override
  void setLogEnabled(bool value) {
    print('[VisibilityHandler] setLogEnabled (mobile): $value');
  }
}
