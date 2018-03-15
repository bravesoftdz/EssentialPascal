program StringAndPChar;

{$APPTYPE CONSOLE}

uses
  SysUtils, Windows;

var
  Str1: string;
  nSize : Cardinal = 20;

begin
  SetLength (Str1, nSize);
  GetUserName(PChar (Str1), nSize);

  // output
  writeln (Str1);
  // trouble
  writeln (Str1 + '*');
  // fix
  Str1 := PChar (Str1);
  writeln (Str1 + '*');

  readln;
end.
