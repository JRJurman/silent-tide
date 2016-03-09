function [  ] = CIEStandardObserverCMF( input_args )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
    
    cied = loadCIEData;

    hold on;
    spectrums = cied.lambda;

    girth = 1.5;
    
    plot(spectrums, cied.cmf2deg(:,1), 'r-', 'LineWidth', girth);
    plot(spectrums, cied.cmf2deg(:,2), 'g-', 'LineWidth', girth);
    plot(spectrums, cied.cmf2deg(:,3), 'b-', 'LineWidth', girth);
    
    plot(spectrums, cied.cmf10deg(:,1), 'r--', 'LineWidth', girth);
    plot(spectrums, cied.cmf10deg(:,2), 'g--', 'LineWidth', girth);
    plot(spectrums, cied.cmf10deg(:,3), 'b--', 'LineWidth', girth);

    title('CIE Standard Observer CMF');

    xlabel('wavelength(nm)')
    ylabel('tristimulous values')

    legend('X 2deg','Y 2deg','Z 2deg', 'X 10deg','Y 10deg','Z 10deg')
   
    hold off;
end

