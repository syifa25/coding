program procedure2;
uses crt;

var
  data: array[1..50] of integer;
  n: integer;

procedure input_data(var jumlah: integer; var arr: array of integer);
var
  i: integer;
begin
  write('Banyak data    : '); 
  readln(jumlah);

  for i := 1 to jumlah do
  begin
    readln(arr[i]);
  end;
end;

procedure hitung_rata(jumlah: integer; arr: array of integer);
var
  total, i: integer;
  rata: real;
begin
  total := 0;
  for i := 1 to jumlah do
    total := total + arr[i];

  rata := total / jumlah;

  writeln('Rata-rata = ', rata:0:2);
end;

begin
  clrscr;
  input_data(n, data);
  hitung_rata(n, data);
  writeln;
end.
