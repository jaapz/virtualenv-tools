# Makes a new virtualenv in the current directory. If no argument is specified,
# the new virtualenv will be called .env. It will automatically be activated.
function mkvenv () {
    if [[ -n "$1" ]]; then
        virtualenv $1
        env=$1
    else
        virtualenv .env
        env=".env"
    fi

    . ./$env/bin/activate
}

# Activate the given env in the current directory. If no argument is specified,
# the default name .env will be used.
function activate () {
    if [[ -n "$1" ]]; then
        . ./$1/bin/activate
    else
        . ./.env/bin/activate
    fi
}

# Remove the (possibly active) env. If no argument is specified, it will fall
# back to the default name: .env.
function rmvenv() {
    deactivate
    if [[ -n "$1" ]]; then
        rm -rf $1
    else
        rm -rf .env
    fi
}
