program Task71;

{$APPTYPE CONSOLE}

const
   N=4;
var
   Arr:array [1..N] of int64 = (2,3,4,5);
   FirstProd,TempKey,TempProd,i,j: int64;
begin
   FirstProd:=1;
   for i := N downto 2 do
   begin
      TempProd := 1;
      FirstProd := FirstProd * Arr[i];
      for j := 1 to i-1 do
      begin
         TempProd := TempProd * Arr[j];
      end;
      Arr[1]:= Arr[1]*Arr[i];
      Arr[i]:= TempProd;
   end;
   Arr[1]:=FirstProd;
   for  i:= 1 to N do
      Write(Arr[i],' ');
   Readln;
end.
