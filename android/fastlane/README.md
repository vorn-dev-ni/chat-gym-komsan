fastlane documentation
----

# Installation

Make sure you have the latest version of the Xcode command line tools installed:

```sh
xcode-select --install
```

For _fastlane_ installation instructions, see [Installing _fastlane_](https://docs.fastlane.tools/#installing-fastlane)

# Available Actions

### load_env

```sh
[bundle exec] fastlane load_env
```



----


## Android

### android test

```sh
[bundle exec] fastlane android test
```

Runs all the tests

### android beta

```sh
[bundle exec] fastlane android beta
```

Submit a new Beta Build to Crashlytics Beta

### android deploy

```sh
[bundle exec] fastlane android deploy
```

Deploy a new version to the Google Play

### android testlane

```sh
[bundle exec] fastlane android testlane
```

testing

### android generatekey

```sh
[bundle exec] fastlane android generatekey
```



### android devbuildRelease

```sh
[bundle exec] fastlane android devbuildRelease
```



### android stagingbuildRelease

```sh
[bundle exec] fastlane android stagingbuildRelease
```



### android prodbuildRelease

```sh
[bundle exec] fastlane android prodbuildRelease
```



### android flutter_build_apk_release

```sh
[bundle exec] fastlane android flutter_build_apk_release
```



### android increment_version

```sh
[bundle exec] fastlane android increment_version
```

Increment version code and version name, then build the app

### android staging_beta

```sh
[bundle exec] fastlane android staging_beta
```

Build and distribute APK for Staging

----

This README.md is auto-generated and will be re-generated every time [_fastlane_](https://fastlane.tools) is run.

More information about _fastlane_ can be found on [fastlane.tools](https://fastlane.tools).

The documentation of _fastlane_ can be found on [docs.fastlane.tools](https://docs.fastlane.tools).
