program kubus;
uses crt;

var
sisi, luas_permukaan, volume : real;

begin
  clrscr;
  write('Masukkan sisi: ');
  readln(sisi);
  luas_permukaan := 6*sisi*sisi;
  volume := sisi*sisi*sisi;
  writeln ('Luas permukaan kubus : ', luas_permukaan:5:2);
  writeln ('volume kubus : ', volume:5:2);
end.