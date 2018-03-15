unit FilterRoutines;

interface

procedure DoConvert (const inputfile, outputfile: string;
  flag: Char);

procedure ConvUpper;
procedure ConvCapitalize;
procedure ConvSymbols;

implementation

uses
  SysUtils;

var
  FileIn, FileOut: TextFile;
  FileLength: LongInt;

procedure DoConvert (const inputfile, outputfile: string;
  flag: Char);
var
  F: file of Byte;
begin
  // compute the input file length
  AssignFile (F, inputfile);
  Reset (F);
  FileLength := FileSize (F);
  CloseFile (F);

  // open the text files
  AssignFile (FileIn, inputfile);
  Reset (FileIn);

  AssignFile (FileOut, outputfile);
  Rewrite (FileOut);

  // conversion...}
  // check the input flag
  case Flag of
    'U': ConvUpper;
    'C': ConvCapitalize;
    'R': ConvSymbols;
  end;

  // close the files
  CloseFile (FileOut);
  CloseFile (FileIn);
end;

procedure ConvUpper;
var
  Ch: Char;
  Position: LongInt;
begin
  Position := 0;
  while not Eof (FileIn) do
  begin
    Read (FileIn, Ch);
    Ch := UpCase (Ch);
    Write (FileOut, Ch);
    Inc (Position);
  end;
end;

function LowCase (C: Char): Char;
begin
  if C in ['A'..'Z'] then
    LowCase := Chr (Ord (C) - Ord ('A') + Ord ('a'))
  else
    LowCase := C;
end;

procedure ConvCapitalize;
var
  Ch: Char;
  Period: Boolean;
  Position: LongInt;
begin
  Period := True;
  Position := 0;
  while not Eof (FileIn) do
  begin
    Read (FileIn, Ch);
    case Ch of
      'A'..'Z':
        if Period then
        begin
          Write (FileOut, Ch);
          Period := False;
        end
        else
        begin
          Ch := LowCase (Ch);
          Write (FileOut, Ch);
          Period := False;
        end;
      'a'..'z':
        if Period then
        begin
          Ch := UpCase (ch);
          Write (FileOut, Ch);
          Period := False;
        end
        else
        begin
          Write (FileOut, Ch);
          Period := False;
        end;
      '.', '?', '!':
      begin
        Period := True;
        Write (FileOut, Ch);
      end;
      else
        Write (FileOut, Ch);
    end; // case
    Inc (Position);
  end; // while
end;

procedure ConvSymbols;
var
  Ch: Char;
  Position: LongInt;
begin
  Position := 0;
  while not Eof (FileIn) do
  begin
    Read (FileIn, Ch);
    if Ch < Chr (127) then
      Write (FileOut, Ch);
    Inc (Position);
  end;
end;

end.
