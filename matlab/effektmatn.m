fprintf(temp, 'vdc');
fprintf(vi, 'vdc');

t = [];
u = [];
temperatur = [];
p = [];
curvefit1 = 2.658085182109378*1.0e+04
curvefit2 = -0.000076370269308*1.0e+04
inreres = -2.832851256090184;
r = 2.8
count = [];

for j = 1:10000
    count(end+1) = j;
    t(end+1) = str2num(query(temp, 'meas?'))
    u(end+1) = str2num(query(vi, 'val?'))
    temperatur(end+1) = t(end)*curvefit1-curvefit2
    p(end+1) = u(end)^2/r
    subplot(2, 1, 1);
    plot(count, p, '*');
    ylabel('Effekt, W')
    subplot(2, 1, 2);
    plot(count, temperatur, '*');
    ylabel('Temperatur, C')
    xlabel('Tid, s')
    pause(1);
end