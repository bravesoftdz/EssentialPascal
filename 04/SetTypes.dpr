// Banking on SetTypes not being used by our company.
// Lets just move onto Array Typs
program SetTypes;
{$APPTYPE CONSOLE}
uses
  ExceptionLog,
  SysUtils;

Type
   Uppercase = 'A'..'Z';
   OverHundred = 100..1000;
   Letters = set of Uppercase;

Var
   Letters1,Letters2, Letters3: Letters;

begin
   Letters1 := ['A','B','C'];
   Letters2 := ['K'];

   Writeln(Letters[0]);

   Readln;

end.