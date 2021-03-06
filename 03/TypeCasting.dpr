program TypeCasting;
{$APPTYPE CONSOLE}
uses
  ExceptionLog,
  SysUtils;

var
   N: Integer;
   C: Char;
   B: Boolean;

begin
  // This is an example of type casting
  // Typecasting uses simple functional notation
  // This is called Typecasting
  // Typecasting
  // This is called Typecasting
  // This is called Typecasting
  // This is called Typecasting
  N:= Integer('X');
  C:= Char(N);
  B:= Boolean(0);

  //Writeln(N);
  //Writeln(C);
  //Writeln(B);

  // We should avoid TypeCasting
  // Allows you to access valus as if it represented something else
  // Internal representation of data type

  // That's why we should always use type conversion routines
  // Returns the character represented by the ASCII Integer value passed to
  // the function
  //writeln(Chr(36)); // -> $

  // Returns the ANSCII value of the character
  //Writeln(Ord('Q'));// -> 81

  // Rounds a float to an Integer
  //Writeln(Round(12.7)); // ->  13
  //Writeln(Round(12.3)); // -> 12
  //Writeln(Round(12.5)); // -> 12
  //Writeln(Round(-12.345));
  //Writeln(Round(-12.5));
  //Writeln(Round(-12.75));

  // Trunc
  //Writeln(Trunc(14.89));
  //Writeln(Trunc(-0.005));
  //Writeln(Trunc(-12.45));

  // Int - returns Integer part of real number without rounding
  // The return type is extended which is a real
  //Writeln(FloatToStr(Int(12.25)));
  //Writeln(Int(14.78));

  // IntToStr -> Converts a integer to a string
  Writeln(IntToStr(10)+' Hello World');

  // Convert String to Integer
  // Can't see the run time exception
  Writeln(StrToInt('50f'));
  // Convert String to Float
  Writeln(Format('%.2f',[StrToFloat('50.557')]));

  // Wait for user input
  Readln;
end.