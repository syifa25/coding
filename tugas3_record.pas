program hasilStudi;
uses crt;

type 
hasil = record
    matkul : string;
    sks : integer;
    nilai : string[2];
end;

data = record
    nama : string [20];
    nim : string[9];
    jumlah_matkul : integer;
    hasil_studi : hasil;
    total_sks : integer;
    total_skor :real;
end;

var
mahasiswa : array [1..50] of data;
khs : array [1..20] of hasil;
jumlah, i,j : integer;
skor, IP  : real;

function hitungskor(nilai:string):real;
begin
    case nilai of
        'A' : hitungskor := 4.0;
        'B+': hitungskor := 3.5;
        'B': hitungskor := 3.0;
        'C+': hitungskor := 2.5;
        'C': hitungskor := 2;
        'D': hitungskor := 1;
        'E': hitungskor := 0;
    else
        hitungskor := 0.0;
    end;
end;

begin
    clrscr;
    write('Masukkan jumlah mahasiswa  : ');
    readln(jumlah);

    for i := 1 to jumlah do 
    begin
        writeln('Mahasiswa ke-',i);
        with mahasiswa[i] do
        begin
            write('Nama                 : ');
            readln(nama);
            write('Nim                  : ');
            readln(nim);
            write('Jumlah Mata Kuliah   : ');
            readln(jumlah_matkul);

            writeln('------------------------');
        
            total_skor := 0;
            total_sks := 0;

            for j := 1 to jumlah_matkul do
            begin
            with khs[j] do
                begin
                    writeln('Mata kuliah ke-',j);
                    write('Nama Mata Kuliah : ');
                    readln(matkul);
                    write('Jumlah sks       : ');
                    readln(sks);
                    write('Nilai(Huruf)     : ');
                    readln(nilai);

                    
                    writeln;
                    total_sks := total_sks + sks;
                end;
                
                total_skor := total_skor + skor;
            end;

        end;
        writeln('-------------------------------');
    end;
    clrscr;
    for i := 1 to jumlah do
    begin
        with mahasiswa[i] do
        begin
            writeln('Nama   : ',nama);
            writeln('Nim    : ',nim);
            writeln('---------------------------------------------------');
            writeln('| NO | Mata Kuliah            | SKS | Nilai | Skor |');
            for j := 1 to jumlah_matkul do 
            begin
                with khs[j] do
                begin
                    skor := hitungskor(nilai) * sks;
                    writeln('|  ',j,' | ',matkul:22,' |   ',SKS,' |   ',nilai:3,' | ',skor:0:1,'    |');
                end;
                writeln('---------------------------------------------------');
                writeln('| Total                                     | ', total_skor:0:,' |');
                IP := total_skor / total_sks;
                writeln('Jumlah sks : ', total_sks);
                writeln('IP        : ',IP);
                writeln('Tekan sembarang tombol untuk melihat data selanjutnya ..');
                readln;
            
            end;
        end;
        
    end;
end.