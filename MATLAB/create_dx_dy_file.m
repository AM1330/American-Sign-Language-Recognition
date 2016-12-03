function y=create_dx_dy_file(dx_dy,name)
fid = fopen( name, 'wt' );
for n = 1:100

  fprintf( fid, '%f %f %f %f\n', dx_dy(n,1),dx_dy(n,2),dx_dy(n,3),dx_dy(n,4));

end
fclose(fid);
y='File created';
end