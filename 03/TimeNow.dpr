program TimeNow;

{$APPTYPE CONSOLE}

uses
  ExceptionLog,
  SysUtils;

// Turns out Delphi actually uses
// real types to handle data and time

// Delphi uses real types to handle data and time

// TDateTime is not a predefined data type that the compiler understands
// TDateTime is a reference type, that is part of the Delphi library SysUtils

var
  StartTime: TDateTime;
  CurrentDate: TDateTime;
  CurrentTime: TDateTime;
  ThisMoment : TDateTime;

  // DateTime Format
  Format: String;

begin
  // Get the current Date and Time
  StartTime := Now;
  //writeln (DateTimeToStr (StartTime));

  // Get the current Date
  CurrentDate := Date;
  //writeln(DateToStr(CurrentDate));

  // Get only the current Time
  CurrentTime := Time;
  //writeln(TimeToStr(CurrentTime));

  // Empty line
  //writeln('');

  // From example website
  ThisMoment := Now;
  //Writeln('Now: ',FormatDateTime('hh:nn',ThisMoment));

  // Let's learn about the FormatDateTime Function
  Format := 'dddd, mmmm, d, yyyy hh:mm AM/PM';

  Writeln(FormatDateTime(Format,ThisMoment));


  readln;
end.
