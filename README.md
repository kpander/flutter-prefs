# Preferences wrapper class

Read/write simple global Flutter app preferences.

This is a ridiculously simple convenience wrapper around the Flutter [get_storage](https://pub.dev/packages/get_storage) package, created as a Flutter/Dart learning exercise.

It only implements the most minimal functionality of the `get_storage` package: read and write.


## Installation

Add the 'prefs' package to your `pubspec.yaml` file:

```
dependencies:
  prefs:
    git:
      url: git@github.com:kpander/flutter-prefs.git
```


## Usage

In your `main.dart` file, ensure you initialize the preferences object:

```
import 'package:prefs/prefs.dart';

void main() async { // <-- note async
  await Prefs.init(); // <-- init prefs
  runApp(const MyApp());
}
```

### Example: Save a value to the app preferences

```
const prefs_id = "sound-settings";

Map config = {
  "sound_enabled": true,
  "volume_level": 0.7,
};
Prefs.write(prefs_id, config);
```

### Example: Read an existing value from the app preferences

```
const prefs_id = "sound-settings";

Map config = Prefs.read(prefs_id);

print("Config setting for sound_enabled: ${config["sound_enabled"]});
```

If the given key (e.g., the `prefs_id` value above) doesn't exist, the result will be null.



## API

### Methods

#### Prefs.init() -> Future<void>

Initialize the preferences object.


#### Prefs.read(String key) -> dynamic

Return the value for the given `key`.

Returns `null` if nothing exists for the given key.


#### Prefs.write(String key, dynamic value) -> void

Write `value` into storage, under the name `key`.


