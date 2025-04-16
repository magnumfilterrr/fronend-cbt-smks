// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;
import 'visibility_handler.dart';

class VisibilityHandlerImpl implements VisibilityHandler {
  late void Function() _onHidden;
  late void Function() _onVisible;
  bool _isDisposed = false;

  @override
  void init(void Function() onHidden, void Function() onVisible) {
    _onHidden = onHidden;
    _onVisible = onVisible;

    html.document.addEventListener('visibilitychange', _handleVisibilityChange);
  }

  void _handleVisibilityChange(html.Event event) {
    if (_isDisposed) return;

    if (html.document.hidden!) {
      _onHidden();
    } else {
      _onVisible();
    }
  }

  @override
  void dispose() {
    _isDisposed = true;
    html.document
        .removeEventListener('visibilitychange', _handleVisibilityChange);
  }
}
