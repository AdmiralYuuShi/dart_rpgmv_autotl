extension IntExtensions on int {
  int get msToSec => this ~/ Duration.millisecondsPerSecond;
}
