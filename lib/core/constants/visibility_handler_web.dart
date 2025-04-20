// ignore: avoid_web_libraries_in_flutter
// ignore_for_file: annotate_overrides

import 'dart:html' as html;
import 'visibility_handler.dart';

class VisibilityHandlerImpl implements VisibilityHandler {
  late void Function() _onHidden;
  late void Function() _onVisible;
  bool isDisposed = false;

  bool isNavigatingToResult = false;
  bool logEnabled = true;

  // 🔑 Tambahkan ini
  html.EventListener? _boundHandler;

  @override
  void init(void Function() onHidden, void Function() onVisible) {
    _onHidden = onHidden;
    _onVisible = onVisible;

    // 🔧 Simpan referensi fungsi handler ke _boundHandler
    _boundHandler = (html.Event e) => _handleVisibilityChange(e);

    // ✅ Pasang handler yang bisa direferensikan kembali
    html.document.addEventListener('visibilitychange', _boundHandler!);
  }

  void _handleVisibilityChange(html.Event e) {
    print(
        '[VisibilityHandler] handleVisibilityChange terpanggil, isDisposed: $isDisposed, isNavigatingToResult: $isNavigatingToResult, logEnabled: $logEnabled');
    if (isDisposed || isNavigatingToResult || !logEnabled) return;

    final isVisible = html.document.visibilityState == 'visible';
    if (isVisible) {
      _onVisible();
    } else {
      _onHidden();
    }
  }

  void setNavigatingToResult(bool value) {
    isNavigatingToResult = value;
  }

  void setLogEnabled(bool value) {
    logEnabled = value;
  }

  @override
  void dispose() {
    print('[VisibilityHandler] dispose dipanggil');
    isDisposed = true;

    // ❗ Hapus event listener pakai referensi yang sama
    if (_boundHandler != null) {
      html.document.removeEventListener('visibilitychange', _boundHandler!);
      _boundHandler = null;
    }
  }
}
