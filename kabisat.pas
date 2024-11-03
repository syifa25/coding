program kabisat;

uses crt;

var
tahun : integer;
begin
    clrscr;
    write('Masukkan tahun yang ingin di cek : ');
    readln(tahun);

    if (tahun mod 400 = 0) and (tahun mod 100 <> 0) or (tahun mod 4 = 0) then
    writeln('Tahun ',tahun,' adalah tahun kabisat')

    else
    writeln('Tahun ', tahun,' bukan tahun kabisat');
end.