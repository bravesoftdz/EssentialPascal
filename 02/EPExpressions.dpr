program EPExpressions;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  Value: Integer;
  IsCorrect: Boolean;
  A, B: Char;

begin
  Value := 10;
  IsCorrect := True;

  writeln (Value);
  writeln (IsCorrect);

  // Value := IsCorrect;
  // [DCC Error]: Incompatible types: 'Integer' and 'Boolean'

  readln;
end.
