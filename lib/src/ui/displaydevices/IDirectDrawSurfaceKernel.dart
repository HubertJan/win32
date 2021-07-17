// IDirectDrawSurfaceKernel.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../combase.dart';
import '../../constants.dart';
import '../../exceptions.dart';
import '../../macros.dart';
import '../../ole32.dart';
import '../../structs.dart';
import '../../utils.dart';

import '../../system/com/IUnknown.dart';

/// @nodoc
const IID_IDirectDrawSurfaceKernel = '{60755DA0-6A40-11D0-9B06-00A0C903A3B8}';

typedef _GetKernelHandle_Native = Int32 Function(
    Pointer obj, Pointer<IntPtr> param0);
typedef _GetKernelHandle_Dart = int Function(
    Pointer obj, Pointer<IntPtr> param0);

typedef _ReleaseKernelHandle_Native = Int32 Function(Pointer obj);
typedef _ReleaseKernelHandle_Dart = int Function(Pointer obj);

/// {@category Interface}
/// {@category com}
class IDirectDrawSurfaceKernel extends IUnknown {
  // vtable begins at 3, ends at 4

  IDirectDrawSurfaceKernel(Pointer<COMObject> ptr) : super(ptr);

  int GetKernelHandle(Pointer<IntPtr> param0) => ptr.ref.lpVtbl.value
      .elementAt(3)
      .cast<Pointer<NativeFunction<_GetKernelHandle_Native>>>()
      .value
      .asFunction<_GetKernelHandle_Dart>()(ptr.ref.lpVtbl, param0);

  int ReleaseKernelHandle() => ptr.ref.lpVtbl.value
      .elementAt(4)
      .cast<Pointer<NativeFunction<_ReleaseKernelHandle_Native>>>()
      .value
      .asFunction<_ReleaseKernelHandle_Dart>()(ptr.ref.lpVtbl);
}
