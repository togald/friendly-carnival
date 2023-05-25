fprintf(temp, 'vdc');
fprintf(vi, 'adc');
t = []
i = []
temperatur = []
curvefit1 = 2.658085182109378*1.0e+04
curvefit2 = -0.000076370269308*1.0e+04

for j = 1:10000
    t(end+1) = str2num(query(temp, 'meas?'))
    i(end+1) = str2num(query(vi, 'val?'))
    temperatur(end+1) = t(end)*curvefit1-curvefit2
    plot(temperatur, i,'*');
    pause(1);
    xlabel('Delta T (K)');
    ylabel('Ström (A)');
end
