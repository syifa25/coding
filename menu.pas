program menu;
uses crt;

var
pilihan : char;
yang_dibeli : string;
harga : integer;

begin
    clrscr;
    writeln('SELAMAT DATANG DI CAFESYA');
    writeln();
    writeln('Ingin makan atau minum apa nih ?');
    writeln('a.Profiterole          : Rp.15000');
    writeln('b.Tiramisu Cake        : Rp.18000');
    writeln('c.Cappuccino coffee    : Rp.10000');
    writeln('d.Latte coffee         : Rp.8000');
    writeln('e.mocha coffee         : Rp.7000');
    write('Silahkan pilih : ');
    readln(pilihan);

    case pilihan of
        'a' : 
        begin
            yang_dibeli := 'Profiterole';
            harga := 15000;
        end;
        'b' : 
        begin
            yang_dibeli := 'Tiramisu Cake';
            harga := 18000;
        end;
        'c' : 
        begin
            yang_dibeli := 'Cappuccino coffee';
            harga := 10000;
        end;
        'd' : 
        begin
            yang_dibeli := 'Latte coffee';
            harga := 8000;
        end;
        'e' : 
        begin
            yang_dibeli := 'mocha coffee';
            harga := 7000;
        end;
        else
        writeln('Maaf kode yang anda pilih salah, silahkan pilih hanya dengan huruf a, b, c, atau d');
    end;

    writeln();
    writeln('Menu yang anda pilih adalah ', yang_dibeli,' dengan harga Rp.',harga);
end.