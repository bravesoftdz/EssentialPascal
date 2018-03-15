program Filter;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  FilterRoutines in 'FilterRoutines.pas';

var
  I: Integer;
  Flag: char;
  inputFile,  outputFile: string;

begin
  // command line processing
  for I := 1 to ParamCount do
  begin
    if ParamStr(i) [1] = '-' then
      Flag := ParamStr(i) [2]
    else
      if inputFile = '' then
        inputFile := ParamStr(i)
      else
        outputFile := ParamStr(i);
  end;

  // check we have the two files and a flag
  if (inputFile = '') or (outputFile = '') or
    not (Flag in ['U', 'R', 'C']) then
  begin
    writeln ('Missing or wrong parameters');
    readln;
    Exit;
  end;

  // process the files
  DoConvert (inputFile, outputFile, Flag);

  readln;
end.
