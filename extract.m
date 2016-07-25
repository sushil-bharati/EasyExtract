%reading a video file

mov = VideoReader('Video_37.avi');

% Defining Output folder as 'snaps'
opFolder = fullfile(cd, 'Video_37');
%if  not existing
if ~exist(opFolder, 'dir')
%make directory & execute as indicated in opfolder variable
mkdir(opFolder);
end

%getting no of frames
numFrames = mov.NumberOfFrames;

%setting current status of number of frames written to zero
numFramesWritten = 0;

%for loop to traverse & process from frame '1' to 'last' frames
for t = 1 : numFrames
currFrame = read(mov, t);    %reading individual frames
opBaseFileName = sprintf('%05d.jpg', t);
opFullFileName = fullfile(opFolder, opBaseFileName);
imwrite(currFrame, opFullFileName, 'jpg');   %saving as 'jpg' file
%indicating the current progress of the file/frame written
%progIndication = sprintf('Wrote frame %4d of %d.', t, numFrames);
%disp(progIndication);
numFramesWritten = numFramesWritten + 1;
end      %end of 'for' loop
progIndication = sprintf('Wrote %d frames to folder "%s"',numFramesWritten, opFolder);
disp(progIndication);
%End of the code


