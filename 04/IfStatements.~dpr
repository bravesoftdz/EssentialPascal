program IfStatements;
{$APPTYPE CONSOLE}
uses
  ExceptionLog,
  SysUtils;

// Var declaration
var
   mood,result,number: Integer;
   input,str1, str2, text: String;
   income,tax,grossIncome,taxRate:real;

begin
   // Some simple if statements
   Writeln('Please Enter you Annual Income:');
   Readln(input);
   income:= StrToInt(input);
   //Writeln(income);
   //if((number>=0)and(number))

   // set the tax rate
   if((income >= 0.0) and (income < 9325.00))
   then taxRate:= 0.10
   else if((income >= 9325.00) and (income < 37950.00))
   then taxRate:= 0.15
   else if((income >= 37950.00 )and (income < 91900.00))
   then taxRate:= 0.25
   else if((income >= 91900.00) and (income < 191650.00))
   then taxRate:= 0.28
   else if((income >= 191650.00) and (income < 416700.00))
   then taxRate:= 0.33
   else if((income >= 416700)and(income < 418400))
   then taxRate:= 0.35
   else taxRate:= 39.60;

   // See the tax rate
   Writeln('Tax Rate: '+Format('%.2f',[taxRate]));

   // calculate the tax
   tax:= income * taxRate;
   // calculate the gross income
   grossIncome:= income - tax;

   // Print the tax amount and the income
   Writeln('Total Annual Tax Paid: '+Format('%m',[tax]));
   Writeln('Total Gross Income: '+Format('%m',[grossIncome]));



  // Wait for user input to display above messages
  Readln;
   
end.