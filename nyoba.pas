program hasilStudi;
uses crt;

type 
  hasil = record
    matkul : string;
    sks : integer;
    nilai : string[2];
  end;

  data = record
    nama : string[20];
    nim : string[9];
    jumlah_matkul : integer;
    hasil_studi : array[1..20] of hasil;  // Mengubah untuk menampung mata kuliah dengan benar
    total_sks : integer;
    total_skor : real;
  end;

var
  mahasiswa : array[1..50] of data;
  jumlah, i, j : integer;
  skor, IP : real;

function hitungskor(nilai: string): real;
begin
  case nilai of
    'A' : hitungskor := 4.0;
    'B+' : hitungskor := 3.5;
    'B' : hitungskor := 3.0;
    'C+' : hitungskor := 2.5;
    'C' : hitungskor := 2.0;
    'D' : hitungskor := 1.0;
    'E' : hitungskor := 0.0;
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
    writeln('Mahasiswa ke-', i);
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

      // Input untuk setiap mata kuliah
      for j := 1 to jumlah_matkul do
      begin
        with hasil_studi[j] do
        begin
          writeln('Mata kuliah ke-', j);
          write('Nama Mata Kuliah : ');
          readln(matkul);
          write('Jumlah sks       : ');
          readln(sks);
          write('Nilai (Huruf)     : ');
          readln(nilai);

          // Menghitung skor untuk mata kuliah
          skor := hitungskor(nilai) * sks;
          total_sks := total_sks + sks;
          total_skor := total_skor + skor;
          
          writeln;  // Untuk pemisah antar mata kuliah
        end;
      end;

    end;
    writeln('-------------------------------');
  end;

  clrscr;
  // Menampilkan hasil akhir untuk setiap mahasiswa
  for i := 1 to jumlah do
  begin
    with mahasiswa[i] do
    begin
      writeln('Nama   : ', nama);
      writeln('Nim    : ', nim);
      writeln('--------------------------------------------------------');
      writeln('| NO | Mata Kuliah            | SKS | Nilai | Skor   |');
      writeln('--------------------------------------------------------');
      
      for j := 1 to jumlah_matkul do 
      begin
        with hasil_studi[j] do
        begin
          // Menampilkan setiap mata kuliah
          writeln('|  ', j:2, ' | ', matkul:22, ' | ', sks:3, ' | ', nilai:3, ' | ', hitungskor(nilai) * sks:6:1, ' |');
        end;
      end;
      
      writeln('--------------------------------------------------------');
      writeln('| Total                                      | ', total_skor:6:1, ' |');
      IP := total_skor / total_sks;
      writeln('Jumlah sks : ', total_sks);
      writeln('IP         : ', IP:0:2);
      writeln('--------------------------------------------------------');
      writeln('Tekan sembarang tombol untuk melihat data selanjutnya ...');
      readln;
    end;
  end;
end.
