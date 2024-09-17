program nilai;
uses crt;

var
nama : string;
nilai_aktif, nilai_tugas, nilai_ujian, nilai_m_keaktifan, nilai_m_tugas, nilai_m_ujian, nilai_akhir : real;

begin
clrscr;
    write ('Nama Mahasiswa   : ');
    readln(nama);
    write ('Nilai Keaktifan  : ');
    readln(nilai_aktif);
    write ('Nilai Tugas      : ');
    readln(nilai_tugas);
    write ('Nilai Ujian      : ');
    readln(nilai_ujian);

    nilai_m_keaktifan := nilai_aktif * 20/100;
    nilai_m_tugas := nilai_tugas * 35/100;
    nilai_m_ujian  := nilai_ujian * 45/100;
    nilai_akhir := nilai_m_keaktifan + nilai_m_tugas + nilai_m_ujian;

    writeln ('----Nilai Akhir Mahasiswa----');
    write('Nilai Akhir : ', nilai_akhir:0:2);
end.