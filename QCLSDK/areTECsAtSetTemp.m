function out = areTECsAtSetTemp()

% fprintf('========================================================\n'); 
% fprintf('Are TECs at Safe Operating Temp? ... \n'); 

atTemp = false; 
atTempPtr = libpointer('bool', atTemp); 
calllib('MIRcatSDK','MIRcatSDK_AreTECsAtSetTemperature', atTempPtr); 
atTemp = atTempPtr.value; 

% if logical(atTemp)     
%     fprintf('\tTrue\n' ); 
% end
% 
% while ~atTemp
%     calllib('MIRcatSDK','MIRcatSDK_AreTECsAtSetTemperature', atTempPtr);     
%     atTemp = atTempPtr.value;     
%     if logical(atTemp)         
%         fprintf('\tTrue\n' );     
%     else         
%         fprintf('\tFalse\n');     
%     end     
%     pause(1); 
% end 

out = atTemp;

end