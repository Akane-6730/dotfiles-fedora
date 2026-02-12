# Proxy Management
function proxy_on() {
    export http_proxy="http://127.0.0.1:7897"
    export https_proxy="http://127.0.0.1:7897"
    export all_proxy="socks5://127.0.0.1:7897"
    export no_proxy="localhost,127.0.0.1,localaddress,.localdomain.com"
    echo -e "\033[32mProxy On\033[0m"
}

function proxy_off() {
    unset http_proxy
    unset https_proxy
    unset all_proxy
    unset no_proxy
    echo -e "\033[31mProxy Off\033[0m"
}
