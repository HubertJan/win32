const excludedFunctions = <String>[
  // Relies on namespaces not imported yet
  'BroadcastSystemMessageEx', // system.systemservices
  'ChangeDisplaySettings', // ui.displaydevices
  'ChangeDisplaySettingsEx', // ui.displaydevices
  'CreateConsoleScreenBuffer', // security
  'CreateDC',
  'CreateIC',
  'EnumDisplaySettings',
  'EnumDisplaySettingsEx',
  'ExtCreateRegion', // system.systemservices
  'GetLogicalProcessorInformationEx', // system.systemservices
  'GetRegionData',
  'MessageBoxIndirect',
  'ResetDC', // ui.displaydevices
  'SetWinMetaFileBits',
  'UpdateLayeredWindow',
  'UpdateLayeredWindowIndirect',

  // Duplicates
  '_TrackMouseEvent',
];

const excludedStructs = <String>[
  // ANSI
  'Windows.Win32.Graphics.Gdi.EMRCREATECOLORSPACE',

  // Temporary
  'Windows.Win32.Graphics.Gdi.BITMAPV4HEADER', // ui.colorsystem
  'Windows.Win32.Graphics.Gdi.BITMAPV5HEADER', // ui.colorsystem
  'Windows.Win32.Graphics.Gdi.DISPLAYCONFIG_GET_ADVANCED_COLOR_INFO', // ui.displaydevices
  'Windows.Win32.Graphics.Gdi.DISPLAYCONFIG_SDR_WHITE_LEVEL', // ui.displaydevices
  'Windows.Win32.Graphics.Gdi.DISPLAYCONFIG_SET_ADVANCED_COLOR_STATE', // ui.displaydevices
  'Windows.Win32.Graphics.Gdi.EMRCREATECOLORSPACEW', // ui.colorsystem
  'Windows.Win32.Graphics.Gdi.EMRPIXELFORMAT', // opengl
  'Windows.Win32.Graphics.Gdi.ENUMTEXTMETRICW', // globalization
  'Windows.Win32.Graphics.Gdi.NEWTEXTMETRICEXW', // globalization
  'Windows.Win32.UI.WindowsAndMessaging.BSMINFO', // system.systemservices
  'Windows.Win32.UI.WindowsAndMessaging.MSGBOXPARAMSW', // ui.shell
  'Windows.Win32.UI.WindowsAndMessaging.OFNOTIFYEXW', // ui.controls
  'Windows.Win32.UI.WindowsAndMessaging.OFNOTIFYW', // ui.controls
  'Windows.Win32.Media.Multimedia.TIMEREVENT', // system.systemservices
  'Windows.Win32.Media.Multimedia.joyreghwconfig_tag', // devices.humaninterfacedevice
  ''
];

const excludedCallbacks = <String>[
  'Windows.Win32.Graphics.Gdi.LPFNDEVCAPS',
  'Windows.Win32.Graphics.Gdi.LPFNDEVMODE',
  'Windows.Win32.UI.WindowsAndMessaging.MSGBOXCALLBACK', // ui.shell
];

const excludedImports = <String>[
  'globalization/structs.g.dart',
  'graphics/opengl/structs.g.dart',
  'media/audio/coreaudio/structs.g.dart',
  'devices/humaninterfacedevice/structs.g.dart',
  'storage/structuredstorage/structs.g.dart',
  'system/com/structs.g.dart',
  'system/dataexchange/structs.g.dart',
  'system/stationsanddesktops/structs.g.dart',
  'system/systemservices/structs.g.dart',
  'ui/colorsystem/structs.g.dart',
  'ui/controls/callbacks.g.dart',
  'ui/controls/structs.g.dart',
  'ui/displaydevices/structs.g.dart',
  'ui/textservices/structs.g.dart',
];

const excludedComInterfaces = <String>[
  'IAVIEditStream', 'IAVIFile', 'IAVIPersistFile', 'IAVIStream',
  'IAVIStreaming', 'IGetFrame', // media.multimedia

  '_IManipulationEvents', 'IInertiaProcessor',
  'IManipulationProcesor', // touchinput

  'IPrintDialogCallback' /* simplest */,
  'IPrintDialogServices', // windowsandmessaging
];
