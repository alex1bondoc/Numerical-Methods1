function retval = k_secv_idx (distinct_k_sec)
  % return disctionary containing the indices of each elem from distinct_k_sec 
  % HINT: containers.Map
  % Try not to set the key-value pairs iteratively, use containers.Map(keys, values) whenever possible
  keys = distinct_k_sec;
  values = num2cell(1:length(distinct_k_sec));
  retval = containers.Map(keys, values);
endfunction