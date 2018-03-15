program ForTest;

{$APPTYPE CONSOLE}

uses
  SysUtils;

type
  TSuit = (Club, Diamond, Heart, Spade);

var
  total, I: Integer;
  aChar: Char;
  aSuit: TSuit;

begin
  total := 0;
  for I := 1 to 10 do
    total := total + I;
  writeln (total);

  total := 0;
  for I := 10 downto 1 do
    total := total + I;
  writeln (total);

  for aChar := 'a' to 'z' do
  begin
    write (aChar);
    write (' ');
  end;
  writeln;

  for aSuit := Club to Spade do
    writeln (Ord(aSuit));

  readln;
end.
