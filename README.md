Wardrobe AI - Ready-to-Upload Starter

This ZIP contains a minimal Flutter app skeleton ready to upload to GitHub and build with Codemagic.

What's inside:

- lib/main.dart  -> minimal demo app screen
- pubspec.yaml   -> dependencies
- assets/labels.txt and assets/model.tflite (placeholder)


IMPORTANT: Codemagic & Build Notes
----------------------------------
Codemagic expects a complete Flutter project with an Android folder. This ZIP intentionally includes only the Flutter source files
so you can upload to GitHub quickly. When Codemagic runs the build, if the Android/iOS folders are not present, you have two options:

Option A (recommended): Add a pre-build script in Codemagic to generate platform folders automatically:

  flutter pub get && flutter create .

- In Codemagic: when configuring your app, open the 'Build settings' or 'Build scripts' and add the above line as a pre-build script.
- This will run 'flutter create .' on the build machine and generate the necessary android/ and ios/ folders, then the build will continue.

Option B: Locally run 'flutter create .' on your machine (or Termux) before uploading to GitHub, so the repo already contains android/.


How to use:
1. Create a new GitHub repo (wardrobe_ai).
2. Upload the CONTENTS of this ZIP (lib/, pubspec.yaml, assets/, README.md) — not the ZIP file itself.
3. In Codemagic, connect your GitHub repo and set the pre-build script as above if Codemagic can't detect platforms.
4. Start the build (choose Android APK). After build completes, download the APK from Artifacts.

If you want, I can also generate a version that already contains android/ and ios/ folders (larger). Ask and I'll create it.
