program function3;
uses crt;

function faktorial(nilai : integer) : real;
var 
i : integer;

begin
    faktorial := 1;
    for i := 1 to nilai do
    faktorial := faktorial * i;

end;

var
nilai : integer;
hasil : real;

begin
    clrscr;
    write('Nilai    : ');
    readln(nilai);

    hasil := faktorial(nilai);
    writeln('Hasil  = ', hasil:0:0);
end.