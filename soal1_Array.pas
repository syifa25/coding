program antrian;
uses crt;

var
i , n: integer;
urutan : array [1..10] of string;

begin
    clrscr;
    write ('Masukkan jumlah mahasiswa dalam antrian (1 <= n <= 10) : ');
    readln (n);

    //agar n tidak melebihi batas 1 <= n <= 10
    if (n < 1) or (n > 10) then
    begin
        writeln('Jumlah mahasiswa tidak sesuai');
    end;

    for i := 1 to n do 
    begin
        write ('NIM ke-',i, ' : ');
        readln (urutan [i]);
    end;

    writeln;
    writeln('Urutan Mahasiswa dari belakang ke depan : ');
    for i := n downto 1 do 
    begin
        write(urutan[i]);
        write(' ');
    end;

    

end.
