# protobuf 3.9.1 vendor libraries

The QTI vendor blobs in `vendor/motorola/{liber,sm6150-common}` are linked
against `libprotobuf-cpp-full-3.9.1.so` and `libprotobuf-cpp-lite-3.9.1.so`
(`libril-qc-hal-qmi.so`, the camera and sensors HALs, the neural networks HAL,
...).

Up to Android 16 these were supplied by
`prebuilts/misc/protobuf_vendorcompat`. Android 17 replaced that directory with
an arm-only protobuf 21.12 build, and LineageOS also excludes it from Soong
scanning, so the 3.9.1 libraries are no longer installed by the platform.

These binaries are the BSD-licensed AOSP prebuilts from
`prebuilts/misc/protobuf_vendorcompat` at tag `android-16.0.0_r2`, the last
release that shipped the 3.9.1 ABI. They are installed to
`/vendor/lib{,64}` by `common.mk`.
