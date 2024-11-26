program procedure4;
uses crt;

procedure cekprima(n : integer ; var prima : boolean);
var 
i : integer;

begin
    prima := true;
    if n <= 1 then
        prima := false

    else
    begin
        for i := 2 to trunc(sqrt(n)) do
        begin
            prima := true;

            if n mod i = 0 then
            begin
                prima := false;
                break; 
            end;
        end;
    end;

end;

var 
n : integer;
prima : boolean;

begin
    clrscr;
    
    write('angka    : ');
    readln(n);

    cekprima(n,prima);
    
    if prima then
        writeln('Prima')

    else
        writeln('Non-Prima');
end.