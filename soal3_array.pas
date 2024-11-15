program uas;
uses crt;

var
nilai : array [1..10] of integer;
i, j, n, temp : integer;

begin
    clrscr;
    write('Masukkan jumlah mahasiswa    : ');
    readln(n);

    if ((n < 1) or (n > 10)) then
    begin
        writeln('Jumlah mahasiswa harus antara 1 - 10');
        exit;
    end;

    for i := 1 to n do
    begin
        write('Nilai Mahasiswa ke-',i, ' : ');
        readln(nilai[i]);
    end;

    for i := 1 to n-1 do 
    begin
        for j := 1 to n-i do
        begin
            if (nilai[j] > nilai[j + 1]) then
            begin
                temp := nilai[j];
                nilai[j] := nilai[j + 1];
                nilai[j + 1] := temp; 
            end;
        end;
    end;

    for i := 1 to n do 
    writeln(nilai[i]);


end.