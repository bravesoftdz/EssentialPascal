program EPConstants;

{$APPTYPE CONSOLE}

// In order to declare constants in Pascal, you don't have to
// declare the data type.

// However you have to assign an initial value

// The declartion of constants starts with the keyword 'const'
// followed by the indentifer name and the value
uses
   ExceptionLog,
   SysUtils;

const
   THOUSAND = 100;
   PI = 3.14;
   AUTHOR_NAME = 'Marco Cantu';
// As with all major programming languages, these constants
// should not be assigned differnt values in the
// main being..end block
   // unit = m/s*s
   GRAVITATIONAL_CONSTANT = 6.6726E-11;

var
   // m1 and m2 are the mass of the 2 bodies
   // f is the force between the two bodies
   // r is the distance between the two bodies
   m1, m2, f, r : real;
   // force in string
   force : string;
begin
{
  writeln (20 * 5);
  writeln (30 + 222);
  writeln (3 < 30);
  writeln (12 = 10);

  // print the constants
  writeln(THOUSAND);
  writeln(PI);
  writeln(AUTHOR_NAME);

  // Let's try to print a number to console after formating it
  writeln(format('%.2f',[PI]));
  // Therefore we can use the format method of the SysUtils library
  // to format real numbers!!
  // Pay carefull attention to the input parameters, the way they are passed.
  // The first argument is a string and the next one is a weired array looking
  / stuff. But that't the way this method accepts argument.

  // Let's try to change the constant values and see what the compiler does
  THOUSAND := 200;
  writeln(THOUSAND);
  // The compiler thorows an error saying that the 'Left side cannot be assigned to'
  // Muhahahahaha, good, the compiler is working as it should.


  // Give some initial values to the input parameters
  m1 := 0.00;
  m2 := 0.00;
  f := 0.00;

  // Let's ask the user for some mass values and calculate the force
  // using Newton's gravitational constant.
  // get the first mass
  writeln('Enter the mass of first body (in kg)');
  readln(m1);

  // get the second mass
  writeln('Enter the mass of the second body (in kg)');
  readln(m2);

  // get the distance between the two bodies
  writeln('Enter the distance between the two bodies (in m)');
  readln(r);

  // now calculate the force using newton's equation
  // f = G*((m1*m2)/(r*r))
  f := (GRAVITATIONAL_CONSTANT*m1*m2)/(r*r);
  // display that answer with the details to user
  //force := format('%.3f',[f]);
  force := floatToStr(f);
  writeln('The force between those masses are: '+force);
}

  // In delphi you can add a new line character using '#13#10'
  // in window, however for linux systems it is only #13
  writeln('Programming in Pascal '+#13#10+'is fun.');

  // Just a reminder, in pascal when you declare the constants
  // you don't have to declare the data type just the name(identifier)
  // followed by the value of that identifier
  // the pascal compiler automatically assigns the data type

  // However for variables, you need during declaraiton you need both the
  // data type and the identifier under the var key word
  // you can only give a value to the global variables but not to
  // variables of methods

  // What is a constant?
  // A variable whose value you don't change during the program execution
  // A variable whose value you don't change during the program execution
  // A varibale whose value you don't change during the program execution

  // What is a directive?



  readln;
end.
