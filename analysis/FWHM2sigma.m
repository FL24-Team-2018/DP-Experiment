function [sigma] = FWHM2sigma(FWHM)
sigma = FWHM / (2*sqrt(2*log(2)));
end

