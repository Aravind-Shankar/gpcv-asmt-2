function [ num ] = read_number( title, prompt )
%READ_NUMBER Summary of this function goes here
%   Detailed explanation goes here
in = inputdlg({prompt},title);   % gave 100
num = str2double(in{:});

end

