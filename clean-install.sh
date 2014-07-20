HOME="/Users/lorand"
DEST="$HOME/Downloads/clean-install"

mkdir $DEST
chmod ugo=rwx $DEST

function download {
	echo "DOWNLOADING: $DEST/$1"
	curl -o "$DEST/$1" "$2"
	echo ""
}

PROG_PATH="/usr/programming"

function create_folders {
	mkdir $PROG_PATH
	chmod ugo=rwx $PROG_PATH
	mkdir $PROG_PATH/lang
	mkdir $PROG_PATH/lang/scala
	mkdir $PROG_PATH/lang/haskell
	mkdir $PROG_PATH/db
	mkdir $PROG_PATH/db/elasticsearch
	mkdir $PROG_PATH/db/cassandra
	mkdir $PROG_PATH/git
	mkdir $PROG_PATH/sbt	
}

function create_profile {
echo "###############################################################################
############################### ENVIRONMENT VARIABLES #########################
###############################################################################

export TEXT_EDITOR=\"/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl\"

export JAVA_HOME=\"\"
export SCALA_HOME=\"\"
export HASKELL_HOME=\"\"
export GIT_HOME=\"/usr/programming/git/git-2.0.1\"

export CASSANDRA_HOME=\"\"
export ES_HOME=\"\"


export PATH=\"/bin\"
export PATH=\"\$PATH:/sbin\"
export PATH=\"\$PATH:/usr/bin\"
export PATH=\"\$PATH:/usr/local/bin\"
export PATH=\"\$PATH:\$JAVA_HOME/bin:\$SCALA_HOME/bin:\$HASKELL_HOME/bin:\$GIT_HOME/bin\"
export PATH=\"\$PATH:\$CASSANDRA_HOME/bin:\$ES_HOME/bin\"

###############################################################################
#################################### ALIASES ##################################
###############################################################################

alias edit=\"\$TEXT_EDITOR\"

alias hidden-show='defaults write com.apple.finder AppleShowAllFiles YES'
alias hidden-hide='defaults write com.apple.finder AppleShowAllFiles NO'
" > $HOME/.profile
}

#create a barebones profiles-file
create_profile

#creating the folder structure before starting the download
create_folders

#see if x-code is installed
xcode-select -p


SUBLIME_URL="http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%20Build%203059.dmg"
GOOGLE_CHROME_URL="https://dl.google.com/chrome/mac/stable/GGRO/googlechrome.dmg"
GOOGLE_DRIVE_URL="https://dl.google.com/drive/installgoogledrive.dmg"
MU_COMMANDER_URL="http://www.mucommander.com/download/mucommander-0_9_0.dmg"
UTORRENT_URL="http://download-new.utorrent.com/endpoint/utmac/os/osx/track/stable/"

GIT_URL="http://downloads.sourceforge.net/project/git-osx-installer/git-2.0.1-intel-universal-snow-leopard.dmg?r=&ts=1405847204&use_mirror=optimate"
SCALA_URL="http://downloads.typesafe.com/scala/2.11.1/scala-2.11.1.tgz"
SBT_URL="http://dl.bintray.com/sbt/native-packages/sbt/0.13.5/sbt-0.13.5.tgz"

CASSANDRA_URL="http://mirrors.hostingromania.ro/apache.org/cassandra/2.0.9/apache-cassandra-2.0.9-bin.tar.gz"
ES_URL="https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-1.2.2.tar.gz"

SCALA_IDE_URL="http://downloads.typesafe.com/scalaide-pack/3.0.4.vfinal-211-20140520/scala-SDK-3.0.4-2.11-2.11-macosx.cocoa.x86_64.zip"
APTANA_URL="http://d1iwq2e2xrohf.cloudfront.net/tools/studio/standalone/3.4.2.201308081805/mac/Aptana_Studio_3_Setup_3.4.2.dmg"
INTELLIJ_SCALA_URL="http://download-cf.jetbrains.com/idea/ideaIC-13.1.3.dmg"


echo "----- STARTING DOWNLOAD -----"
echo ""
download "Sublime Text Build 3059.dmg" $SUBLIME_URL
download "mucommander-0_9_0.dmg" $MU_COMMANDER_URL
download "googlechrome.dmg" $GOOGLE_CHROME_URL
download "installgoogledrive.dmg" $GOOGLE_DRIVE_URL
download "utorrent.dmg" $UTORRENT_URL

download "git-2.0.1-intel-universal-snow-leopard.dmg" $GIT_URL
download "scala-2.11.1.tgz" $SCALA_URL
download "sbt-0.13.5.tgz" $SBT_URL

download "apache-cassandra-2.0.9-bin.tar.gz" $CASSANDRA_URL
download "elasticsearch-1.2.2.tar.gz" $ES_URL

download "Aptana_Studio_3_Setup_3.4.2.dmg" $APTANA_URL
download "scala-SDK-3.0.4-2.11-2.11-macosx.cocoa.x86_64.zip" $SCALA_IDE_URL
download "ideaIC-13.1.3.dmg" $INTELLIJ_SCALA_URL




