// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common structs used in the Win32 API.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';

import 'callbacks.g.dart';
import '../../guid.dart';
import '../../ui/keyboardandmouseinput/structs.g.dart';
import '../../foundation/structs.g.dart';

/// {@category Struct}
class HARDWAREINPUT extends Struct {
  @Uint32()
  external int uMsg;
  @Uint16()
  external int wParamL;
  @Uint16()
  external int wParamH;
}

/// {@category Struct}
class INPUT extends Struct {
  @Uint32()
  external int type;
  @Uint32()
  external int Anonymous;
}

/// {@category Struct}
class KEYBDINPUT extends Struct {
  @Uint16()
  external int wVk;
  @Uint16()
  external int wScan;
  @Uint32()
  external int dwFlags;
  @Uint32()
  external int time;
  @IntPtr()
  external int dwExtraInfo;
}

/// {@category Struct}
class LASTINPUTINFO extends Struct {
  @Uint32()
  external int cbSize;
  @Uint32()
  external int dwTime;
}

/// {@category Struct}
class MOUSEINPUT extends Struct {
  @Int32()
  external int dx;
  @Int32()
  external int dy;
  @Uint32()
  external int mouseData;
  @Uint32()
  external int dwFlags;
  @Uint32()
  external int time;
  @IntPtr()
  external int dwExtraInfo;
}

/// {@category Struct}
class MOUSEMOVEPOINT extends Struct {
  @Int32()
  external int x;
  @Int32()
  external int y;
  @Uint32()
  external int time;
  @IntPtr()
  external int dwExtraInfo;
}

/// {@category Struct}
class RAWHID extends Struct {
  @Uint32()
  external int dwSizeHid;
  @Uint32()
  external int dwCount;
  @Array(1)
  external Array<Uint8> bRawData;
}

/// {@category Struct}
class RAWINPUT extends Struct {
  external RAWINPUTHEADER header;
  @Uint32()
  external int data;
}

/// {@category Struct}
class RAWINPUTDEVICE extends Struct {
  @Uint16()
  external int usUsagePage;
  @Uint16()
  external int usUsage;
  @Uint32()
  external int dwFlags;
  @IntPtr()
  external int hwndTarget;
}

/// {@category Struct}
class RAWINPUTDEVICELIST extends Struct {
  @IntPtr()
  external int hDevice;
  @Uint32()
  external int dwType;
}

/// {@category Struct}
class RAWINPUTHEADER extends Struct {
  @Uint32()
  external int dwType;
  @Uint32()
  external int dwSize;
  @IntPtr()
  external int hDevice;
  @IntPtr()
  external int wParam;
}

/// {@category Struct}
class RAWKEYBOARD extends Struct {
  @Uint16()
  external int MakeCode;
  @Uint16()
  external int Flags;
  @Uint16()
  external int Reserved;
  @Uint16()
  external int VKey;
  @Uint32()
  external int Message;
  @Uint32()
  external int ExtraInformation;
}

/// {@category Struct}
class RAWMOUSE extends Struct {
  @Uint16()
  external int usFlags;
  @Uint32()
  external int Anonymous;
  @Uint32()
  external int ulRawButtons;
  @Int32()
  external int lLastX;
  @Int32()
  external int lLastY;
  @Uint32()
  external int ulExtraInformation;
}

/// {@category Struct}
class RID_DEVICE_INFO extends Struct {
  @Uint32()
  external int cbSize;
  @Uint32()
  external int dwType;
  @Uint32()
  external int Anonymous;
}

/// {@category Struct}
class RID_DEVICE_INFO_HID extends Struct {
  @Uint32()
  external int dwVendorId;
  @Uint32()
  external int dwProductId;
  @Uint32()
  external int dwVersionNumber;
  @Uint16()
  external int usUsagePage;
  @Uint16()
  external int usUsage;
}

/// {@category Struct}
class RID_DEVICE_INFO_KEYBOARD extends Struct {
  @Uint32()
  external int dwType;
  @Uint32()
  external int dwSubType;
  @Uint32()
  external int dwKeyboardMode;
  @Uint32()
  external int dwNumberOfFunctionKeys;
  @Uint32()
  external int dwNumberOfIndicators;
  @Uint32()
  external int dwNumberOfKeysTotal;
}

/// {@category Struct}
class RID_DEVICE_INFO_MOUSE extends Struct {
  @Uint32()
  external int dwId;
  @Uint32()
  external int dwNumberOfButtons;
  @Uint32()
  external int dwSampleRate;
  @Int32()
  external int fHasHorizontalWheel;
}

/// {@category Struct}
class TRACKMOUSEEVENT extends Struct {
  @Uint32()
  external int cbSize;
  @Uint32()
  external int dwFlags;
  @IntPtr()
  external int hwndTrack;
  @Uint32()
  external int dwHoverTime;
}
