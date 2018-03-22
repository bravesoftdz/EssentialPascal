program SubRange;
{$APPTYPE CONSOLE}
uses
  ExceptionLog,
  SysUtils;

// Subrange is a subset of some ordinal types
// The base case HAS to be an ordinal type
// It sounds right, because ordinal types are finite
// therefore we can do a subrange of finite values.

// here is the subrange defination
// We don't have to provide a data type for the subrange
// We only need to provide two constants
type
   LessThanTen = 1..10;
   OverHundred = 100..1000;
   UpperCase = 'A'..'Z';
// Did you notice that during the subrange defination
// we are using the '=' operator for telling the compiler what the range of the
// subrange is
// Ten, OverHundred and UpperCase are all just identifies and their data-type is a
// subrange

// What happens when we try to make subrange of subrange?
// Cant do it how will you do it?
// You need two constants where will you get those constants from?

var
   UppLetter: UpperCase;
   OverHundredVal: OverHundred;
   SmallValue: LessThanTen;
   Letter: Char;
   num: Integer;
begin
  UppLetter := 'F';
  SmallValue := 5;
  OverHundredVal := 150;

  Letter := 'e';
  num := 45;

  Writeln(UppLetter);
  Writeln(OverHundredVal);
  Writeln(SmallValue);

  // What the hell!!
  // In this case I don't get any errors?
  // I should get the out of subrange bounds type error
  // But I get nothing!!! The compiler actually runs it. 
  OverHundredVal := num;
  UppLetter := Letter;
  // To get the range checking error, I need to check the check mark
  // Of the Project->Options->Compiler Tab-> Range Check


  Writeln(UppLetter);
  Writeln(OverHundredVal);
  //Writeln(SmallValue);


  // wait for user input to display message to console
  Readln;
end.