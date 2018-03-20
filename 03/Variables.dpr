program Variables;

{$APPTYPE CONSOLE}

// Turns out, in Pascal, there are several
// predefined data types.

// And these predefined data types can be devided into 3 seperate types.
// 1. Ordinal Types.
// 2. Real Types.
// 3. String Types.

// Also there are data types that are part of the Delphi library, which can be
// be considered as predefined data types. These are not predefined by the
// compiler. They are part of the Delphi library but can be considered as predefined
// by the compiler.

// Delphi also includes a non-typed data type called the 'variant'.
// It is a data type without proper type checking.
// So what is a variant? It's nothing but a data type without proper type checking.

// I still don't understand what it is, but inshaAllah I will get it eventually.

// Therefore the predefined data types of pascal can be devided into three types
// 1. Ordinal Types
// 2. Real Types
// 3. String Types

// Pascal compiler also recognizes some of the data types in the Delphi library
// Those data types can be considered as predefined types. The author will
// demonstrate those later.

// Delphi also has a data type called the variant, which is a type withot proper
// type checking. 



uses
  ExceptionLog,
  SysUtils;

var
  Value: Integer;
  num: real;
  modls: integer;
  IsCorrect: Boolean;
  A, B: Char;

const
   newLine: String = #13#10;
   G = 10;

begin
  {
  Value := 10;
  IsCorrect := True;

  // write the current value of the variables
  writeln(value);

  // adition
  Value := value+1;
  writeln(value);
  // subtraction
  value := value-2;
  writeln(value);
  // multiplication
  value := value*3;
  writeln(value);

  // real division
  // retuns a floating point
  {
   Note that in floating point division
   one of the variables or literal has to be a real number.

   And the most important thing is that the operator doing the
   division has to be '/' that operator.
  } {
  num := value / 5.0;
  writeln(format('%.2f',[num]));

  // integer division
  {
   In integer division the operator has to be div operator.
   And both of the operands has to be real number, that is a number
   between [-Integer.Max,Integer.Max]
  }  {
  value := value div 2;
  writeln(value);

  value := value+2;
  writeln(value);
     }
  // The modulus operation
  {
   In pascal the modulus operator is the word/phrase mod
   and not %
  }
  {
  modls := value mod 3;
  writeln(modls);

  //*********************************************************************
  // Playing with Booleans
  iscorrect := TRUE;
  writeln(iscorrect);

  // Interesting the compiler does not like 0/1
  // It only excepts TRUE or FALSE
  isCorrect := FALSE;
  writeln(isCorrect);

  //*********************************************************************
  // this 'a' character is the symbolic notion
  a := 'a';
  writeln(a);


  // this #78 is the number notion of the character 'N'
  b := #78;
  writeln(b);

  // [
  a := #91;
  writeln(a);

  // ~
  b := #126;
  writeln(b);

  // they did not correspond to the ANSI chart given on
  // this web site: https://msdn.microsoft.com/en-us/library/aa245259(v=vs.60).aspx
  a := #213;
  b := #241;
  writeln(a);
  writeln(b);

  // The author says that, when indication letters, digits, symbols
  // we should use the symbloic notation, like 1,2,A,B,N etc
  // For special characters we, should user numeric notation.

  // This is an example of new line characters in a string
  writeln('Hello world'+#13#10+'This is Sudipta Sharif.');

  writeln('Here is another example of newline char usage'+newLine+'This line is the next line');
  }
  //*********************************************************************
  // let's try out some of the functions
  value := 10;
  num := 5.5;

  // incement those ordinals
  Inc(value);
  //Inc(num);
  //writeln(value);
  //writeln(num);
  // Turns out that the inc and dec functions only work on
  // integer values and not on floating point numbers

  Dec(value);
  //writeln(value);

  value := 10;
  //writeln(Odd(value));
  //Inc(value);
  //writeln(Odd(value));
  //writeln(Pred(value));
  //writeln(Succ(value));
  //writeln(ord(value));
  Inc(value);
  writeln(G);


  // wait for the keyboard input from the user
  // this will help to display the above display messages
  readln;
end.
