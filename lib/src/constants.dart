import 'dart:ffi';
import 'package:ffi/ffi.dart';

///////////////
// CONSTANTS //
///////////////

const NULL = 0;

// WindowStyle constants
const WS_BORDER = 0x00800000;
const WS_CAPTION = 0x00C00000;
const WS_CHILD = 0x40000000;
const WS_CHILDWINDOW = 0x40000000;
const WS_CLIPCHILDREN = 0x02000000;
const WS_CLIPSIBLINGS = 0x04000000;
const WS_DISABLED = 0x08000000;
const WS_DLGFRAME = 0x00400000;
const WS_GROUP = 0x00020000;
const WS_HSCROLL = 0x00100000;
const WS_ICONIC = 0x20000000;
const WS_MAXIMIZE = 0x01000000;
const WS_MAXIMIZEBOX = 0x00010000;
const WS_MINIMIZE = 0x20000000;
const WS_MINIMIZEBOX = 0x00020000;
const WS_OVERLAPPED = 0x00000000;
const WS_OVERLAPPEDWINDOW = WS_OVERLAPPED |
    WS_CAPTION |
    WS_SYSMENU |
    WS_THICKFRAME |
    WS_MINIMIZEBOX |
    WS_MAXIMIZEBOX;
const WS_POPUP = 0x80000000;
const WS_POPUPWINDOW = WS_POPUP | WS_BORDER | WS_SYSMENU;
const WS_SIZEBOX = 0x00040000;
const WS_SYSMENU = 0x00080000;
const WS_TABSTOP = 0x00010000;
const WS_THICKFRAME = 0x00040000;
const WS_TILED = 0x00000000;
const WS_TILEDWINDOW = WS_OVERLAPPED |
    WS_CAPTION |
    WS_SYSMENU |
    WS_THICKFRAME |
    WS_MINIMIZEBOX |
    WS_MAXIMIZEBOX;
const WS_VISIBLE = 0x10000000;
const WS_VSCROLL = 0x00200000;

// WindowMessage constants
const WM_NULL = 0x0000;
const WM_CREATE = 0x0001;
const WM_DESTROY = 0x0002;
const WM_MOVE = 0x0003;
const WM_SIZE = 0x0005;
const WM_ACTIVATE = 0x0006;
const WM_SETFOCUS = 0x0007;
const WM_KILLFOCUS = 0x0008;
const WM_ENABLE = 0x000A;
const WM_SETREDRAW = 0x000B;
const WM_SETTEXT = 0x000C;
const WM_GETTEXT = 0x000D;
const WM_GETTEXTLENGTH = 0x000E;
const WM_PAINT = 0x000F;
const WM_CLOSE = 0x0010;
const WM_QUIT = 0x0012;
const WM_ERASEBKGND = 0x0014;
const WM_SYSCOLORCHANGE = 0x0015;
const WM_SHOWWINDOW = 0x0018;
const WM_WININICHANGE = 0x001A;
const WM_SETTINGCHANGE = WM_WININICHANGE;
const WM_DEVMODECHANGE = 0x001B;
const WM_ACTIVATEAPP = 0x001C;
const WM_FONTCHANGE = 0x001D;
const WM_TIMECHANGE = 0x001E;
const WM_CANCELMODE = 0x001F;
const WM_SETCURSOR = 0x0020;
const WM_MOUSEACTIVATE = 0x0021;
const WM_CHILDACTIVATE = 0x0022;
const WM_QUEUESYNC = 0x0023;
const WM_GETMINMAXINFO = 0x0024;
const WM_KEYFIRST = 0x0100;
const WM_KEYDOWN = 0x0100;
const WM_KEYUP = 0x0101;
const WM_CHAR = 0x0102;
const WM_DEADCHAR = 0x0103;
const WM_SYSKEYDOWN = 0x0104;
const WM_SYSKEYUP = 0x0105;
const WM_SYSCHAR = 0x0106;
const WM_SYSDEADCHAR = 0x0107;
const WM_INITDIALOG = 0x0110;
const WM_COMMAND = 0x0111;
const WM_SYSCOMMAND = 0x0112;
const WM_TIMER = 0x0113;
const WM_HSCROLL = 0x0114;
const WM_VSCROLL = 0x0115;

// ShowWindow constants
const SW_HIDE = 0;
const SW_SHOWNORMAL = 1;
const SW_SHOWMINIMIZED = 2;
const SW_MAXIMIZE = 3;
const SW_SHOWMAXIMIZED = 3;
const SW_SHOWNOACTIVATE = 4;
const SW_SHOW = 5;
const SW_MINIMIZE = 6;
const SW_SHOWMINNOACTIVE = 7;
const SW_SHOWNA = 8;
const SW_RESTORE = 9;
const SW_SHOWDEFAULT = 10;
const SW_FORCEMINIMIZE = 11;

// DrawText constants
const DT_TOP = 0x000;
const DT_LEFT = 0x000;
const DT_CENTER = 0x001;
const DT_RIGHT = 0x002;
const DT_VCENTER = 0x004;
const DT_BOTTOM = 0x008;
const DT_WORDBREAK = 0x0010;
const DT_SINGLELINE = 0x0020;

// Class styles
const CS_VREDRAW = 0x0001;
const CS_HREDRAW = 0x0002;
const CS_DBLCLKS = 0x0008;
const CS_OWNDC = 0x0020;
const CS_CLASSDC = 0x0040;
const CS_PARENTDC = 0x0080;
const CS_NOCLOSE = 0x0200;
const CS_SAVEBITS = 0x0800;
const CS_BYTEALIGNCLIENT = 0x1000;
const CS_BYTEALIGNWINDOW = 0x2000;
const CS_GLOBALCLASS = 0x4000;
const CS_IME = 0x00010000;
const CS_DROPSHADOW = 0x00020000;

// ControlWord constant
const CW_USEDEFAULT = 0x80000000;

// System colors
const COLOR_SCROLLBAR = 0;
const COLOR_BACKGROUND = 1;
const COLOR_ACTIVECAPTION = 2;
const COLOR_INACTIVECAPTION = 3;
const COLOR_MENU = 4;
const COLOR_WINDOW = 5;
const COLOR_WINDOWFRAME = 6;
const COLOR_MENUTEXT = 7;
const COLOR_WINDOWTEXT = 8;
const COLOR_CAPTIONTEXT = 9;
const COLOR_ACTIVEBORDER = 10;
const COLOR_INACTIVEBORDER = 11;
const COLOR_APPWORKSPACE = 12;
const COLOR_HIGHLIGHT = 13;
const COLOR_HIGHLIGHTTEXT = 14;
const COLOR_BTNFACE = 15;
const COLOR_BTNSHADOW = 16;
const COLOR_GRAYTEXT = 17;
const COLOR_BTNTEXT = 18;
const COLOR_INACTIVECAPTIONTEXT = 19;
const COLOR_BTNHIGHLIGHT = 20;

// Stock objects
const WHITE_BRUSH = 0;
const LTGRAY_BRUSH = 1;
const GRAY_BRUSH = 2;
const DKGRAY_BRUSH = 3;
const BLACK_BRUSH = 4;
const NULL_BRUSH = 5;
const HOLLOW_BRUSH = NULL_BRUSH;
const WHITE_PEN = 6;
const BLACK_PEN = 7;

final IDI_APPLICATION = Pointer<Utf16>.fromAddress(32512);
final IDI_HAND = Pointer<Utf16>.fromAddress(32513);
final IDI_QUESTION = Pointer<Utf16>.fromAddress(32514);
final IDI_EXCLAMATION = Pointer<Utf16>.fromAddress(32515);
final IDI_ASTERISK = Pointer<Utf16>.fromAddress(32516);
final IDI_WINLOGO = Pointer<Utf16>.fromAddress(32517);
final IDI_SHIELD = Pointer<Utf16>.fromAddress(32518);
final IDI_WARNING = IDI_EXCLAMATION;
final IDI_ERROR = IDI_HAND;
final IDI_INFORMATION = IDI_ASTERISK;

// Stock cursors
final IDC_ARROW = Pointer<Utf16>.fromAddress(32512);
final IDC_IBEAM = Pointer<Utf16>.fromAddress(32513);
final IDC_WAIT = Pointer<Utf16>.fromAddress(32514);
final IDC_CROSS = Pointer<Utf16>.fromAddress(32515);
final IDC_UPARROW = Pointer<Utf16>.fromAddress(32516);

// MessageBox flags
const MB_OK = 0x00000000;
const MB_OKCANCEL = 0x00000001;
const MB_ABORTRETRYIGNORE = 0x00000002;
const MB_YESNOCANCEL = 0x00000003;
const MB_YESNO = 0x00000004;
const MB_RETRYCANCEL = 0x00000005;
const MB_CANCELTRYCONTINUE = 0x00000006;
const MB_ICONHAND = 0x00000010;
const MB_ICONQUESTION = 0x00000020;
const MB_ICONEXCLAMATION = 0x00000030;
const MB_ICONASTERISK = 0x00000040;
const MB_USERICON = 0x00000080;
const MB_ICONWARNING = MB_ICONEXCLAMATION;
const MB_ICONERROR = MB_ICONHAND;
const MB_ICONINFORMATION = MB_ICONASTERISK;
const MB_ICONSTOP = MB_ICONHAND;
const MB_DEFBUTTON1 = 0x00000000;
const MB_DEFBUTTON2 = 0x00000100;
const MB_DEFBUTTON3 = 0x00000200;
const MB_DEFBUTTON4 = 0x00000300;
const MB_APPLMODAL = 0x00000000;
const MB_SYSTEMMODAL = 0x00001000;
const MB_TASKMODAL = 0x00002000;
const MB_HELP = 0x00004000;
const MB_NOFOCUS = 0x00008000;
const MB_SETFOREGROUND = 0x00010000;
const MB_DEFAULT_DESKTOP_ONLY = 0x00020000;
const MB_TOPMOST = 0x00040000;
const MB_RIGHT = 0x00080000;
const MB_RTLREADING = 0x00100000;
const MB_SERVICE_NOTIFICATION = 0x00200000;

// Mapping modes
const MM_TEXT = 1;
const MM_LOMETRIC = 2;
const MM_HIMETRIC = 3;
const MM_LOENGLISH = 4;
const MM_HIENGLISH = 5;
const MM_TWIPS = 6;
const MM_ISOTROPIC = 7;
const MM_ANISOTROPIC = 8;
const MM_MIN = MM_TEXT;
const MM_MAX = MM_ANISOTROPIC;
const MM_MAX_FIXEDSCALE = MM_TWIPS;

// Background modes
const TRANSPARENT = 1;
const OPAQUE = 2;
const BKMODE_LAST = 2;

// Dialog box command IDs
const IDOK = 1;
const IDCANCEL = 2;
const IDABORT = 3;
const IDRETRY = 4;
const IDIGNORE = 5;
const IDYES = 6;
const IDNO = 7;
const IDCLOSE = 8;
const IDHELP = 9;
const IDTRYAGAIN = 10;
const IDCONTINUE = 11;
const IDTIMEOUT = 32000;

// Virtual keys
const VK_LBUTTON = 0x01;
const VK_RBUTTON = 0x02;
const VK_CANCEL = 0x03;
const VK_MBUTTON = 0x04;
const VK_XBUTTON1 = 0x05;
const VK_XBUTTON2 = 0x06;
const VK_BACK = 0x08;
const VK_TAB = 0x09;
const VK_CLEAR = 0x0C;
const VK_RETURN = 0x0D;
const VK_SHIFT = 0x10;
const VK_CONTROL = 0x11;
const VK_MENU = 0x12;
const VK_PAUSE = 0x13;
const VK_CAPITAL = 0x14;
const VK_KANA = 0x15;
const VK_HANGEUL = 0x15;
const VK_HANGUL = 0x15;
const VK_JUNJA = 0x17;
const VK_FINAL = 0x18;
const VK_HANJA = 0x19;
const VK_KANJI = 0x19;
const VK_ESCAPE = 0x1B;
const VK_CONVERT = 0x1C;
const VK_NONCONVERT = 0x1D;
const VK_ACCEPT = 0x1E;
const VK_MODECHANGE = 0x1F;
const VK_SPACE = 0x20;
const VK_PRIOR = 0x21;
const VK_NEXT = 0x22;
const VK_END = 0x23;
const VK_HOME = 0x24;
const VK_LEFT = 0x25;
const VK_UP = 0x26;
const VK_RIGHT = 0x27;
const VK_DOWN = 0x28;
const VK_SELECT = 0x29;
const VK_PRINT = 0x2A;
const VK_EXECUTE = 0x2B;
const VK_SNAPSHOT = 0x2C;
const VK_INSERT = 0x2D;
const VK_DELETE = 0x2E;
const VK_HELP = 0x2F;
const VK_LWIN = 0x5B;
const VK_RWIN = 0x5C;
const VK_APPS = 0x5D;
const VK_SLEEP = 0x5F;
const VK_NUMPAD0 = 0x60;
const VK_NUMPAD1 = 0x61;
const VK_NUMPAD2 = 0x62;
const VK_NUMPAD3 = 0x63;
const VK_NUMPAD4 = 0x64;
const VK_NUMPAD5 = 0x65;
const VK_NUMPAD6 = 0x66;
const VK_NUMPAD7 = 0x67;
const VK_NUMPAD8 = 0x68;
const VK_NUMPAD9 = 0x69;
const VK_MULTIPLY = 0x6A;
const VK_ADD = 0x6B;
const VK_SEPARATOR = 0x6C;
const VK_SUBTRACT = 0x6D;
const VK_DECIMAL = 0x6E;
const VK_DIVIDE = 0x6F;
const VK_F1 = 0x70;
const VK_F2 = 0x71;
const VK_F3 = 0x72;
const VK_F4 = 0x73;
const VK_F5 = 0x74;
const VK_F6 = 0x75;
const VK_F7 = 0x76;
const VK_F8 = 0x77;
const VK_F9 = 0x78;
const VK_F10 = 0x79;
const VK_F11 = 0x7A;
const VK_F12 = 0x7B;
const VK_F13 = 0x7C;
const VK_F14 = 0x7D;
const VK_F15 = 0x7E;
const VK_F16 = 0x7F;
const VK_F17 = 0x80;
const VK_F18 = 0x81;
const VK_F19 = 0x82;
const VK_F20 = 0x83;
const VK_F21 = 0x84;
const VK_F22 = 0x85;
const VK_F23 = 0x86;
const VK_F24 = 0x87;
const VK_NUMLOCK = 0x90;
const VK_SCROLL = 0x91;
const VK_LSHIFT = 0xA0;
const VK_RSHIFT = 0xA1;
const VK_LCONTROL = 0xA2;
const VK_RCONTROL = 0xA3;
const VK_LMENU = 0xA4;
const VK_RMENU = 0xA5;
const VK_BROWSER_BACK = 0xA6;
const VK_BROWSER_FORWARD = 0xA7;
const VK_BROWSER_REFRESH = 0xA8;
const VK_BROWSER_STOP = 0xA9;
const VK_BROWSER_SEARCH = 0xAA;
const VK_BROWSER_FAVORITES = 0xAB;
const VK_BROWSER_HOME = 0xAC;
const VK_VOLUME_MUTE = 0xAD;
const VK_VOLUME_DOWN = 0xAE;
const VK_VOLUME_UP = 0xAF;
const VK_MEDIA_NEXT_TRACK = 0xB0;
const VK_MEDIA_PREV_TRACK = 0xB1;
const VK_MEDIA_STOP = 0xB2;
const VK_MEDIA_PLAY_PAUSE = 0xB3;
const VK_LAUNCH_MAIL = 0xB4;
const VK_LAUNCH_MEDIA_SELECT = 0xB5;
const VK_LAUNCH_APP1 = 0xB6;
const VK_LAUNCH_APP2 = 0xB7;
const VK_OEM_1 = 0xBA;
const VK_OEM_PLUS = 0xBB;
const VK_OEM_COMMA = 0xBC;
const VK_OEM_MINUS = 0xBD;
const VK_OEM_PERIOD = 0xBE;
const VK_OEM_2 = 0xBF;
const VK_OEM_3 = 0xC0;
const VK_OEM_4 = 0xDB;
const VK_OEM_5 = 0xDC;
const VK_OEM_6 = 0xDD;
const VK_OEM_7 = 0xDE;
const VK_OEM_8 = 0xDF;
const VK_OEM_AX = 0xE1;
const VK_OEM_102 = 0xE2;
const VK_ICO_HELP = 0xE3;
const VK_ICO_00 = 0xE4;
const VK_PROCESSKEY = 0xE5;
const VK_ICO_CLEAR = 0xE6;
const VK_PACKET = 0xE7;

// *** CONSOLE APIS ***

// Handles
const STD_INPUT_HANDLE = -10;
const STD_OUTPUT_HANDLE = -11;
const STD_ERROR_HANDLE = -12;

// input flags
const ENABLE_ECHO_INPUT = 0x0004;
const ENABLE_EXTENDED_FLAGS = 0x0080;
const ENABLE_INSERT_MODE = 0x0020;
const ENABLE_LINE_INPUT = 0x0002;
const ENABLE_MOUSE_INPUT = 0x0010;
const ENABLE_PROCESSED_INPUT = 0x0001;
const ENABLE_QUICK_EDIT_MODE = 0x0040;
const ENABLE_WINDOW_INPUT = 0x0008;
const ENABLE_VIRTUAL_TERMINAL_INPUT = 0x0200;

// output flags
const ENABLE_PROCESSED_OUTPUT = 0x0001;
const ENABLE_WRAP_AT_EOL_OUTPUT = 0x0002;
const ENABLE_VIRTUAL_TERMINAL_PROCESSING = 0x0004;
const DISABLE_NEWLINE_AUTO_RETURN = 0x0008;
const ENABLE_LVB_GRID_WORLDWIDE = 0x0010;
