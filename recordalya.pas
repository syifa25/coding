program biodatamahasiswa;
uses crt;

type 
biodata = record
nama : string [50];
nim : string [20];
nohp : string[10];
alamat : string[80];
tempatlahir : string[50];
tanggallahir : string[10];
jeniskelamin : string[10];
end;

var 
mahasiswa : array of biodata;
i,n : integer;

begin
clrscr;
    write('masukkan jumlah mahasiswa : ');
    readln(n);
    SetLength(mahasiswa, n);
        for i := 0 to n-1 do
            begin
                writeln('masukkan data mahasiswa ke-', i+1);
                with mahasiswa[i] do begin
                    write('nama : ');
                    readln(nama);
                    write('nim : ');
                    readln(nim);
                    write('no hp : ');
                    readln(nohp);
                    write('alamat : ');
                    readln(alamat);
                    write('tempat lahir : ');
                    readln(tempatlahir);
                    write('tanggal lahir (dd/mm/yy) : ');
                    readln(tanggallahir);
                    repeat
                    if (jeniskelamin <> 'cowo') or (jeniskelamin <> 'cewe') then
                        
                    until (jeniskelamin = 'cowo') or (jeniskelamin = 'cewe')
                end;
            end;

writeln('data mahasiswa yang telah diinput :');
    for i := 0 to n-1 do
        begin
            if mahasiswa[i].nim = kriterianim then
            writeln('mahasiswa ke-', i+1);
            writeln('nama : ', mahasiswa[i].nama);
            writeln('nim : ', mahasiswa[i].nim);
            writeln('no hp : ', mahasiswa[i].nohp);
            writeln('alamat : ', mahasiswa[i].alamat);
            writeln('tempat lahir : ', mahasiswa[i].tempatlahir);
            writeln('tanggal lahir : ', mahasiswa[i].tanggallahir);
        end;
            if mahasiswa[i].jeniskelamin = 'cowo' then
                writeln('Jenis kelamin: Laki-laki')
            else if mahasiswa[i].jeniskelamin = 'cewe' then
                writeln('Jenis kelamin: Perempuan');
            writeln;
        end;
end.