import '../../core.dart';
import '../dependencies/flutter_dependencies.dart';

class PageNotFound extends StatelessWidget {
  const PageNotFound({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Page not found!",
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 24),
            TextButton.icon(
              onPressed: () => NavigatorService().navigateTo('/home'),
              icon: const Icon(Icons.arrow_left),
              label: const Text("Go back", style: TextStyle(fontSize: 16)),
            )
          ],
        ),
      ),
    );
  }
}
