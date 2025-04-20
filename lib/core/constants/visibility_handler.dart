import 'visibility_handler_mobile.dart'
    if (dart.library.html) 'visibility_handler_web.dart';

abstract class VisibilityHandler {
  void init(void Function() onHidden, void Function() onVisible);
  void dispose();
  void setNavigatingToResult(bool value);
  void setLogEnabled(bool value);
}

VisibilityHandler createVisibilityHandler() => VisibilityHandlerImpl();
