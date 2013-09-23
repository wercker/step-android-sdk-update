# Update the android sdk

Update the android sdk with the specified filter (required parameter).


# What's new

- easy update the android sdk

# Options

* `filter` (required) A comma separated list of items.

# Example

```yaml
build:
  steps:
    - flenter/android-sdk-update:
        filter: sysimg-18
```

# License

The MIT License (MIT)

Copyright (c) 2013 wercker

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
the Software, and to permit persons to whom the Software is furnished to do so,
subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

# Changelog

## 0.0.2

- removed ":" from environment variable

## 0.0.2-rc4
- fix: update environment variable with correct info

## 0.0.2-rc3

- fix: environment variable updated $ANDROID_UPDATE_FILTER

## 0.0.2-rc2

- fix: forgot to add then

## 0.0.2-rc1

- fix: fi forgotten
- *broken* : gives an error because of missing then

## 0.0.2-beta

- fix: FILTER parameter is now correctly handled
- *broken* : gives an error on missing fi.

## 0.0.2-alpha2

- `#!/usr/bin/expect` added to the expect script
- *broken* : installs all android packages.
- *broken* : also gives an error on missing fi.


## 0.0.2-alpha

- WERCKER_STEP_ROOT added as a fix for not found error.
- *broken*

## 0.0.1

- initial release *broken*
