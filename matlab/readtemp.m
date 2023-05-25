fprintf(temp, 'vdc');
fprintf(vi, 'vdc');

t = str2num(query(temp, 'meas?'));
v = str2num(query(vi, 'val?'));
pause(5);
fprintf(vi, 'adc');
i = str2num(query(vi, 'meas?'));