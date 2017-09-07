%Inclass assignment 4. Due at the start of class on 9/12/17

%1. (a) Write code that makes a file with the words "Random numbers 1" on its
%own line, then 10 lines with 13 random numbers each, then "Random numbers
%2" on its own line, then 9 lines with 7 random numbers each. (b) Write code
%that reads only the first line of random numbers in the file and stores
%them as numbers in an array. 

filename = 'rand_num_mat.txt';
fid = fopen(filename, 'w');
fprintf(fid,'Random number 1\n');
rand_num_1 = rand(10,13);
rand_num_2 = rand(9,7);
dlmwrite('rand_num_mat.txt', rand_num_1, '-append');
fclose(fid);
filename = 'rand_num_mat.txt';
fid = fopen(filename, 'a');
NextString = 'Random number 2';
fprintf(fid,'%s\n', NextString);
dlmwrite('rand_num_mat.txt', rand_num_2, '-append');
fclose(fid);

% 2. Write a function that takes an array as input and returns a logical
% variable which is true if the sum of the numbers in the array is greater
% than or equal to 10 and false if it is less than 10. 

a = rand(5);
num10(a)
 
function result = num10(array)
sum_array = sum(sum(array));
if sum_array < 10
    z = 0;
else
    z = 1;
end
result = z;
end
 


