uses crt;

var 
n, i, suku, jumlah : integer;
begin
    clrscr;
    write('suku ke-');
    readln(n);
    suku := 0;

    for i := 1 to n do
    begin
        if (i mod 2 = 1) then
        suku := suku + 5;
        jumlah := suku

        else
        jumlah +:= suku 
    end;

    writeln('suku ke- ', n, ' jumlahnya adalah ', jumlah);

end.