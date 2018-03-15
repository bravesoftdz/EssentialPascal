program Pointers;

{$APPTYPE CONSOLE}

uses
  SysUtils;

type
  TPointerToInt = ^Integer;

var
  P, P2, P3: ^Integer;
  X: Integer;

begin
  X := 0;

  // 1. pointer referring to an existing variable

  P := @X;
  // change the value in two different ways
  writeln (P^);
  X := 10;
  writeln (P^);
  P^ := 20;
  writeln (P^);

  // 2. dynamic memory allocation for pointer

  // initialization
  New (P2);
  // operations
  P2^ := 20;
  writeln (P2^);
  // termination
  Dispose (P2);

  // 3. access violation
   P3 := nil;
   writeln (P3^);

  readln;
end.
