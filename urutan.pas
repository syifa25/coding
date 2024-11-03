program urutan;
uses crt;

var
nilai_1,nilai_2, nilai_3, bil : integer;
begin
    clrscr;
    write('Masukkan nilai 1 : ');
    readln(nilai_1);
    write('Masukkan nilai 2 : ');
    readln(nilai_2);
    write('Masukkan nilai 3 : ');
    readln(nilai_3);


    if (nilai_2 > nilai_1) then
    begin
        bil := nilai_1;
        nilai_1 := nilai_2;
        nilai_2 := bil;
    end;

    if (nilai_3 > nilai_1) then
    begin
        bil := nilai_1;
        nilai_1 := nilai_3;
        nilai_3 := bil;
    end;

    if (nilai_3 > nilai_2) then
    begin
        bil := nilai_2;
        nilai_2 := nilai_3;
        nilai_3 := bil;
    end;

    
    

    writeln('Urutan     : ', nilai_1,', ', nilai_2,', ', nilai_3);
end.