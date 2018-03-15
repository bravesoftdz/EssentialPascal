program EPRange;

{$APPTYPE CONSOLE}

const
  Thousand = 1000;
  Pi = 3.14;
  AuthorName = 'Marco Cantu''';

resourcestring
  strAuthorName = 'Marco Cantu''';
  strBookName = 'Essential Pascal';

begin
  writeln (Thousand);
  writeln (Pi);
  writeln (AuthorName);

  writeln (strBookName + ' ' + strAuthorName);
                              
  readln;
end.
