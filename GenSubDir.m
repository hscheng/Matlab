function [SubDir_fullpath,SubFolders] = GenSubDir(parent_dir)
%% function to merge subdir full path and get the subfolder names list
    TempList=dir(parent_dir); %get the dir struct
 
    ISub = [TempList(:).isdir];
 
    SubFolders = {TempList(ISub).name}';
    SubFolders(1:2) = []; %remove . and ..
    
    % get the operation system info
    if ispc 
        SubDir_fullpath = strcat(parent_dir,'\',SubFolders);
    else
        SubDir_fullpath = strcat(parent_dir,'/',SubFolders);
    end 
end