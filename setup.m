out = instrfind;
delete(out);
vi = gpib('ni', 0, 7);
fopen(vi);
temp = gpib('ni', 0, 8);
fopen(temp);