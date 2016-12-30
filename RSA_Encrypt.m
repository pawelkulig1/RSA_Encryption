wiadomosc = 'This message can contain special characters -> :)';
wiadomoscNr = double(wiadomosc);
x='';
for i=1:length(wiadomoscNr)
    if wiadomoscNr(i)<100
        x = strcat(x, '0', num2str(wiadomoscNr(i)));
    else
        x = strcat(x, num2str(wiadomoscNr(i)));
    end
end
x = sym(x);
cmsg = sym(modexp(x, e, n));
%tmsg = sym(modexp(cmsg, d, n))
