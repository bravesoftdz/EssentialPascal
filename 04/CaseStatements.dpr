program CaseStatements;
{$APPTYPE CONSOLE}
uses
  SysUtils,
  Math,
  ExceptionLog;

type
   TCar = (NISSAN,FORD,ROVER,JAGUAR,Sudipta);
   // Since Delphi is case insensitive
   // JAGUAR and Jaguar both are same
   // FORD and ford are both same

// variable declaration
var
   i: Integer;
   f:real;
   car: TCar;
   name: TCar;
   inputChar: Char;
   num1, num2, result: real;


begin
  Randomize;
  f:= Random;

  i:= 15 + Random(6);

  // here is an example of case statement
  case i of
      15:Writeln('The random number was '+IntToStr(i));
      16:Writeln('The random number was '+IntToStr(i));
      17:Writeln('The random number was '+IntToStr(i));
      18:Writeln('The random number was '+IntToStr(i));
      19:Writeln('The random number was '+IntToStr(i));
      20:Writeln('The random number was '+IntToStr(i));
  end;

  // Initialize the car varaible
  car:= Jaguar;

  // now switch this car variable
  case car of
   NISSAN: Writeln('We have a Nissan Car.');
   FORD: Writeln('We have a Ford Car.');
   ROVER: Writeln('We have a Rover Car.');
   JAGUAR: Writeln('We have a Jaguar Car.');
  else
   Writeln('Ivalid Car Type');
  end;

  // Ask the user for a number
  Writeln('Please enter an integer number. Some of the numbers are special.'+#13#10+'For those you will get interesting messages.');
  Readln(i);

  case i of
   2: Writeln('It''s a pair');
   3: Writeln('Three runs between the wickets, that'' very good');
   5: Writeln('Barcelona Wint. It''s Barca 5 - Real 0');
   12: Writeln('It''s a dozen eggs mate!');
   50: Writeln('It''s half a centuary. Good Job Sakib.');
   100: Writeln('Dhone has just scored a Century. Wohoooo!!!');
  else
   Writeln('Please try again. The number you entered does not have a prompt associated with it. Thanks!');
  end;

  // let's see if Strings can be used in case statements
  name:= Sudipta;

  case name of
      sudipta: Writeln('Sudipta is my name. Muhahahahaha!!!');
      else
         Writeln('Invalid Name!! Huh, Decide on a name man, it'' not that hard. Or is it??');
  end;

  i:= 10 mod 3;
  Writeln(i);

  // In Delphi Case can only have ordinal types
  // We cannot use switch case on a String
  // For that we can use the enumeration type

  // Ask the user for an input
  Writeln('Please insert your first number.');
  Readln(num1);
  Writeln('Please insert your second number.');
  Readln(num2);
  Writeln('Please insert the type of operation you would like to do on them:');
  Writeln('+: addition');
  Writeln('-: substraction');
  Writeln('*: multiplication');
  Writeln('/: division');
  Readln(inputChar);

  // This sucks, in Delphi you can use the MOD operator on real values

  // I know I can use just one line of code for the
  // Writeln, but for now to demonstrate that
  // case statement can have more than statement 

  // Now do some operation based on that switch
  case inputChar of
   '+':
   begin
      result:= num1+num2;
      Writeln(Format('%.2f',[result]));
   end;
   '-':
   begin
      result:= num1-num2;
      Writeln(Format('%.2f',[result]));
   end;
   '*':
   begin
      result:= num1*num2;
      Writeln(Format('%.2f',[result]));
   end;
   '/':
   begin
      result:=num1/num2;
      Writeln(Format('%.2f',[result]));
   end;
  else
   Writeln('Invalid Input: ',inputChar);
  end;


  // Now lets switch

  // Wait for user input
  Readln;
end.