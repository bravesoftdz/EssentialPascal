program TimeNow;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  StartTime: TDateTime;

begin
  StartTime := Now;
  writeln (TimeToStr (StartTime));
  writeln (DateToStr (StartTime));

  readln;
end.
