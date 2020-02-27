[ -r ~/.bashrc ] && . ~/.bashrc

export PATH="$HOME/script:$PATH"
export PATH="/usr/local/sbin:$PATH"
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

source ~/.alias

function java_use() {
    export JAVA_HOME=$(/usr/libexec/java_home -v $1)
    export PATH=$JAVA_HOME/bin:$PATH
    java -version
}

eval "$(rbenv init -)"

