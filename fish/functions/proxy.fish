function proxy --wraps='export ALL_PROXY=socks5://127.0.0.1:8087' --description 'alias proxy=export ALL_PROXY=socks5://127.0.0.1:8087'
  export ALL_PROXY=socks5://127.0.0.1:8087 $argv; 
end
