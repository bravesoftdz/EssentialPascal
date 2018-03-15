program IfTest;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  aChar: Char;

begin
  write ('Enter a character: ');
  readln (aChar);

  if aChar = 'a' then
    writeln ('You pressed [a]');

  // if-then-else statement
  if aChar = 'b' then
    writeln ('You pressed [b]')
  else
    writeln ('You pressed something else than [b]');

  // statement with a double condition
  // checks for a lowercase char
  if (aChar >= 'a') and (aChar <= 'z') then
    writeln ('lowercase');

  // compound if statement
  if aChar >= Char(32) then
    if (aChar >= '0') and (aChar <= '9') then
      writeln ('a number')
    else
      writeln ('not a number')
  else
    writeln ('non-printable char');

  readln;
end.
