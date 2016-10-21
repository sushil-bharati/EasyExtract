%This matlab script was coded by Mr. Sushil Bharati on Oct 21, 2016 
% The aim of this script is to check the ground truth is correctly annotated or not
% Remember: To run this file, you must place this file together with dataset images and 
% ground truth all in the common directory.

filegt = fopen('ground_truth_file.txt','r');
i = 1;
figure
while true
    tline = fgetl(filegt);
    if ~ischar(tline)
        break
    end
    A = sscanf(tline,'%d,%d,%d,%d');
    str = sprintf('%05d.jpg',i)
    img = imread(str);
    imshow(img),hold on, 
        rectangle('Position',A,'EdgeColor','y','Linewidth',2);
        str2 = sprintf('Tracking frame# %d',i);
        text(A(1),A(2)-10,str2,'Fontweight','demi');
    hold off
    drawnow
    i = i + 1;
    
end
