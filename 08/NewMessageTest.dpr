program NewMessageTest;

{$APPTYPE CONSOLE}

uses
  SysUtils;

procedure NewMessage (Msg: string;
  Caption: string = 'Message';
  Separator: string = sLineBreak); overload;
begin
  write (Caption);
  write (': ');
  write (Msg);
  write (Separator);
end;

//procedure NewMessage (Str: string; I: Integer = 0); overload;
//begin
//  writeln (Str + ': ' + IntToStr (I))
//end;

begin
  NewMessage ('Something wrong here!');
  NewMessage ('Something wrong here!', 'Attention');
  NewMessage ('Hello', 'Message', '--');

  readln;
end.
