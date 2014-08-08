#alias for hibernation:
alias hibernate='sudo echo "Hibernating..."; gnome-screensaver-command -l; sudo pm-hibernate;'

#alias for git
alias gut='git'
alias got='git'

#####
alias busymachines-projects-clone='git clone git@github.com:busymachines/busymachines-commons.git; git clone git@github.com:sesamsolutions/sesam-platform.git; git clone git@github.com:aurumeurope/aurum-platform.git'

#alias for cassandra things
alias cass-purge='sudo rm -rf /var/lib/cassandra/*; sudo rm -rf /var/log/cassandra/*'
alias cass-kill='ps aux | grep -i cassandra | awk {'\''print $2'\''} | xargs sudo kill -9'
alias cass-start='sudo /usr/lang/apache-cassandra-2.0.8/bin/cassandra'
alias cass-restart='cass-kill;cass-purge;cass-start'

#alias for elasticsearch things
alias es-purge='sudo rm -rf /var/lib/elasticsearch/elasticsearch/nodes/0'
alias es-kill='ps aux | grep -i elasticsearch | awk {'\''print $2'\''} | xargs sudo kill -9'
alias es-stop='sudo /etc/init.d/elasticsearch stop'
alias es-start='sudo /etc/init.d/elasticsearch start'
