program CaseTest;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  aChar: Char;
  Text: string;

begin
  write ('Enter a character: ');
  readln (aChar);

  case aChar of
    '+' : Text := 'Plus sign';
    '-' : Text := 'Minus sign';
    '*', '/': Text := 'Multiplication or division';
    '0'..'9': Text := 'Number';
    'a'..'z': Text := 'Lowercase character';
    'A'..'Z': Text := 'Uppercase character';
  else
    Text := 'Unknown character';
  end;

  writeln (Text);
  readln;
end.
