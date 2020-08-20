# farn-action

FARN (Fastlane Android React Native) action to build your android app (APK/ AAB).

## Inputs

### `keystore`

**Required** base64 encoding of your android keystore.jks file.

### `keystore_password`

**Required** Password value of your android keystore.

### `keystore_alias`

**Required** Android keystore alias.

## Outputs

### `time`

The time we greeted you.

## Example usage

```yaml
name: build

on:
  push:
    branches: [testing]

jobs:
  build-android:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
        name: Checking out
      - uses: thewebops/farn-action@master
        name: Building andorid app
        with:
          keystore: ${{ secrets.ANDROID_KEYSTORE }}
          keystore_password: ${{ secrets.ANDROID_KEYSTORE_PASSWORD }}
          keystore_alias: \${{ secrets.ANDROID_KEYSTORE_ALIAS }}
          args: fastlane android build task:assemble
```
