; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!
; copy english version sigraph.dll   to exe dir changed 09/06/16
[Setup]
AppName=MicProbe
AppVerName=MicProbe ver 16.11.07.2
OutputBaseFilename=MicProbe-16.11.07.2
AppPublisher=NT-SPb Inc.
AppPublisherURL=http://www.ntspb.ru
AppSupportURL=http://www.ntspb.ru
AppUpdatesURL=http://www.ntspb.ru
DefaultDirName=C:\NT-SPb\MicProbe
DefaultGroupName=NT-SPb
AllowNoIcons=yes
WizardImageFile=data\screen.bmp
ChangesAssociations=yes
OutputDir=output\full
PrivilegesRequired=admin
WindowResizable=yes
WizardStyle=modern
ShowLanguageDialog=yes
;WizardSmallImageFile=mysmallimage.bmp

[Languages]
Name: "en"; MessagesFile: "compiler:Default.isl"
;Name: "ru"; MessagesFile: "compiler:Languages\russian.isl"

[Tasks]
; NOTE: The following entry contains English phrases ("Create a desktop icon" and "Additional icons"). You are free to translate them into another language if required.
Name: "desktopicon"; Description: "Create a &desktop icon"; GroupDescription: "Additional icons:"
; NOTE: The following entry contains English phrases ("Create a Quick Launch icon" and "Additional icons"). You are free to translate them into another language if required.
Name: "quicklaunchicon"; Description: "Create a &Quick Launch icon"; GroupDescription: "Additional icons:"; Flags: unchecked
[Dirs]
;Name:"{commonappdata}\nanoeducator"
 Name:"{commondocs}\MicProbe"
 Name:"{userdocs}\MicProbe\Temp\"
 Name:"{userdocs}\MicProbe\Work\"
; Name:"(userappdata)\Temp"                                                                                        ;
 Name:"{app}\Oscilloscope"
; Name:"(userappdata)\Work"
 Name:"{app}\FONTS"
 Name:"{commondocs}\MicProbe"
 Name:"{commondocs}\MicProbe\Gallery"
 Name:"{commondocs}\MicProbe\Animation"
 Name:"{commondocs}\MicProbe\Video"
 Name:"{commondocs}\MicProbe\Docs\Rus"
 Name:"{commondocs}\MicProbe\Docs\Eng"
 Name:"{commondocs}\MicProbe\Labs\Rus"
 Name:"{commondocs}\MicProbe\Labs\Eng"
 Name:"{commondocs}\MicProbe\FAQ\Rus"
 Name:"{commondocs}\MicProbe\FAQ\Eng"
 Name:"{commondocs}\MicProbe\Reporttmpl\Rus"
 Name:"{commondocs}\MicProbe\Reporttmpl\Eng"
 Name:"{app}\VCredistr"
 Name:"{app}\ImageAnalysis"
 Name:"{app}\PowerPointViewer"
 Name:"{app}\AcrobatReader"
 Name:"{app}\Scripts"
 Name:"{app}\Data"
 Name:"{app}\Data\Rus"
 Name:"{app}\Data\Eng"
 Name:"{app}\javabin"
 Name:"{app}\scheme"
 Name:"{app}\ScannerIniDBase"
 Name:"{app}\DemoData"
 Name:"{app}\DemoData\stm"
 Name:"{app}\DemoData\sfm"
 Name:"{app}\Reporttmpl\Rus"
 Name:"{app}\Reporttmpl\Eng"
 Name:"{userappdata}\MicProbe"
 Name:"{userappdata}\MicProbe\Data"
 Name:"{userappdata}\MicProbe\Reporttmpl\Rus"
 Name:"{userappdata}\MicProbe\Reporttmpl\Eng"
[Files]
Source: "MicProbe.exe";   DestDir: "{app}"; Flags: ignoreversion
Source: "WHATNEW.TXT";   DestDir: "{app}"; Flags: ignoreversion
Source: "*.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "output\Image Analysis\*.exe"; DestDir: "{app}\ImageAnalysis"; Flags: ignoreversion
Source: "InterfaceMicProbe.ini"; DestDir: "{app}"; DestName: "Interface.ini"; Flags: ignoreversion;
Source: "SPMConfig.ini"; DestDir: "{app}"; Flags: ignoreversion;
Source: "SPMConfigDef.ini"; DestDir: "{app}"; Flags: ignoreversion;
Source: "SPMOSC.ini";   DestDir: "{userappdata}\MicProbe"; Flags: ignoreversion;
Source: "SPMPID.ini";   DestDir: "{userappdata}\MicProbe"; Flags: ignoreversion;
Source: "SPMvideo.ini"; DestDir: "{userappdata}\MicProbe"; Flags: ignoreversion;
;Source: "SPMupdates.ini"; DestDir: "{userappdata}\nanoeducator"; Flags: ignoreversion;
Source: "SPMConfigUsersMicProbe.ini";    DestDir: "{userappdata}\MicProbe"; DestName:"SPMconfigUsers.ini";    Flags: ignoreversion;
Source: "SPMConfigDefUsersMicProbe.ini"; DestDir: "{app}"; DestName:"SPMconfigDefUsers.ini"; Flags: ignoreversion;
;Source: "SPMScanner.ini"; DestDir: "{userappdata}\MicProbe"; Flags: ignoreversion;
;Source: "SPMScannerDef.ini"; DestDir: "{app}"; Flags: ignoreversion;
;Source: "SPMScannerY.ini"; DestDir: "{userappdata}\MicProbe"; Flags: ignoreversion;
;Source: "SPMScannerYDef.ini"; DestDir: "{app}"; Flags: ignoreversion;
Source: "SPMPalettes.ini"; DestDir: "{userappdata}\MicProbe"; Flags: ignoreversion;
Source: "SPMPalettesDef.ini"; DestDir: "{app}"; Flags: ignoreversion;
Source: "ScannerIniDBase\*.*"; DestDir: "{app}\ScannerIniDBase"; Flags: ignoreversion recursesubdirs
Source: "oscilloscope\*.*"; DestDir: "{app}\oscilloscope"; Flags: ignoreversion recursesubdirs;
; copy english version sigraph.dll   to exe dir changed 09/06/16
Source: "oscilloscope\*.dll"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs;        
Source: "javabin\*.jar";DestDir: "{app}\javabin"; Flags: ignoreversion recursesubdirs;
Source: "scheme\*.bin"; DestDir: "{app}\scheme"; Flags: ignoreversion recursesubdirs;
Source: "data\*.*";     DestDir: "{app}\data"; Flags: ignoreversion;
Source: "data\Rus\*.*"; DestDir: "{app}\data\Rus"; Flags: skipifsourcedoesntexist;
Source: "data\Eng\*.*"; DestDir: "{app}\data\Eng"; Flags: skipifsourcedoesntexist;
Source: "Demodata\*.*"; DestDir: "{app}\Demodata"; Flags:  ignoreversion    recursesubdirs;
Source: "d:\ntspbprojects\nanoeduprojects\CommonData\help\MicProbe\rus\*.chm";   DestDir: "{app}"; Flags: ignoreversion;
Source: "d:\ntspbprojects\nanoeduprojects\CommonData\help\MicProbe\eng\*.chm";   DestDir: "{app}"; Flags: ignoreversion;
Source: "d:\ntspbprojects\nanoeduprojects\CommonData\VCredistr\*.*"; DestDir: "{app}\VCRedistr"; Flags: ignoreversion recursesubdirs;
Source: "d:\ntspbprojects\nanoeduprojects\CommonData\HardWareSoft\*.*"; DestDir: "{app}\HardwareSoft"; Flags: ignoreversion recursesubdirs;
Source: "d:\ntspbprojects\nanoeduprojects\CommonData\gallery\*.*";  DestDir: "{commondocs}\MicProbe\gallery"; Flags: ignoreversion    recursesubdirs
Source: "d:\ntspbprojects\nanoeduprojects\CommonData\animation\*.*";DestDir: "{commondocs}\MicProbe\animation"; Flags: ignoreversion ;
Source: "d:\ntspbprojects\nanoeduprojects\CommonData\docs\MicProbe\*.pdf";   DestDir: "{commondocs}\MicProbe\docs\"; Flags: ignoreversion    recursesubdirs;
;Source: "d:\ntspbprojects\nanoeduprojects\CommonData\labs\MicProbe\*.pdf";   DestDir: "{commondocs}\MicProbe\labs\"; Flags: ignoreversion    recursesubdirs;
;Source: "d:\ntspbprojects\nanoeduprojects\CommonData\labs\MicProbe\*.tmpl";  DestDir: "{commondocs}\MicProbe\labs\"; Flags: ignoreversion    recursesubdirs
Source: "d:\ntspbprojects\nanoeduprojects\CommonData\FAQ\MicProbe\*.pdf";    DestDir: "{commondocs}\MicProbe\FAQ\";  Flags: ignoreversion    recursesubdirs
Source: "d:\ntspbprojects\nanoeduprojects\CommonData\Reporttmpl\*.*"; DestDir: "{commondocs}\MicProbe\Reporttmpl";   Flags: ignoreversion    recursesubdirs;
Source: "d:\ntspbprojects\nanoeduprojects\CommonData\FONTS\*.*"; DestDir: "{app}\FONTS"; Flags: ignoreversion
Source: "d:\ntspbprojects\nanoeduprojects\CommonData\flashplayer\*.*"; DestDir: "{app}\flashplayer"; Flags: ignoreversion
Source: "d:\ntspbprojects\nanoeduprojects\CommonData\AcrobatReader\*.*"; DestDir: "{app}\AcrobatReader"; Flags: ignoreversion recursesubdirs;
;Source: "d:\ntspbprojects\MicProbe\CommonData\video\*.*"; DestDir: "{commondocs}\MicProbe\video"; Flags: ignoreversion recursesubdirs;
Source: "register_NT-MDT\*.*";      DestDir: "{app}";Flags:    ignoreversion recursesubdirs;
Source: "registerMicProbe.bat";      DestDir: "{app}";DestName: "register.bat";     Flags: ignoreversion
Source: "register64MicProbe.bat";    DestDir: "{app}";DestName: "register64.bat";   Flags: ignoreversion
Source: "unregisterMicProbe.bat";    DestDir: "{app}";DestName: "unregister.bat";   Flags: ignoreversion
Source: "unregister64MicProbe.bat";  DestDir: "{app}";DestName: "unregister64.bat"; Flags: ignoreversion


;Source: "unregisterOld.bat";  DestDir: "{app}"; Flags: ignoreversion;
;Source: "unregister64Old.bat";  DestDir: "{app}"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[INI]
Filename: "{app}\MicProbe.url"; Section: "InternetShortcut"; Key: "URL"; String: "http://www.ntspb.ru"
Filename: "{userappdata}\MicProbe\SPMconfigUsers.ini"; Section: "Install parameters"; Key: "first time stm"; String: "1"
Filename: "{userappdata}\MicProbe\SPMconfigUsers.ini"; Section: "Install parameters"; Key: "first time sfm"; String: "1"
Filename: "{userappdata}\MicProbe\SPMconfigUsers.ini"; Section: "Physical Unit Options"; Key: "Use Flash drive"; String: "1"
Filename: "{userappdata}\MicProbe\SPMconfigUsers.ini"; Section: "Users"; Key: "Show Welcome Window"; String: "true"
;Filename: "{userappdata}\NanoeducatorLE\SPMconfigUsers.ini"; Section: "Users"; Key: "User Level"; String: "Demo"
Filename: "{userappdata}\MicProbe\SPMconfigUsers.ini"; Section: "Approach Parameters"; Key: "Autorun Camera"; String: "1"
Filename: "{userappdata}\MicProbe\SPMconfigUsers.ini"; Section: "Approach Parameters"; Key: "Control Top Position"; String: "1"
Filename: "{userappdata}\MicProbe\SPMconfigUsers.ini"; Section: "Language"; Key: "Help"; String: "ENG"    
;disabled
Filename: "{userappdata}\MicProbe\SPMconfigUsers.ini"; Section: "Users"; Key: "Flg Change User Level"; String:  "1"  ; 
Filename: "{userappdata}\MicProbe\SPMconfigUsers.ini"; Section: "Users"; Key: "User Level"; String:  "{code:GetUser}"
[Icons]
Name: "{group}\MicProbe"; Filename: "{app}\MicProbe.exe"
; NOTE: The following entry contains an English phrase ("on the Web"). You are free to translate it into another language if required.
Name: "{group}\MicProbe on the Web"; Filename: "{app}\MicProbe.url"
; NOTE: The following entry contains an English phrase ("Uninstall"). You are free to translate it into another language if required.
Name: "{group}\Uninstall MicProbe"; Filename: "{uninstallexe}"
;Name: "{userdesktop}\NanoEducatorLoc"; Filename: "{app}\NanoEdu.exe";Tasks: desktopicon
Name: "{commondesktop}\MicProbe"; Filename: "{app}\MicProbe.exe"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\MicProbe"; Filename: "{app}\MicProbe.exe"; Tasks: quicklaunchicon;
;Name: "{commondesktop}\3D MicProbe"; Filename: "{commondocs}\MicProbe\video\rus\3D_������_MicProbe.mp4"; Tasks: desktopicon

[Registry]
; Start "Software\My Company\My Program" keys under HKEY_CURRENT_USER
; and HKEY_LOCAL_MACHINE. The flags tell it to always delete the
; "My Program" keys upon uninstall, and delete the "My Company" keys
; if there is nothing left in them.
Root: HKCU; Subkey: "Software\NT-SPb"; Flags: uninsdeletekeyifempty
Root: HKCU; Subkey: "Software\NT-SPb\MicProbe"; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\NT-SPb"; Flags: uninsdeletekeyifempty
Root: HKLM; Subkey: "Software\NT-SPb\MicProbe"; Flags: uninsdeletekey;
Root: HKCR; Subkey: ".spm"; ValueType: string; ValueName:  ""; ValueData: "MicProbeSpm"; Flags: uninsdeletevalue
Root: HKCR; Subkey: ".mspm"; ValueType: string; ValueName: ""; ValueData: "MicProbeSpm"; Flags: uninsdeletevalue
Root: HKCR; Subkey: "MicProbeSpm"; ValueType: string; ValueName: ""; ValueData: "MicProbe Spm File"; Flags: uninsdeletekey
Root: HKCR; Subkey: "MicProbeSpm\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\MicProbe.EXE,0"
Root: HKCR; Subkey: "MicProbeSpm\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\MicProbe.EXE"" ""%1"""
[Run]
; NOTE: The following entry contains an English phrase ("Launch"). You are free to translate it into another language if required.
;Filename: "{app}\DriversVideoCamera\Live Cam Notebook Pro(VF0400)\Drivers\Setup\setup.exe"; Description: "Videocamera  Live Notebook Pro(VF0400) drivers instalation"; Flags:  waituntilterminated postinstall skipifsilent
; NOTE: The following entry contains an English phrase ("Launch"). You are free to translate it into another language if required.
;Filename: "{app}\flashplayer\rus\PotPlayer_x86_Rus.exe";   Description: "Install flash player";  check: IsX32;   Flags:  waituntilterminated postinstall skipifsilent;
;Filename: "{app}\flashplayer\Install_flash_player_11x32.exe";   Description: "Install flash player Active X component"; Flags:  waituntilterminated postinstall skipifsilent;
;Filename: "{app}\flashplayer\KMPlayer.exe";                Description: "Install flash player";                  Flags:  waituntilterminated postinstall skipifsilent;
;Filename: "{app}\PowerPointViewer\PowerPointViewer.exe";   Description: "Install PowerPoint viewer";             Flags:  waituntilterminated postinstall skipifsilent;
Filename: "{app}\VCredistr\install.exe";   Description: "Launch VC8 redistributive pack";                          Flags:  waituntilterminated postinstall skipifsilent ;
Filename: "{app}\register.bat";   Description: "Launch register MicProbe server";          check: IsX32;          Flags:  waituntilterminated postinstall skipifsilent ;
Filename: "{app}\register64.bat"; Description: "Launch register MicProbe server";          check: IsWin64;        Flags:  waituntilterminated postinstall skipifsilent ;
Filename: "{app}\flashplayer\Install_flashplayer_11.exe";       Description: "Install flash player Active X component"; Flags:  waituntilterminated postinstall skipifsilent;
Filename: "{app}\AcrobatReader\setup.exe";            Description: "Install AcrobatReader";                   Flags:  waituntilterminated postinstall skipifsilent;
Filename: "{app}\ImageAnalysis\ImageAnalysis.exe";              Description: "Install ImageAnalysis";                   Flags:  waituntilterminated postinstall skipifsilent;
Filename: "{app}\MicProbe.exe";                                Description: "Launch MicProbe";                        Flags: nowait postinstall skipifsilent
[UninstallRun]
;Filename: "{app}\unregister.bat";            check: IsX32;   Flags:  waituntilterminated;
;Filename: "{app}\unregister64.bat";          check: IsWin64; Flags:  waituntilterminated;

[UninstallDelete]
Type: files; Name: "{app}\MicProbe.url"
Type: filesandordirs; Name: "{userappdata}\MicProbe\*.*"
Type: filesandordirs; Name: "{userappdata}\MicProbe"
Type: filesandordirs; Name: "{commondocs}\MicProbe\*.*"
Type: filesandordirs; Name: "{commondocs}\MicProbe"
Type: filesandordirs; Name: "{app}\ScannerIniDBase\*.*"
Type: filesandordirs; Name: "{app}\demodata\*.*"
Type: filesandordirs; Name: "{app}\*.*"
Type: filesandordirs; Name: "{app}"

[Files]
;Source: "5.0.44.0__swflash.ocx"; DestDir: "{sys}\macromed\flash";   Flags: onlyifdoesntexist restartreplace sharedfile regserver

[Code]
var lng:string;
  UserPage: TInputQueryWizardPage;
  UsagePage: TInputOptionWizardPage;
  userlevel:string;


function CheckLangR:Boolean;
begin
  lng:='RUS';
  RegQueryStringValue(HKU, '.Default\Control Panel\International', 'sLanguage', lng);
  result:=false;
  if lng='RUS' then result:=true
end;
function IsX64: Boolean;
begin
  Result := Is64BitInstallMode and (ProcessorArchitecture = paX64);
end;
function IsX32: Boolean;
begin
  Result :=not IsWin64;//not  Is64BitInstallMode {and (ProcessorArchitecture = paX64)};
end;
function RegMLPCservers(dllname:string):boolean;
var str:string;
 begin
  Result := MsgBox( ExpandConstant('{app}\MLPC_API2.dll'), mbConfirmation, MB_YESNO) = idYes;

 if  IsX64 then RegisterServer(true, ExpandConstant('{app}\MLPC_API2.dll'), False)
           else RegisterServer(false,ExpandConstant('{app}\MLPC_API2.dll'), False);
end;


function CheckLangE:Boolean;
begin
  lng:='RUS';
  RegQueryStringValue(HKU, '.Default\Control Panel\International', 'sLanguage', lng);
  result:=true;
  if lng='RUS' then result:=false;
end;

procedure InitializeWizard;
begin
  { Create the pages }
   UsagePage := CreateInputOptionPage(wpWelcome,
    'Personal Information', 'How will you use MicProbe?',
    'Please specify how you would like to use MicProbe, then click Next.',
    True, False);
  UsagePage.Add('Experiment (full functionality)');
  UsagePage.Add('Simulator  (simulator full functionality)');

 { Set default values, using settings that were stored last time if possible }
  UsagePage.SelectedValueIndex := 0;
   case GetPreviousData('UsageMode', '') of
    'Advanced': UsagePage.SelectedValueIndex := 0;
    'Demo': UsagePage.SelectedValueIndex := 1;
  else
    UsagePage.SelectedValueIndex := 1;
  end;
end;
procedure RegisterPreviousData(PreviousDataKey: Integer);
var
  UsageMode: String;
begin
  { Store the settings so we can restore them next time }
  case UsagePage.SelectedValueIndex of
    0: UsageMode := 'Advanced';
    1: UsageMode := 'Demo';           end;
  SetPreviousData(PreviousDataKey, 'UsageMode', UsageMode);
end;
function NextButtonClick(CurPageID: Integer): Boolean;
begin
  { Validate certain pages before allowing the user to proceed }
  if CurPageID = UsagePage.ID then 
  begin
    case UsagePage.SelectedValueIndex of
0: userlevel:='Advanced';
1: userlevel:='Demo';
       end;
// MsgBox('User level='+userlevel, mberror, MB_OK);
  end;  
    Result := True;
end;
function GetUser(Param: String): String;
begin
  { Return a user value }
  { Could also be split into separate GetUserName and GetUserCompany functions }
  Result := userlevel;
 end;

 
