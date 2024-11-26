program procedure3;
uses crt;

procedure faktorial(nilai : integer; var hasil : real);
var
i : integer;

begin
    hasil := 1;
    for i := 1 to nilai do
    hasil := hasil * i;
end;

var 
nilai : integer;
hasil : real;  //menggunakan real agar bisa untuk nilai yang besar
begin
    clrscr;

    write('Nilai    : ');
    readln(nilai);

    faktorial(nilai,hasil);
    writeln('Hasil      = ', hasil:0:0);
end.