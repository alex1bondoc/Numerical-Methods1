function retval = gaussian_kernel (x, y, sigma)
  # TO DO: implement gaussian kernel function
  %formula din fisa
  retval = exp(-(sum((x-y).^2)) / (2 * sigma^2));
endfunction
