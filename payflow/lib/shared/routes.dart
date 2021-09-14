enum Routes { splash, home, login }

extension RoutesExtension on Routes {
  String get name => toString().split('.').last;
}
