import 'package:flutter/cupertino.dart';

class BaseController extends ChangeNotifier {
  void updateState() => notifyListeners();

  ViewState _state = ViewState.Idle;
  ViewState get state => _state;

  bool _disposed = false;

  void setState(ViewState viewState) {
    if (viewState == _state) return;
    _state = viewState;
    notifyListeners();
  }

  @override
  void notifyListeners() {
    if (_disposed) return;
    super.notifyListeners();
  }

  @override
  void dispose() {
    _disposed = true;
    super.dispose();
  }
}

/// A value mapping the View UI to the state in the Model.
enum ViewState {
  /// When nothing is happening or just initialized
  Idle,

  /// Typically shows a loading indicator of some sorts
  Busy,

  /// Indicates that there's data available on the view
  DataFetched,

  /// Indicates that data was fetched successfully but nothing is available
  NoDataAvailable,

  /// Indicates there's an error on the view
  Error,

  /// Successful action occurred
  Success,

  /// The starting state that a form view is in
  WaitingForInput
}
