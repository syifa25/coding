Program penghitung;
uses crt, math;

var
a,b,c : string;
pilih : char;
sisi1, sisi2, sisi3,sudut : integer;
luas, keliling,tinggi,radian, reamur, celcius, fahrenheit, kelvin : real;

begin
    clrscr;
    writeln('Silahkan dipilih :');
    a := 'Menghitung luas dan keliling sebuah segitiga';
    b := 'Mencari nilai sin, cos, tan';
    c := 'Mengubah derajat temperatur dari Celcius ke derajat Fahrenheit, Kelvin dan Reamur';
    writeln('a : Menghitung luas dan keliling sebuah segitiga');
    writeln('b : Mencari nilai sin, cos, tan');
    writeln('c : Mengubah derajat temperatur dari Celcius ke derajat Fahrenheit, Kelvin dan Reamur');
    write('Pilihan (a/b/c) : ');
    readln(pilih);

    if pilih = 'a' then
        begin
            write('Sisi 1   (sebelah kanan)   : ');
            readln(sisi1);
            write('Sisi 2   (sebelah kiri)    : ');
            readln(sisi2);
            write('Sisi 3   (bawah/alas)      : ');
            readln(sisi3);
            write('Tinggi                     : ');
            readln(tinggi);
            luas := 1/2*sisi3*tinggi;
            keliling := sisi1 + sisi2 + sisi3;
            writeln('---Hasil---');
            writeln('Luas segitiga adalah       : ', luas:0:2);
            writeln('keliling segitiga adalah   : ', keliling:0:2);
        end
    else if pilih = 'b' then
        begin
            write('Masukkan sudut   : ');
            readln(sudut);
            radian := sudut * pi /180;
            writeln('Sinus              : ',sin(radian):0:2);
            writeln('Cosinus            : ',cos(radian):0:2);
            writeln('Tangen             : ',tan(radian):0:2);
        end
    else if pilih = 'c' then
    begin
        write('Masukkan nilai celcius : ');
        readln(celcius);
        reamur := celcius*4/5;
        fahrenheit := celcius*9/5 + 32;
        kelvin := celcius + 273;

        writeln('Reamur : ', reamur:0:2);
        writeln('Fahrenheit : ', fahrenheit:0:2);
        writeln('Kelvin : ', kelvin:0:2); 
    end
    else
    begin
       write('Pilihan tidak valid'); 
    end
        


end.