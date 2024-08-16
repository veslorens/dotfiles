# ~/.bashrc: executed by bash(1) for non-login shells.

# Core
alias y-irptas="cd /var/www/html/irptas"
alias y-citiport="cd /var/www/html/citiport"

# Laravel
alias y-lv-refresh="composer dump-autoload && composer clear-cache && php artisan cache:clear && php artisan clear-compiled && php artisan config:cache && php artisan view:clear && php artisan package:discover && php artisan config:clear && php artisan cache:clear && php artisan view:clear && php artisan route:clear && composer dump-autoload &&  php artisan config:clear && php artisan cache:clear && php artisan view:clear && php artisan route:clear && composer dump-autoload"
alias y-lv-db-fresh="composer dump-autoload && composer clear-cache && php artisan cache:clear && php artisan clear-compiled && php artisan config:cache && php artisan view:clear && php artisan package:discover && php artisan migrate:fresh && php artisan db:seed"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion