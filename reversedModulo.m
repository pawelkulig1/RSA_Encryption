function [ x ] = reversedModulo( a, b )
%reversed modulo
%     a = sym(a);
%     b = sym(b);
% 
%     if(a == 0)
%         g = b;
%         x = 0;
%         y = 1;
%         vec = [g, x, y];
%     else
%         w0 = sym(reversedModulo(sym(mod(b, a)), a));
%         g = w0(1);
%         x = w0(3) - round(b/a)* w0(2);
%         y = w0(2);
%         vec = [g, x, y];
%         return 
%     end
% 
% 
% 
% 

% b=sym(1161611835234649144976255897535960614121096554533401060283098882509922079039519297424692251338744433845221837352782804819295974549641645314940478770357669777536222728791419824434576670470405859514785918068748850500206593);
% a=sym(5712939121);

u = sym(1);
w = sym(a);
x = sym(0);
z = sym(b);
q = sym(0);

    while(w~=0)
        if(w<z)
            q = u;
            u = x;
            x = q;

            q = w;
            w = z;
            z = q;
        end
        q = floor(w/z);
        u = u-(q*x);
        w = w-(q*z);
    end
    %q
    if(z==1)
        if(x<0)
            x=x+b;
        end
        x
    else
        'brak'
    end




end

