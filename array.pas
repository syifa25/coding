program bilangan_array;
uses crt;
type larik =array[1..10]  of integer;

var 
bilangan : larik;
i : integer;

begin
    clrscr;
    
    for i := 1 to 10 do 
    begin
        write('Bilangan', i, ' = ');
        readln(bilangan[i]);
        
    end;
    clrscr;
    for i := 1 to 10 do
    writeln('Nilai variabel bilangan ke ', i, ' = ', bilangan[i]);
    

end.