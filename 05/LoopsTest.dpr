program LoopsTest;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  I: Integer;

begin
  for I := 1 to 20 do
    writeln ('String ' + IntToStr (I));

  Randomize;
  I := 0;
  while I < 1000 do
  begin
    I := I + Random (100);
    writeln ('Random Number: ' + IntToStr (I));
  end;

  readln;
end.
