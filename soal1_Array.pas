program antrian;
uses crt;

var
n,i : integer;
urutan : array [1..10] of integer;

begin
    clrscr;
    write ('Masukkan n : ');
    readln (n);

    for i := 1 to n do 
    begin
        read (urutan [i]);
    end;

    for i := n downto 1 do 
    begin
        write(urutan[i], ' ');
    end;

    

end.
