fprintf(temp, 'vdc');
fprintf(vi, 'vdc');
t = []
v = []

for j = 1:10000
    t(end+1) = str2num(query(temp, 'meas?'))
    v(end+1) = str2num(query(vi, 'val?'))
    plot(t, v)
    pause(1);
end
