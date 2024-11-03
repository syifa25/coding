uses crt;
var
matriks1, matriks2, matriks_hasil : array [1..3,1..3] of integer;
i,j : integer;

begin
    clrscr;
    //ini input matriks 1
    writeln('Masukkan matriks 1 : ');
    for i:= 1 to 3 do
    begin
        for j := 1 to 3 do
        begin
            write('Matriks 1 [',i,',',j,'] : ');
            readln(matriks1[i,j]);
        end;
    end;

    //ini input matriks 2
    writeln('Masukkan matriks 2 : ');
    for i:= 1 to 3 do
    begin
        for j := 1 to 3 do
            begin
                write('Matriks 2 [',i,',',j,'] : ');
                readln(matriks2[i,j]);
            end;
    end;

    //ini penjumlahan
    for i := 1 to 3 do
    begin
        for j := 1 to 3 do 
            matriks_hasil[i,j] := matriks1[i,j] + matriks2[i,j];
    end;

    //ini output
    for i := 1 to 3 do
    begin
        for j := 1 to 3 do 
            write(matriks_hasil[i,j],' ');

            writeln;
            
    end;
end.