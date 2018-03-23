program RecordType;
{$APPTYPE CONSOLE}
uses
  ExceptionLog,
  SysUtils;

// Record type defination
type
   Date = record
      Year: Integer;
      Month: Integer;
      Day: Integer;
   end;

   Address = record
      Street1: String;
      Street2: String;
      AptNum: String;
      City: String;
      State: String;
      Zip: Integer;
      Country: String;
   end;

// variable declarion of that type
var
   // birth date records of people
   samsBirthDay: Date;
   bobsBirthDay: Date;
   megansBirthDay: Date;
   // individual year, month and day
   year: Integer;
   month: Integer;
   day: Integer;
   // individaul year, month and day strings for writing to console
   yearStr: String;
   monthStr: String;
   dayStr: String;

   // address of some persons
   bobsAddress: Address;
   samsAddress: Address;

begin
  // Initialize samsBirthDay record
  samsBirthDay.Year := 1997;
  samsBirthDay.Month:= 2;
  samsBirthDay.Day := 14;

  //Lets try to print sams birthday records
  year:= samsBirthDay.Year;
  month:= samsBirthDay.Month;
  day:= samsBirthDay.Day;
  Writeln('Sam was born in year: '+IntToStr(year));
  Writeln('Sam was born in month: '+IntToStr(month));
  Writeln('Sam was born in day: '+IntToStr(day));

  // Let's try to print all those in one line
  yearStr:= IntToStr(year);
  monthStr:= IntToStr(month);
  dayStr:= IntToStr(day);
  Writeln('Sam was born in '+monthStr+'/'+dayStr+'/'+yearStr);

  // Let's play with bobs birthday
  bobsBirthDay.Year := 1800;
  bobsBirthDay.Month := 7;
  bobsBirthDay.Day := 30;

  // get the individual day,month and year
  yearStr:= IntToStr(bobsBirthDay.Year);
  monthStr:= IntToStr(bobsBirthDay.Month);
  dayStr:= IntToStr(bobsBirthDay.Day);

  Writeln('Bob born to John and Marry, was a healthy 10 lb boy.');
  Writeln('He was born in '+monthStr+'/'+dayStr+'/'+yearStr);

  // Let's put bob in an address, initialization of variables
  bobsAddress.Street1 := '1234 Some Street';
  bobsAddress.Street2 := 'Some other Street';
  bobsAddress.AptNum := '203C';
  bobsAddress.City := 'Fort Wayne';
  bobsAddress.State := 'IN';
  bobsAddress.Zip := 12345;
  bobsAddress.Country := 'USA';
  // Let's see what happens when you try to print all of bobs address at once
  Writeln(bobsAddress.Street1);



  // Wait for user input and that will give time to display above messages
  Readln;
end.