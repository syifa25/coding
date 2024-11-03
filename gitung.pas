uses crt;

var
n, i, jumlah, perkalian : integer;

begin
    write('Masukkan n : ');
    readln(n);

    jumlah := 0;
    perkalian := 0;
    for i := 1 to n dowz
    begin
        jumlah := jumlah + n;
        perkalian := perkalian * n;
    end;

    writeln('jumlah : ', jumlah);
    writeln('perkalian : ', perkalian);
end.