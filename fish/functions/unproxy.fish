function unproxy --wraps='unset  ALL_PROXY' --wraps='set --erase  ALL_PROXY' --description 'alias unproxy=set --erase  ALL_PROXY'
  set --erase  ALL_PROXY $argv; 
end
