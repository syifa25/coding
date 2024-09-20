program lapangan;
uses crt;

var 
panjang, lebar, luas, keliling : integer;

begin
    clrscr;
    writeln('---Menghitung Luas dan Keliling Lapangan Sepak Bola---');
    write('Panjang  : ');
    readln(panjang);
    write('Lebar    : ');
    readln(lebar);
    writeln('--Luas dan Keliling Lapangan Sepak Bola--');
    luas := panjang * lebar;
    keliling := 2 * (panjang + lebar);
    writeln('Luas       : ', luas, ' Meter');
    writeln('Keliling   : ', keliling, ' Meter');

end.