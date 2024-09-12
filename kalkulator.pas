program kalkulator;

uses crt;
var
bil1, bil2, kali, tambah, kurang, modulo, dive : integer;
bagi : real;

begin
clrscr;
    write('Masukkan bilangan 1 : ');
    read(bil1);
    write('Masukkan bilangan 2 : ');
    read(bil2);
    kali := bil1*bil2;
    bagi := bil1/bil2;
    tambah := bil1 + bil2;
    kurang := bil1 - bil2;
    dive := bil1 div bil2;
    modulo := bil1 mod bil2;
    writeln('Hasil kali adalah: ', kali);
    writeln('Hasil bagi adalah: ', bagi:5:3);
    writeln('Hasil tambah adalah: ', tambah);
    writeln('Hasil kurang adalah: ', kurang);
    writeln('Hasil modulo adalah: ', modulo);
    writeln('Hasil div adalah: ', dive);
    end.