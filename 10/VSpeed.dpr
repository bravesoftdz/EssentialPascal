program VSpeed;

{$APPTYPE CONSOLE}

uses
  SysUtils;

const
  LoopCount = 5000000;

var
  time1, time2: TDateTime;
  n1, n2: Variant;
  k1, k2: Integer;
begin
  time1 := Now;
  n1 := 0;
  n2 := 0;

  while n1 < LoopCount do
  begin
    n2 := n2 + n1;
    Inc (n1);
  end;

  // we must use the result
  writeln (n2);
  time2 := Now;
  writeln ('Variants: ' + FormatDateTime (
    'ss.zzz', Time2-Time1) + ' seconds');

  // same code, with Integers
  time1 := Now;
  k1 := 0;
  k2 := 0;

  while k1 < LoopCount do
  begin
    k2 := k2 + k1;
    Inc (k1);
  end;

  // we must use the result
  writeln (k2);
  time2 := Now;
  writeln ('Integers: ' + FormatDateTime (
    'ss.zzz', Time2-Time1) + ' seconds');

  readln;
end.
