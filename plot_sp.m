% script for plotting sp
function [sp_plot] = plot_sp( patch_name, real_data, imaged_data, matched_data )
    
    % generate a new figure, and keep all the plots there
    figure;
    hold on;
    
    % rows from 380 to 730
    spectrums = 380:10:730;

    sp_plot = plot(spectrums, real_data, 'b-');
    plot(spectrums, imaged_data, 'r-');
    plot(spectrums, matched_data, 'm-');

    title(patch_name);

    xlabel('wavelength')
    ylabel('relative energy')

    legend('real','imaged','matched','Location','NorthEast');
    hold off;
end