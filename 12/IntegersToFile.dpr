program IntegersToFile;

{$APPTYPE CONSOLE}

uses
  SysUtils;

type
  IntFile: file of Integers;

var
  IntFile1: IntFile;

begin
  AssignFile (IntFile1, 'test.my');
  Rewrite (IntFile1);
  Write (IntFile1, 1);
  Write (IntFile1, 2);
  CloseFile (IntFile1);

  if IOResult = 0 then
    writeln ('File test.my created correctly')
  else
  begin
    write ('File test.my creation failed with error: ');
    writeln (IoResult);
  end;
  readln;
end.
