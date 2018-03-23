program DelphiLoops;
{$APPTYPE CONSOLE}
uses
  ExceptionLog,
  Math,
  SysUtils;

var
   i,count,guessNum,randNum,tries: Integer;
   letter: char;

begin
   // After variable declaration, we need to initialize the varaible
   i:= 0;
  // Well the first thing to note is that
  // the for loop in delphi is not as flexible as in Java
  // It's strictly based on counter

  // It turns out you can increment the loop counter only by 1 in the for loops
  // That means the Delphi compiler does not let you change the counter variable
  // In this case it's the variable count
  For count:= 0 to 9 do
  begin
   i:= i+2;
   Writeln('Incrementing i by 2, current i value is: ',IntToStr(i));
   Writeln('Current value of count: ',count);
  end;

  // Looping throug letters
  for letter:= 'A' to 'B' do
  begin
   Writeln('Letter = '+letter);
  end;

  // We can also use for loops to count down
  for letter:= 'Z' downto 'M' do
  begin
   Writeln('Letter = '+letter);
  end;

  // here is another for loop counting down
  for i:= 10 downto 5 do
  begin
   Writeln(i);
  end;

  //*********************************************
  // Let's play a random number game
  Randomize;
  randNum := 1 + Random(20);
  // Initialize tries to 0
  tries:= 0;
  Writeln('Guess the number between 1-20');
  Readln(guessNum);
  while(guessNum<>randNum) do
  begin
   tries := tries + 1;
   Writeln('Not accurate, please try again!');
   if(guessNum < randNum)
   then Writeln('Go higher!!! Your guess is less than the random Number.')
   else Writeln('Go lower!!! Your guess is greater than the random Number.');

   Readln(guessNum);
  end;

  Writeln('You got it!!! ');
  Writeln('The random Number was: ',randNum);
  Writeln('You guess it in ',(tries+1),' tries.');
  Writeln('**********************************************');

  // Ask the user, if he/she wants to play again?
  Writeln('Do you want to play again?');
  Writeln('Please type [y]/[n]. Thanks!!');
  Readln(letter);

  // now check and beign or exit the game
  if(letter = 'y') then
  begin
   Randomize;
   randNum := 1 + Random(20);
   tries:= 0;
   Writeln('Guess the number between 1-20');
   Readln(guessNum);
   while(guessNum<>randNum) do
   begin
      tries := tries + 1;
      Writeln('Not accurate, please try again!');
      if(guessNum < randNum)
      then Writeln('Go higher!!! Your guess is less than the random Number.')
      else Writeln('Go lower!!! Your guess is greater than the random Number.');
      Readln(guessNum);
   end;
     Writeln('You got it!!! ');
     Writeln('The random Number was: ',randNum);
     Writeln('You guess it in ',(tries+1),' tries.');
     Writeln('**********************************************');
  end
  else Writeln('Thank you for playing.');




  // Wait for user input
  Readln;
end.