program EnumTitles;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Windows;

function GetTitle (Hwnd: THandle;
  Param: Pointer): Boolean; stdcall;
var
  Text: string;
begin
  SetLength (Text, 100);
  GetWindowText (Hwnd, PChar (Text), 100);
  Text := PChar (Text);
  // skip windows with empty titles
  if Text <> '' then
    writeln (IntToStr (Hwnd) + ': ' + Text);
  Result := True;
end;

var
  EWProc: TFNWndEnumProc;

begin
  EWProc := @GetTitle;
  EnumWindows (EWProc, 0);

  readln;
end.
