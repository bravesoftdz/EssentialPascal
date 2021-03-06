program ArrayTypes;
{$APPTYPE CONSOLE}
uses
  ExceptionLog,
  SysUtils;

// type defination
type
   // Temp in F
   TempArray = array[0..6] of Integer; // Size is 7
   NamesArray = array [0..6] of String;// Size = 7
   FlowerArray = array[0..4] of String;// Size = 5
   
// variable declaration
var
   tempList : TempArray;
   namesList : NamesArray;
   // Sweet Smelling Garden Flowers
   ssFlowers: FlowerArray;
   // Poisonous Flowers
   pFlowers: FlowerArray;

   // array of day's names
   dayNames: NamesArray;

   // variable to store the length of an array
   arrayLength: Integer;
   // Low and High bounds
   BLow: Integer;
   BHigh: Integer;

begin
  // Let's populate the Temp
  tempList[0] := 43;
  tempList[1] := 45;
  tempList[2] := 39;
  tempList[3] := 42;
  tempList[4] := 51;
  tempList[5] := 52;
  tempList[6] := 55;

  // Let' print some of these values
  Writeln(tempList[3]);
  Writeln(tempList[6]);
  Writeln(tempList[2]);


  //Let's populate the Names
  namesList[0] := 'Siraj';
  namesList[1] := 'Momotaz';
  namesList[2] := 'Silvia';
  namesList[3] := 'Sudipta';
  namesList[4] := 'Ridwan';
  namesList[5] := 'Dadu';

  // Let's print these names
  Writeln(namesList[5]);
  Writeln(namesList[3]);
  Writeln(namesList[2]);

  // What happens when we try to print a name that is out of bound
  //Writeln(namesList[7]);
  // Good we get an error saying that the 'Constant Expression violates subrange bounds'

  // Let's store some sweet smelling flower names
  ssFlowers[0] := 'Magnolia';
  ssFlowers[1] := 'Lilac';
  ssFlowers[2] := 'Freesia';
  ssFlowers[3] := 'Violet';
  ssFlowers[4] := 'Sweet Pea';

  // Let's try to insert another ss flower
  // Which should give us an error becase we
  // declared an array with size 5
  //ssFlowers[5] := 'Rose';
  // We got the error Constant expression violates subrange bounds

  // Let's try to print those flowers to the screen
  Writeln('*****************************************************************');
  Writeln('Here are some sweet smelling flowers');
  Writeln('1: '+ssFlowers[0]);
  Writeln('2: '+ssFlowers[1]);
  Writeln('3: '+ssFlowers[2]);
  Writeln('4: '+ssFlowers[3]);
  Writeln('5: '+ssFlowers[4]);
  Writeln('*****************************************************************');

  // Let's store some poisonous flower names
  pFlowers[0] := 'Aconitum';
  pFlowers[1] := 'Buttercups';
  pFlowers[2] := 'Century Plant';
  pFlowers[3] := 'Dogbane';
  pFlowers[4] := 'Foxglove';

  Writeln('*****************************************************************');
  Writeln('Here are some poisonous flowers');
  Writeln('1: '+pFlowers[0]);
  Writeln('2: '+pFlowers[1]);
  Writeln('3: '+pFlowers[2]);
  Writeln('4: '+pFlowers[3]);
  Writeln('5: '+pFlowers[4]);
  Writeln('*****************************************************************');

  // Store the names of days
  dayNames[0] := 'Sunday';
  dayNames[1] := 'Monday';
  dayNames[2] := 'Tuesday';
  dayNames[3] := 'Wednesday';
  dayNames[4] := 'Thursday';
  dayNames[5] := 'Friday';
  dayNames[6] := 'Saturday';

  // Get the length of array
  arrayLength := length(dayNames);

  Writeln('The total number of days in a week are: '+IntToStr(arrayLength));
  Writeln('Those day are: ');
  Writeln('1: '+dayNames[0]);
  Writeln('2: '+dayNames[1]);
  Writeln('3: '+dayNames[2]);
  Writeln('4: '+dayNames[3]);
  Writeln('5: '+dayNames[4]);
  Writeln('6: '+dayNames[5]);
  Writeln('7: '+dayNames[6]);

  // Lets the low found of some integers
  BLow := Low(ssFlowers);
  BHigh := High(ssFlowers);
  // Let's print out those bounds
  Writeln('Low Bound of Sweet Smelling Flowers are: '+IntToStr(BLow));
  Writeln('High Bound of Sweet Smelling Flowers are: '+IntToStr(BHigh));

  //Writeln(StrToInt(''));
  //Writeln(StrToFloat(''));

  Writeln(IntToStr(-1));




  // Wait for user input
  Readln;


end.