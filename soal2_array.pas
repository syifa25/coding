program jumlah_matriks;
uses crt;

var
baris1, kolom1, baris2, kolom2,i ,j,baris,kolom : integer;
matriks1, matriks2, matriks_hasil : array [1..5,1..5] of integer;

begin
    clrscr;
    write('Masukkan baris matriks 1 : ');
    readln(baris1);
    write('Masukkan kolom matriks 1 : ');
    readln(kolom1);
    write('Masukkan baris matriks 2 : ');
    readln(baris2);
    write('Masukkan kolom matriks 2 : ');
    readln(kolom2);

    writeln;
    //periksa apakah dimensi nya sama 
    if ((kolom1 <> kolom2) or (baris1 <> baris2)) then
    begin
        writeln('Maaf kedua matriks tidak dapat dijumlah kan karena dimensinya berbeda');
        exit;
    end
    else if ((kolom1 = kolom2) and (baris1 = baris2)) then
        begin
            baris := baris1;
            kolom := kolom1;
        end;

    //periksa jika baris atau kolom ada yang lebih dari 5
    if ((kolom > 5) or (baris > 5)) then
    begin
        writeln('Maaf salah satu kolom atau baris melebihi 5, silahkan isi maksimal 5 saja');
        exit;
    end;

    //ini matriks 1
    for i := 1 to baris do 
    begin
        for j := 1 to kolom do
            begin
                write('Matriks 1 [',i,',',j,'] : ');
                readln(matriks1[i,j]);
            end;
    end;

    writeln;

    //ini matriks 2
    for i := 1 to baris do 
    begin
        for j := 1 to kolom do
            begin
                write('Matriks 2 [',i,',',j,'] : ');
                readln(matriks2[i,j]);
            end;
    end;

    //ini penjumlahan
    for i := 1 to baris do
    begin
        for j := 1 to kolom do 
            matriks_hasil[i,j] := matriks1[i,j] + matriks2[i,j];
    end;

    //ini output
    for i := 1 to baris do
    begin
        for j := 1 to kolom do 
            write(matriks_hasil[i,j],' ');

            writeln;
            
    end;
end.