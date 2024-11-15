program nilai_rata_rata;
uses crt;

var
n,i : integer;
tugas, kuis, UTS, UAS, total_nilai : array [1..5] of integer;
rerata : array [1..5] of real;


begin
    clrscr;
    write('Masukkan jumlah mahasiswa    : ');
    readln(n);

    if ((n < 1) or (n > 5)) then
    begin
        writeln('Jumlah mahasiswa harus antara 1 - 5');
        exit;
    end;

    for i := 1 to n do
    begin
        writeln('Masukkan nilai mahasiswa ke-', i , ' : ');
        write('Nilai tugas  : ');
        readln(tugas[i]);
        write('Nilai kuis   : ');
        readln(kuis[i]);
        write('Nilai UTS    : ');
        readln(UTS[i]);
        write('Nilai UAS    : ');
        readln(UAS[i]);
        writeln;

        total_nilai[i] := (tugas[i] + kuis[i] + UTS[i] + UAS[i]);
        rerata[i] := total_nilai[i] /4;
    end;

    writeln('Keterangan lulus atau tidak :');
    for i := 1 to n do
    begin
        writeln('Nilai mahasiswa ke-', i , ' : ');
        writeln('Nilai tugas    : ', tugas[i]);
        writeln('Nilai kuis     : ', kuis[i]);
        writeln('Nilai UTS      : ', UTS[i]);
        writeln('Nilai UAS      : ', UAS[i]);
        writeln('Total Nilai    : ', total_nilai[i]);
        writeln('Rata - rata    : ', rerata[i]:0:2);
        
        if (rerata[i] >= 70) then
            writeln('Keterangan     : Lulus')
        else
            writeln('Keterangan     : Tidak Lulus');
        
        writeln;

    end;

end.