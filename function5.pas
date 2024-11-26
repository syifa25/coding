program function5;
uses crt;

function DeretA(n: integer): integer;
var
    a, b, i: integer;
begin
    a := 1; 
    b := 1;
    for i := 1 to n do
    begin
        write(a, ' ');
        b := a + b;
        a := b - a;  
    end;
    writeln;
end;

function DeretB(n: integer): integer;
var
    i, hasil: integer;
begin
    hasil := 1;
    for i := 1 to n do
    begin
        write(hasil, ' ');
        hasil := hasil * 2;
    end;
    writeln;
end;

function DeretC(n: integer): integer;
var
    i, hasil: integer;
begin
    for i := 1 to n do
    begin
        hasil := i * i;
        write(hasil, ' ');
    end;
    writeln;
end;

function DeretD(n: integer): integer;
var
    i, hasil: integer;
begin
    for i := 1 to n do
    begin
        hasil := i * (i + 1);
        write(hasil, ' ');
    end;
    writeln;
end;

var
    n: integer;

begin
    clrscr;
    write('Masukkan jumlah bilangan dalam deret: ');
    readln(n);

    write('Deret A: ');
    DeretA(n);
    
    write('Deret B: ');
    DeretB(n);
    
    write('Deret C: ');
    DeretC(n);
    
    write('Deret D: ');
    DeretD(n);
end.
