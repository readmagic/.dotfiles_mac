function setjdk
    set -g -x JAVA_HOME (/usr/libexec/java_home -v $argv)
    echo (java -version)
end
