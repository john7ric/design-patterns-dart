/// This class is Iterator component
///
/// has three methods
/// * hasNext()
/// * next()
/// * currentItem()

abstract class HistoryIterator<T> {
  bool hasNext();
  void next();
  T currentItem();
}
