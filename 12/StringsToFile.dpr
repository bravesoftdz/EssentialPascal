program StringsToFile;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  OutputFile: TextFile;
  I: Integer;
  Filename: string;
begin
  filename := ParamStr (1);
  if filename = '' then
  begin
    writeln ('Missing file name');
  end
  else
  begin
    // output the text to a file
    AssignFile (OutputFile, FileName);
    Rewrite (OutputFile);

    for I := 1 to 10 do
      writeln (OutputFile, 'item ' + IntToStr (I));

    CloseFile (OutputFile);
    writeln ('done');
  end;

  readln;
end.
