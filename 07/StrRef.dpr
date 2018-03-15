program StrRef;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  Str1, Str2: string;

function StringStatus (const Str: string): string;
begin
  Result := 'Address: ' + 
    IntToStr (Integer (Str)) +
    ', Length: ' + 
    IntToStr (Length (Str)) +
    ', References: ' + 
    IntToStr (PInteger (Integer (Str) - 8)^) +
    ', Value: ' + Str;
end;

begin
  Str1 := 'Hello';
  Str2 := Str1;

  writeln ('Str2 := Str1');
  writeln ('Str1 - ' + StringStatus (Str1));
  writeln ('Str2 - ' + StringStatus (Str2));

  Str1 [2] := 'a';
  writeln ('Str1 [2] := ''a''');
  writeln ('Str1 - ' + StringStatus (Str1));
  writeln ('Str2 - ' + StringStatus (Str2));

  readln;

end.
