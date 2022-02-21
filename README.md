# Password Dumb

A simple (but correct) Dart class to check if password is dumb, also can be use to generate strong password.


## Installation

This package requires the latest version of [Dart](https://www.dartlang.org/). You can download the latest and greatest [here](https://www.dartlang.org/tools/sdk#install).

### 1. Depend on it

Add this to your package's `pubspec.yaml` file:

```yaml
dependencies:
    password_dumb: '^2.0.1'
```


#### 2. Install it

You can install packages from the command line:

```bash
$ pub get
..
```

Alternatively, your editor might support pub. Check the docs for your editor to learn more.

#### 3. Import it

Now in your Dart code, you can use:

```Dart
import 'package:password_dumb/password_dumb.dart';
```

## Usage

Read the unit tests under `test`, or see code example below:

```Dart
void main() {

    var password = "12345678";

    assert(PasswordDumb.validate(password));
}
```

## Tips

You can also use this repo as a template for creating Dart packages, just clone the repo and start hacking :) 
