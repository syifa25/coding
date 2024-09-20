program bitwise;
uses crt;

var
a,b : integer;

begin
    clrscr;
    write('Masukkan bilangan 1  : ');
    readln(a);
    write('Masukkan bilangan 2  : ');
    readln(b);

    writeln(a, ' AND ', b,' = ', a AND b);
    writeln(a, ' OR ', b,' = ', a OR b);
    writeln(a, ' XOR ', b,' = ', a XOR b);
    writeln(a, ' SHR ', b,' = ', a SHR b);
    writeln(a, ' SHL ', b,' = ', a SHL b);
end.