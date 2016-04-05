cie = loadCIEdata;

munki_CC_XYZLab = importdata('munki_CC_XYZs_Labs.txt');

munki_gray_Ys = munki_CC_XYZLab(19:24, 3);
munki_gray_Ys = munki_gray_Ys ./ 100;
munki_gray_Ys = flipud(munki_gray_Ys)';

munki_gray_Ys