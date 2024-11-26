program function4;
uses crt;

function prima(n : integer) : boolean;
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

begin
    clrscr;
    write('Angka    : ');
    readln(n);

    if prima(n) then
        writeln('Prima')

    else
        writeln('Non-Prima');

end.