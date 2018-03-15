program OverDef;

{$APPTYPE CONSOLE}

uses
  SysUtils;

procedure ShowMsg (str: string); overload;
begin
  writeln ('Message: ' + str);
end;

procedure ShowMsg (FormatStr: string;
  Params: array of const); overload;
begin
  writeln ('Message: ' + Format (FormatStr, Params));
end;

procedure ShowMsg (I: Integer; Str: string); overload;
begin
  ShowMsg (IntToStr (I) + ' ' + Str);
end;

begin
  ShowMsg ('Hello');
  ShowMsg ('Total = %d.', [100]);
  ShowMsg (10, 'MBytes');

  readln;
end.
