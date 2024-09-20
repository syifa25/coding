program tugas_2;
uses crt;

var
nama : string;
gaji_pokok, gaji_total : longint;
lembur , tidak_bekerja : integer;

begin
    clrscr;
    write('Nama Karyawan    : ');
    readln(nama);
    write('Gaji Pokok       : ');
    readln(gaji_pokok);
    write('Lembur(Hari)     : ');
    readln(lembur);
    write('Tidak Bekerja    : ');
    readln(tidak_bekerja);

    gaji_total := gaji_pokok + (150000*lembur) - (30000*tidak_bekerja);
    writeln('-----Gaji-----');
    write('Gaji total       : Rp ', gaji_total);
end.