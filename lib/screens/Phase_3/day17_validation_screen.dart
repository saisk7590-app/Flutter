import 'package:flutter/material.dart';

class Day17ValidationScreen extends StatefulWidget {
  const Day17ValidationScreen({super.key});

  @override
  State<Day17ValidationScreen> createState() => _Day17ValidationScreenState();
}

class _Day17ValidationScreenState extends State<Day17ValidationScreen> {
  // ==============================
  // FORM KEY (controls validation)
  // ==============================
  final _formKey = GlobalKey<FormState>();

  // ==============================
  // TEXT CONTROLLERS
  // ==============================
  final TextEditingController nameController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  // ==============================
  // PASSWORD VISIBILITY STATE
  // ==============================
  bool isPasswordVisible = false;

  // ==============================
  // LOADING STATE (optional future use)
  // ==============================
  bool isLoading = false;

  // ==============================
  // SUBMIT FORM FUNCTION
  // ==============================
  void submitForm() {
    if (_formKey.currentState!.validate()) {
      setState(() {
        isLoading = true; // start loading
      });

      // fake delay (simulate API call)
      Future.delayed(const Duration(seconds: 1), () {
        if (!mounted) return;

        setState(() {
          isLoading = false; // stop loading
        });

        ScaffoldMessenger.of(
          context,
        ).showSnackBar(const SnackBar(content: Text("Login Successful ✅")));
      });
    }
  }

  // ==============================
  // CLEANUP CONTROLLERS
  // ==============================
  @override
  void dispose() {
    nameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Day 17 - Form Validation")),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Form(
          key: _formKey,

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              // ==========================
              // NAME FIELD
              // ==========================
              TextFormField(
                controller: nameController,
                decoration: const InputDecoration(
                  labelText: "Enter Name",
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return "Name cannot be empty";
                  }
                  return null;
                },
              ),

              const SizedBox(height: 20),

              // ==========================
              // PASSWORD FIELD + EYE ICON
              // ==========================
              TextFormField(
                controller: passwordController,

                // 🔑 hides / shows password
                obscureText: !isPasswordVisible,

                decoration: InputDecoration(
                  labelText: "Enter Password",
                  border: const OutlineInputBorder(),

                  // 👁️ SHOW / HIDE PASSWORD ICON
                  suffixIcon: IconButton(
                    icon: Icon(
                      isPasswordVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                    ),
                    onPressed: () {
                      setState(() {
                        isPasswordVisible = !isPasswordVisible;
                      });
                    },
                  ),
                ),

                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Password cannot be empty";
                  }
                  if (value.length < 6) {
                    return "Password must be at least 6 characters";
                  }
                  return null;
                },
              ),

              const SizedBox(height: 30),

              // ==========================
              // LOGIN BUTTON (WITH LOADING)
              // ==========================
              ElevatedButton(
                onPressed: isLoading ? null : submitForm,

                child: isLoading
                    ? const SizedBox(
                        height: 18,
                        width: 18,
                        child: CircularProgressIndicator(strokeWidth: 2),
                      )
                    : const Text("Login"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
