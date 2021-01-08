// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Tests that Win32 API prototypes can be successfully loaded (i.e. that
// lookupFunction works for all the APIs generated)

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

@TestOn('windows')

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:test/test.dart';

import 'package:win32/win32.dart';

void main() {
  final ptr = COMObject.allocate().addressOf;

  final metadatadispenserex = IMetaDataDispenserEx(ptr);
  test('Can instantiate IMetaDataDispenserEx.SetOption', () {
    expect(metadatadispenserex.SetOption, isA<Function>());
  });
  test('Can instantiate IMetaDataDispenserEx.GetOption', () {
    expect(metadatadispenserex.GetOption, isA<Function>());
  });
  test('Can instantiate IMetaDataDispenserEx.OpenScopeOnITypeInfo', () {
    expect(metadatadispenserex.OpenScopeOnITypeInfo, isA<Function>());
  });
  test('Can instantiate IMetaDataDispenserEx.GetCORSystemDirectory', () {
    expect(metadatadispenserex.GetCORSystemDirectory, isA<Function>());
  });
  test('Can instantiate IMetaDataDispenserEx.FindAssembly', () {
    expect(metadatadispenserex.FindAssembly, isA<Function>());
  });
  test('Can instantiate IMetaDataDispenserEx.FindAssemblyModule', () {
    expect(metadatadispenserex.FindAssemblyModule, isA<Function>());
  });
  free(ptr);
}
