#aliases
alias phpunit="{{ vhost_sourceDir }}/vendor/phpunit/phpunit/phpunit"
alias ll="ls -la"

#export vars for xdebug
function xdebug_enable {
 export PHP_IDE_CONFIG="serverName={{ vhost_servername }}"
 export XDEBUG_CONFIG="idekey=PHPSTORM"
}

function xdebug_disable {
 unset PHP_IDE_CONFIG
 unset XDEBUG_CONFIG
}

#cd to source dir
cd {{ vhost_sourceDir }}

#set app env
export APPLICATION_ENV="development"