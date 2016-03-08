%% generate graphs for mac

title = 'Silent Tide: iPhone 6s, Mac Book Pro';
real = import_sp('colormonki/silent_tide_real.sp');
imaged = import_sp('colormonki/mac/mac_silent_tide_screen.sp');
matching = import_sp('colormonki/mac/mac_silent_tide_matching.sp');

silent_tide = plot_sp(title, real, imaged, matching);

title = 'Teal Mosaic: iPhone 6s, Mac Book Pro';
real = import_sp('colormonki/teal_mosaic_real.sp');
matching = import_sp('colormonki/mac/mac_teal_mosaic_matching.sp');
imaged = import_sp('colormonki/mac/mac_teal_mosaic_screen.sp');

teal_mosaic = plot_sp(title, real, imaged, matching);

%% generate graphs for windows

title = 'Silent Tide: Lumia Icon, Surface Pro 3';
real = import_sp('colormonki/silent_tide_real.sp');
imaged = import_sp('colormonki/win/win_silent_tide_screen.sp');
matching = import_sp('colormonki/win/win_silent_tide_matching.sp');

silent_tide = plot_sp(title, real, imaged, matching);

title = 'Teal Mosaic: Lumia Icon, Surface Pro 3';
real = import_sp('colormonki/teal_mosaic_real.sp');
matching = import_sp('colormonki/win/win_teal_mosaic_matching.sp');
imaged = import_sp('colormonki/win/win_teal_mosaic_screen.sp');

teal_mosaic = plot_sp(title, real, imaged, matching);