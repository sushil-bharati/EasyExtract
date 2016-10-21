%This function was designed by Mr. Sushil Bharati on Oct 21, 2016 
% The aim of this function is to convert x1,y1,x2,y2 to x1,y1,width,height
% format 

function gt_to_xywh
file1 = fopen('youtube_1.txt','r');
file2 = fopen('youtube_1_gt.txt','w');

while true
line = fgetl(file1);
if ~ischar(line) 
    break 
end
[A] = sscanf(line,'%d,%d,%d,%d');
fprintf(file2,'%d,%d,%d,%d\n',A(1),A(2),A(3)-A(1),A(4)-A(2));
end

end