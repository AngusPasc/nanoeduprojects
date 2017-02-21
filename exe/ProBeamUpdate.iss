; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!
; copy english version sigraph.dll   to exe dir changed 09/06/16
[Setup]
AppName=ProBeam
AppVerName=ProBeam ver 17.01.13.13
OutputBaseFilename=ProBeamUpdate-17.01.13.13
AppPublisher=NT-SPb Inc.
AppPublisherURL=http://www.ntspb.ru
AppSupportURL=http://www.ntspb.ru
AppUpdatesURL=http://www.ntspb.ru
DefaultDirName=C:\NT-SPb\ProBeam
DefaultGroupName=NT-SPb
AllowNoIcons=yes
WizardImageFile=data\screen.bmp
ChangesAssociations=yes
OutputDir=output\update
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
 
[Files]
Source: "ProBeam.exe";   DestDir: "{app}"; Flags: ignoreversion
Source: "javabin\*.jar";DestDir: "{app}\javabin"; Flags: ignoreversion recursesubdirs;
Source: "SPMConfig.ini"; DestDir: "{app}"; Flags: ignoreversion;
Source: "SPMConfigDef.ini"; DestDir: "{app}"; Flags: ignoreversion;
Source: "SPMConfigUsersProBeam.ini";    DestDir: "{userappdata}\ProBeam"; DestName:"SPMconfigUsers.ini";    Flags: ignoreversion;
Source: "SPMConfigDefUsersProBeam.ini"; DestDir: "{app}"; DestName:"SPMconfigDefUsers.ini"; Flags: ignoreversion;
Source: "scheme\*.bin"; DestDir: "{app}\scheme"; Flags: ignoreversion recursesubdirs;
[INI]
[Icons]
[Registry]
[Run]
 Filename: "{app}\ProBeam.exe";                                Description: "Launch ProBeam";                        Flags: nowait postinstall skipifsilent
[UninstallRun]
;Filename: "{app}\unregister.bat";            check: IsX32;   Flags:  waituntilterminated;
;Filename: "{app}\unregister64.bat";          check: IsWin64; Flags:  waituntilterminated;

[UninstallDelete]
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
    'Personal Information', 'How will you use ProBeam?',
    'Please specify how you would like to use ProBeam, then click Next.',
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

 
