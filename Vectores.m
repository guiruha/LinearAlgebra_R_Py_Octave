x = [1; 2; 3; 4; 5; 6; 7; 8; 9]
length(x)

x = [0;3;-1;3;5];
y = [1;2;3;-1;0];

x - y

x + y

-4*x

7*y

function prodEsc = productoEscalar(x,y)
  if length(x) == length(y)
    prodEsc = 0
    for i = 1:length(x)
      predEsc = prodEsc + x(i)*y(i)
    endfor
    prodEsc
  else
    fprintf("ERROR")
  endif
endfunction

productoEscalar(x,y)

norm(x)
sqrt(productoEscalar(x,y))

function dist = distancia(x,y)
  if length(x) == length(y)
    dist = norm(y-x);
    dist;
  else
    fprintf ("ERROR");
  endif
endfunction

distancia(x,y)

function angulorad = anglerad(x,y)
  if length(x) == length(y)
    amplitud = acos(productoEscalar(x,y) / norm(x) * norm(y));
  else
    fprintf ("ERROR")
  endif
endfunction
    
anglerad(x,y)

function angulodeg = angledeg(x,y)
  if length(x) == length(y)
    angulodeg = (anglerad(x,y)/(2*pi)) * 360;
  else
    fprintf ("ERROR")
  endif
endfunction

angledeg(x,y)

function proy = proyeccionOrt(x,y)
  if length(x) == length(y)
    proy = productoEscalar(x,y) / norm(x)^2 * x;
  else
    fprinf("ERROR");
  endif
endfunction

proyeccionOrt(x,y)

function prodVec = productoVectorial(x,y)
  if length(x) == length(y) && length(x) == 3
    prodVec = [x(2)*y(3)-x(3)*y(2); -x(1)*y(3)-x(3)*y(1); x(1)*y(2)-x(2)*y(1)];
  else
    fprint ("ERROR")
  endif
endfunction

productoVectorial(x,y)

function prodMix = productoMixto(x,y,z)
  if length(x) == length(y) && length(x) == length(z) && length(x) == 3
    prodMix = det([x;y;z])
  endif
endfunction

productoMixto([1;2;3], [0;-1;1], [2;0;-3])