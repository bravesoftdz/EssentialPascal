program SubRoutines;
{$APPTYPE CONSOLE}
uses
  ExceptionLog,
  SysUtils;

var
   yesterday: TDateTime;
   msg: String;
   count: Integer;
   num1, num2, result: double;

// let's see if method overloading works or not
procedure ShowTime(dateTime: TDateTime);
begin
   Writeln('Date and time is '+DateTimeToStr(dateTime));
end;

// Let's declare another method which says hellp
procedure PromptMessage(msg: String);
begin
   // Write the message to console
   Writeln(msg);
end;

// function that returns random character
function RandomChar : char;
var
   i: integer;
begin
   // Call Randomize to initialize the random generator with a random value
   Randomize;
   // Get a random value from 65 to 90 for 'A' to 'Z'
   i := 65 + Random(25);

   // Return this value as a char type in the return variable, Result
   Result := Chr(i);
end;

// function that adds two numbers
function add(num1,num2:double):double;
begin
   // Initialize the return value
   Result:= 0.0;
   // add and return the result
   result:= num1+num2;
end;



// This is like the main method of java or C#
begin
  yesterday:= Now;
  //ShowTime;
  ShowTime(yesterday);

  // Initialize a message
  msg:= 'Hello World!';

  // Show message to screen
  PromptMessage(msg);

  // Print a Random character
  Writeln(RandomChar);

  // Let's put this random char generator inside a for loop
  for count:= 0 to 4 do
  begin
   Writeln('[',(count+1),']: ',RandomChar);
  end;

  // Start a for loop of 10 counts
  for count:= 0 to 9 do
  begin
   // Initialize the nums to some default values
   num1:= 0.0;
   num2:= 0.0;
   Randomize;
   num1 := 1+Random(99);
   num2 := 1+Random(999);
   result := add(num1,num2);
   Writeln(Format('%.2f',[num1]),' + ',Format('%.2f',[num2]),' = ',Format('%.2f',[result]));
  end;




  // Wait for user input
  Readln;
end.


