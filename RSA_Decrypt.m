tmsg = sym(modexp(cmsg, d, n));
tmsg = char(tmsg);
if mod(length(tmsg), 3) == 2
    tmsg = strcat('0', tmsg);
elseif mod(length(tmsg), 3) == 1
    tmsg = strcat('00', tmsg);
end

msg = '';
for i=1:3:length(tmsg)
    temp = strcat(tmsg(i),tmsg(i+1), tmsg(i+2));
    %msg = strcat(msg, native2unicode(str2num(temp)))
    msg = [msg str2num(temp)];
    
end
native2unicode(msg)