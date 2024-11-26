program procedure5;
uses crt;

procedure DeretA(n: integer);
var
    a, b, i: integer;
begin
    a := 1; 
    b := 1;
    
    write('Deret A: ');
    for i := 1 to n do
    begin
        write(a, ' ');
        b := a + b;
        a := b - a;  
    end;
    writeln;
end;

procedure DeretB(n: integer);
var
    i, hasil: integer;
begin
    hasil := 1;
    write('Deret B: ');
    for i := 1 to n do
    begin
        write(hasil, ' ');
        hasil := hasil * 2;
    end;
    writeln;
end;

procedure DeretC(n: integer);
var
    i, hasil: integer;
begin
    write('Deret C: ');
    for i := 1 to n do
    begin
        hasil := i * i;
        write(hasil, ' ');
    end;
    writeln;
end;

procedure DeretD(n: integer);
var
    i, hasil: integer;
begin
    write('Deret D: ');
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

    DeretA(n);
    DeretB(n);
    DeretC(n);
    DeretD(n);

end.
