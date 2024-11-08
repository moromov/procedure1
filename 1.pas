Uses Crt;

Type Complex = record
       Re,Im: real;
     end;
Var z,u,v,w: Complex;
Var a: Real;


procedure Add(Var u,v:Complex; Var w: Complex);
begin
  w.Re:= u.Re + v.Re;
  w.Im:= u.Im + v.Im;
end;

procedure Mult(Var u,v: Complex; Var w:Complex);
begin
  w.Re:= u.Re*v.Re-u.Im*v.Im;
  w.Im:= u.Re* v.Im-u.Im*v.Re;
end;

procedure Inv(Var z:complex; Var w:complex); 
Var q:real;
begin
  q:= sqr(z.Re) + sqr(z.Im);
  w.Re := z.Re/q;
  w.Im := -z.Im/q;
end;

procedure Divz(u,v: Complex; Var w: Complex);
Var z:Complex;
begin
  Inv(v,z); Mult(v,z,w);
end;

procedure Codj(Var z:Complex; Var w:Complex);
begin
  w.Re:= z.Re;
  w.Im:= -z.Im;
end;

procedure Prod(a:real; z:Complex; Var w:Complex);
begin
  w.Re:= a*z.Re;
  w.Im:= a*z.Im;
end;

procedure Zero(Var z:Complex);
begin
  z.Re:=0; z.Im:=0;
end;

procedure One(Var z:Complex);
begin
  z.Re:= z.Re*1; z.Im:= z.Im*1;
end;

Begin
  {readln(u.Re); readln(u.Im);}
  GoToXY(40,10);  readln(z.Re);
  GoToXY(40,10);  //clearline;
  
  GoToXY(44,10);  readln(z.Im);
  GoToXY(44,10);  //clearline;
  
  Zero(z);
  writeln(z.Re); writeln(z.Im);
End.
