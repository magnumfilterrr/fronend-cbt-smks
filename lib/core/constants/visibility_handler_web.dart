import 'dart:html' as html;
import 'visibility_handler.dart';

class VisibilityHandlerImpl implements VisibilityHandler {
  late void Function() _onHidden;
  late void Function() _onVisible;

  @override
  void init(void Function() onHidden, void Function() onVisible) {
    _onHidden = onHidden;
    _onVisible = onVisible;

    html.document.addEventListener('visibilitychange', _handleVisibilityChange);
  }

  void _handleVisibilityChange(html.Event event) {
    if (html.document.hidden!) {
      _onHidden();
    } else {
      _onVisible();
    }
  }

  @override
  void dispose() {
    html.document.removeEventListener('visibilitychange', _handleVisibilityChange);
  }
}
