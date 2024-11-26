program biodataMahasiswa;
uses crt;

type 
    date = record
        tanggal,bulan, tahun : integer;
    end;

    biodata = record 
        nama, alamat, tempat_lahir : string;
        nim : string [9];
        noHP : string [12];
        jenis_kelamin : char; 
        tanggal_lahir : date;
    end;

var 
data : array of biodata;
i , jumlah : integer;

begin
clrscr;
    writeln ('Program Biodata');
    write('Masukkan jumlah mahasiswa  : ');
    readln(jumlah);
    
    SetLength (data,jumlah);
    
        for i := 1 to jumlah do
            begin
                writeln('Data Mahasiswa ke-', i);
                with data [i]
                do begin
                    write('Nama                 : ');
                    readln(nama);
                    repeat
                        write('Jenis Kelamin(P/L)   : ');
                        readln(jenis_kelamin);
                        jenis_kelamin := UpCase(jenis_kelamin); 

                        if (jenis_kelamin <> 'L') and (jenis_kelamin <> 'P') then
                            writeln('Input tidak valid! Masukkan "L" untuk Laki-laki atau "P" untuk Perempuan.');
                    until (jenis_kelamin = 'L') or (jenis_kelamin = 'P');

                    write('Nim                  : ');
                    readln(nim);
                    write('Alamat               : ');
                    readln(alamat);
                    write('No Hp                : ');
                    readln(noHP);
                    write('Tempat Lahir         : ');
                    readln(tempat_lahir);

                    with tanggal_lahir do begin
                        writeln('Tanggal Lahir: ');
                        write('- Tanggal    : ');
                        readln(tanggal);
                        write('- Bulan      : ');
                        readln(bulan);
                        write('- Tahun      : ');
                        readln(tahun);
                    end;
                end;
                writeln;
        end;

        writeln('--------------------------------------');
        writeln('Data Mahasiswa dan kelas yang ditentukan :');
        writeln;

        for i := 1 to jumlah do
        begin
            with data [i] do begin 
                writeln('Nama             : ',nama);
                writeln('Nim              : ',nim);
                writeln('Alamat           : ',alamat);
                writeln('No Hp            : ',noHP);
                writeln('Tempat Lahir     : ',tempat_lahir);

                with tanggal_lahir do begin 
                    writeln('Tanggal lahir    : ',tanggal,'/',bulan,'/',tahun);
                end;
                if jenis_kelamin = 'P' then
                    writeln('Masuk ke kelas A dengan narahubung Kak Khoirika')
                else
                    writeln('Masuk ke kelas B dengan narahubung Bang Ahmad');
            end;
            writeln('-------------------------------------------------');
        writeln;
    end;
    writeln('Silakan hubungi narahubung masing masing kelas agar dapat dimasukkan ke dalam grup whatsapp');
    readln;
end.