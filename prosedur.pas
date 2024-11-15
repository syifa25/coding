program ProsedurDenganParameter;
uses crt;

type
    Huruf = string[15];

procedure stars(Nama : Huruf);
var
    k, panjang : integer;
begin
    k := 0;
    panjang := length(Nama) + 6;
    repeat
        write('*');
        k := k + 1;
    until (k > panjang);
    writeln;
end;

var 
    Nama : Huruf;
begin
    clrscr;
    write ('Nama Anda = '); readln(Nama);
    Stars(Nama);
    writeln('Hello ',Nama, '!');
    Stars(Nama);
end.