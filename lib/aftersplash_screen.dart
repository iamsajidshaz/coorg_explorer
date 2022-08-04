import 'package:coorg/onboading_screen.dart';
import 'package:flutter/material.dart';

class AfterSplashScreen extends StatefulWidget {
  const AfterSplashScreen({Key? key}) : super(key: key);

  @override
  State<AfterSplashScreen> createState() => _AfterSplashScreenState();
}

class _AfterSplashScreenState extends State<AfterSplashScreen> {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 250,
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 10,
                left: 20,
              ),
              child: const Text(
                "It's a Big World",
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 34,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 10,
                left: 20,
              ),
              child: const Text(
                "Out There,",
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 78,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 10,
                left: 20,
              ),
              child: const Text(
                "Go Explore",
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 78,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            const Expanded(child: SizedBox()),
            Container(
              alignment: Alignment.center,
              child: Column(children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const OnBoardingScreen()));
                  },
                  child: Container(
                    padding: const EdgeInsets.all(32),
                    alignment: Alignment.center,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                        textStyle: TextStyle(fontSize: 24),
                        minimumSize: Size.fromHeight(72),
                        shape: StadiumBorder(),
                      ),
                      child: isLoading
                          ? const CircularProgressIndicator(
                              color: Colors.white,
                            )
                          : const Text('Get Started'),
                      onPressed: () async {
                        if (isLoading) return;
                        setState(() {
                          isLoading = true;
                        });
                        await Future.delayed(const Duration(seconds: 5));
                        setState(() {
                          isLoading = false;
                        });

                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const OnBoardingScreen()));
                      },
                    ),
                  ),
                ),
                // ElevatedButton(
                //   onPressed: () {},
                //   child: Text('Get Started ->'),
                // ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Privacy Policy',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ]),
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
