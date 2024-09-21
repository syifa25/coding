program lapangan;
uses crt;

var 
panjang, lebar, luas, keliling : real;

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
    writeln('Luas       : ', luas:0:2, ' Meter');
    writeln('Keliling   : ', keliling:0:2, ' Meter');

end.
