program EnumeratedTypes;
{$APPTYPE CONSOLE}
uses
  ExceptionLog,
  TypInfo,
  SysUtils;

// Enumerated Type defination
type
   Colors = (Red, Yellow, Green, Cyan, Blue, Violet);
   Suit = (Club, Diamond, Heart, Spade);
   WeekDays = (Sunday,Monday,Tuesday,Wednesday,Thursday,Friday,Saturday);
// One of the things is that it is not that easy to print enum to console
// You have to include the TypInfo Delphi Library
// And then use the GetEnumName method to get the Enum
   Months = (January,February,March,April,May,June,July,August,September,October,November,December);

// Variables
var
   Color: Colors;
   Str: String;
   WeekDay: WeekDays;
   Month: Months;

begin
   // Yellow
   Color:= Yellow;

   Month:= January;

   // Sunday
   WeekDay := Sunday;

   Str := GetEnumName(TypeInfo(Colors),Ord(Color));

   // Display to user
   Writeln(Str);

   Str:= GetEnumName(TypeInfo(WeekDays),ord(weekday));

   Writeln(Str);

   //Writeln(WeekDay);

   // wait for user input
   Readln;
end.