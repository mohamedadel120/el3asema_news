import 'package:el3asema_news/core/const/imports.dart';
import 'package:el3asema_news/core/routes/routes_cosnt.dart';
import 'package:el3asema_news/core/shared_widget/custom_text_form.dart';

class SignUpScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  SignUpScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: LayoutBuilder(builder: (context, constraints) {
          return SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                SizedBox(height: constraints.maxHeight * 0.08),
                Image.asset(
                  "assets/images/logo.png",
                  height: 100,
                ),
                SizedBox(height: constraints.maxHeight * 0.08),
                Text(
                  "Sign Up",
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: constraints.maxHeight * 0.05),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      // name form field
                      CustomFormField(
                        hintText: 'Name',
                        controller: nameController,
                      ),
                      //phone form field
                      CustomFormField(
                        hintText: 'Phone',
                        controller: phoneController,
                        keyboardType: TextInputType.number,
                        suffixIcon: const Icon(Icons.phone),
                      ),
                      // password form field
                      CustomFormField(
                        hintText: 'Password',
                        controller: passwordController,
                        obscureText: true,
                        suffixIcon: const Icon(Icons.visibility),
                      ),
                      // confirm password form field
                      CustomFormField(
                        hintText: 'Confirm Password',
                        controller: confirmPasswordController,
                        obscureText: true,
                        suffixIcon: const Icon(Icons.visibility),
                      ),
                      SizedBox(height: constraints.maxHeight * 0.019),
                      // country
                      DropdownButtonFormField(
                        items: countries,
                        icon: const Icon(Icons.expand_more),
                        onSaved: (country) {
                          // save it
                        },
                        onChanged: (value) {},
                        decoration: InputDecoration(
                          hintText: 'Country',
                          filled: true,
                          fillColor: Colors.grey[200],
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 16.0 * 1.5, vertical: 16.0),
                          border: const OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              _formKey.currentState!.save();
                              Navigator.popAndPushNamed(
                                  context, Routes.otpVerifyScreen);
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            backgroundColor: const Color(0xFF000000),
                            foregroundColor: Colors.white,
                            minimumSize: const Size(double.infinity, 48),
                            shape: const StadiumBorder(),
                          ),
                          child: const Text("Sign Up"),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text.rich(
                          const TextSpan(
                            text: "Already have an account? ",
                            children: [
                              TextSpan(
                                text: "Sign in",
                                style: TextStyle(color: Color(0xFF000000)),
                              ),
                            ],
                          ),
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    color: Theme.of(context)
                                        .textTheme
                                        .bodyLarge!
                                        .color!
                                        .withOpacity(0.64),
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}

// only for demo
List<DropdownMenuItem<String>>? countries = [
  "Bangladesh",
  "Switzerland",
  'Canada',
  'Japan',
  'Germany',
  'Australia',
  'Sweden',
].map<DropdownMenuItem<String>>((String value) {
  return DropdownMenuItem<String>(value: value, child: Text(value));
}).toList();