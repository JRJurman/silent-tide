function [ cie ] = loadCIEdata()
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

cie2deg = load('CIE_data/CIE_2Deg_380-780-5nm.txt');
cie10deg = load('CIE_data/CIE_10Deg_380-780-5nm.txt');

cie2t = cie2deg';
cie10t = cie10deg';

cie.lambda = cie2t(1,:);
cie.cmf2deg = cie2t(2:end,:)';
cie.cmf10deg = cie10t(2:end,:)';
cie.illA = load('CIE_data/CIE_IllA_380-780-5nm.txt');
cie.illA = cie.illA(:,2);
cie.illC = load('CIE_data/CIE_IllC_380-780-5nm.txt');
cie.illC = cie.illC(:,2);
cie.illD50 = load('CIE_data/CIE_IllD50_380-780-5nm.txt');
cie.illD50 = cie.illD50(:,2);
cie.illD65 = load('CIE_data/CIE_IllD65_380-780-5nm.txt');
cie.illD65 = cie.illD65(:,2);
cie.illE = ones(1,81) * 100;
cie.illF = load('CIE_data/CIE_IllF_1-12_380-780-5nm.txt');
cie.illF = cie.illF(:,2:end);
cie.eigD = load('CIE_data/CIE_eigD_380-780-5nm.txt');
cie.eigD = cie.eigD(:,2:end);

end

