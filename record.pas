uses crt;


type biodata =
    record nama :
    string [25];
    NIM : string [10];
    umur : integer;
end; 

var 
data : array [1..20] of biodata;
i, n : integer;

begin
    clrscr;
    write('Masukkan jumlah mahasiswa : ');
    readln(n);

    for i := 1 to n do
    begin
        with data[i] do
            begin
            writeln('Data ke ',i);
            write('Masukkan Nama Anda   : ');
            readln(nama);
            write('Masukkan NIM anda    : ');
            readln(NIM);
            write('Masukkan umur anda   : ');
            readln(umur);
            writeln;
            end;
            
    end;

    for i := 1 to n do 
    begin
        with data[i] do
        begin
        writeln('Data ke ', i);
        writeln('Nama anda  : ',nama);
        writeln('NIM anda   : ',NIM);
        writeln('Umur anda  : ',umur);
        writeln;
        end;
    end;
end.