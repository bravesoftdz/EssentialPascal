program FmtTest;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  chInput: char;
  strInput: string;
  Done: Boolean;

procedure TestFormatInteger;
var
  n: Integer;
  strFmt: string;
begin
  writeln ('Enter value');
  readln (n);

  writeln ('Enter a format string: (examples below)');
  writeln ('%d');
  readln (strFmt);

  writeln (Format ('%d %s => %s',
    [n, strFmt, Format (strFmt, [n])]));
end;

procedure TestFormatFloat;
begin

end;

begin
  Done := False;
  while not Done do
  begin
    writeln ('Work with [I]nteger or [F]loating point numbers? [I or F or X to exit]');
    readln (chInput);

    case Upcase (chInput) of
      'I': TestFormatInteger;
      'F': TestFormatFloat;
      'X': Done := True;
    else
      writeln ('Wrong selection');
    end;
  end;
  writeln ('Bye');
  readln;
end.
