Type Complex = record
       Re,Im: real;
     end;
Var z,w: Complex;

procedure Inv(Var z:complex; Var w:complex); 
Var q:real;
begin
  q:= sqr(z.Re) + sqr(z.Im);
  w.Re := z.Re/q;
  w.Im := -z.Im/q;
end;

Begin
  readln(z.Re); readln(z.Im);
  Inv(z,w);
  writeln(w.Re); writeln(w.Im);
End.
