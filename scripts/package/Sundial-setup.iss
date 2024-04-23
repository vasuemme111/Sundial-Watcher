#define MyAppName "TTim"
#define MyAppVersion GetEnv('SD_VERSION')
#define MyAppPublisher "TTim Contributors"
#define MyAppURL "https://TTim.net/"
#define MyAppExeName "sd-qt.exe"
#define RootDir "..\.."
#define DistDir "..\..\dist"

#pragma verboselevel 9

[Setup]
AppId={{F226B8F4-3244-46E6-901D-0CE8035423E4}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL="https://github.com/TTim/TTim/issues"
AppUpdatesURL="https://github.com/TTim/TTim/releases"
DefaultDirName={autopf32}\{#MyAppName} ; Installs in Program Files (x86)
DisableDirPage=yes ; Hides directory selection page
PrivilegesRequired=lowest
PrivilegesRequiredOverridesAllowed=dialog
OutputDir={#DistDir}
OutputBaseFilename=TTim-setup
SetupIconFile="{#RootDir}\sd-qt\media\logo\logo.ico"
UninstallDisplayName={#MyAppName}
UninstallDisplayIcon={app}\{#MyAppExeName}
Compression=lzma
SolidCompression=yes
WizardStyle=modern

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
Source: "{#DistDir}\TTim\sd-qt.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#DistDir}\TTim\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs

[UninstallDelete]
Type: filesandordirs; Name: "{localappdata}\TTim"

[Icons]
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Comment: "TTim" ; Desktop icon always created
Name: "{userstartup}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Comment: "TTim" ; Startup entry always created

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

[InstallDelete]
Type: filesandordirs; Name: "{app}\"
