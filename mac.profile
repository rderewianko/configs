export PS1="\u@\h:\W\$ "

#alias mysqlserver="sudo /usr/local/mysql/bin/mysqld_safe"
#alias mysql="sudo /usr/local/mysql/bin/mysql -u root -psh*pp@r"
#alias mysqladmin="sudo /usr/local/mysql/bin/mysqladmin -u root -psh*pp@r"

alias redis="sudo /etc/init.d/redis_6379"

alias cll="sudo ~/wf/scripts/clear_server_logs.sh"
alias pserver="cd ~/PServer60/server/bin/ && sudo ./runtaf.sh"

alias tomstart="sudo ~/tomcat/tomcat-9.0.11/bin/start_debug.sh"
alias tomstop="sudo ~/tomcat/tomcat-9.0.11/bin/shutdown.sh"
alias tom7start="sudo ~/tomcat/tomcat-7.0.47/bin/start_debug.sh"
alias tom7stop="sudo ~/tomcat/tomcat-7.0.47/bin/shutdown.sh"

alias eclipse="/Applications/Eclipse.app/Contents/MacOS/eclipse -data /Users/ravik/wf/eclipseWS/defaultWS &"
alias eclipsej7="/Applications/Eclipse.app/Contents/MacOS/eclipse -data /Users/ravik/wf/eclipseWS/java7WS &"
alias eclipsej8="/Applications/Eclipse.app/Contents/MacOS/eclipse -data /Users/ravik/wm/eclipseWF &"

alias mysqlstart="sudo mysqld_multi --defaults-file=/etc/my.cnf --log=/var/log/mysql/mysql_5_7.log --verbose start"

alias mysqlstop="sudo mysqld_multi --defaults-file=/etc/my.cnf --log=/var/log/mysql/mysql_5_7.log --verbose --user=root --password=pramati stop"

#alias for mvim to open in a existing window VIM in a new tab
alias mvimt="mvim -c 'set nu' -c 'set ruler' --servername VIM --remote-tab"
alias sudomvimt="sudo mvim -c 'set nu' -c 'set ruler' --servername VIM --remote-tab"

alias ll="ls -lrth"
alias spamd="sudo /opt/local/libexec/perl5.12/sitebin/spamd"
alias spamc="sudo /opt/local/libexec/perl5.12/sitebin/spamc"

#SSH for AWS instances.
alias wuAnalyticsSummaryProddb="ssh -i ~/wf/rsa/ravi-prod-key.rsa ubuntu@50.112.113.79"
alias wustproddb="ssh -i ~/wf/rsa/ravi-prod-key.rsa ubuntu@54.244.247.116"
alias wureportsProd="ssh -i ~/wf/rsa/ravi-prod-key.rsa ubuntu@54.244.247.88"
alias wucustomDBProd="ssh -i ~/wf/rsa/ravi-prod-key.rsa ubuntu@54.244.121.223"

alias tafDBprod="ssh -i ~/wf/rsa/ravi-prod-key.rsa ubuntu@23.23.150.56"
alias stReportsProd="ssh -i ~/wf/rsa/ravi-prod-key.rsa ubuntu@54.204.40.227"

alias stwebsiteDB="ssh -i ~/wf/rsa/ravi-prod-key.rsa ubuntu@75.101.152.50"
alias stwebsitenode1="ssh -i ~/wf/rsa/ravi-prod-key.rsa ubuntu@174.129.195.163"
alias stwebsitenode2="ssh -i ~/wf/rsa/ravi-prod-key.rsa ubuntu@54.235.218.105"
alias stwebsitelb="ssh -i ~/wf/rsa/ravi-prod-key.rsa ubuntu@54.225.134.177"

alias stDataAnalysisSlave="ssh -i ~/wf/rsa/ravi-prod-key.rsa ubuntu@54.225.88.125"

#taf-dev
alias tafdev="ssh -i ~/wf/rsa/ravi-prod-key.rsa ubuntu@23.23.205.74 -t tmux a -t ravik"
alias trunkstageservices="ssh -i ~/wf/rsa/ravi-prod-key.rsa ubuntu@107.21.213.27"

#Graylog staging server
alias graylogstage="ssh -i ~/wf/rsa/ravi-prod-key.rsa ubuntu@184.73.166.169 -t tmux a -t ravik"

alias stredismaster="ssh -i ~/wf/rsa/ravi-prod-key.rsa ubuntu@54.243.144.25"
alias stredisslave="ssh -i ~/wf/rsa/ravi-prod-key.rsa ubuntu@54.243.144.25"

alias rediscliWUMaster="redis-cli -h ec2-54-245-88-1.us-west-2.compute.amazonaws.com -p 6380 -a d9fCEQvvTMETCwilBS2zK5"
alias rediscliWUSlave="redis-cli -h ec2-54-243-144-25.compute-1.amazonaws.com -p 6380 -a Z8qHT1BcSsROdAkXWspXsHk3"



export PATH=$PATH:/usr/local/mysql/bin:/Applications/gedit.app/Contents/MacOS:/Users/ravik/editors/MacVim-snapshot-74:/Library/nodejs/bin

VIM_APP_DIR=/Users/ravik/editors/MacVim-snapshot-74


export JPDA_ADDRESS=8000
export JPDA_TRANSPORT=dt_socket
export LANG=C
export LC_ALL=en_US.UTF-8

#setting color to command outputs
export CLICOLOR=1
#Use below for white background
export LSCOLORS=ExFxCxDxBxegedabagacad
# Use below for Black background
#export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

export LD_LIBRARY_PATH=/opt/local/lib:$LD_LIBRARY_PATH

export SVN_EDITOR=/usr/bin/vim


# Java is installed at /Library/Java/JavaVirtualMachines/jdkmajor.minor.subminor_updatev.jdk
# /usr/libexec/java_home -v1.6 will return java home directory of java 1.6 i.e.  /Library/Java/JavaVirtualMachines/1.6.0_65-b14-462.jdk/Contents/Home
# similart -v1.7 would return /Library/Java/JavaVirtualMachines/jdk1.7.0_65.jdk/Contents/Home
# similart -v1.8 would return /Library/Java/JavaVirtualMachines/jdk1.8.0_11.jdk/Contents/Home
# similart -v11.0 would return /Library/Java/JavaVirtualMachines/jdk-11.0.2.jdk/Contents/Home
# so setting different variables for each java version
export JAVA_6_HOME=$(/usr/libexec/java_home -v1.6)
export JAVA_7_HOME=$(/usr/libexec/java_home -v1.7)
export JAVA_8_HOME=$(/usr/libexec/java_home -v1.8)
export JAVA_9_HOME=$(/usr/libexec/java_home -v9.0)
export JAVA_10_HOME=$(/usr/libexec/java_home -v10.0)
export JAVA_11_HOME=$(/usr/libexec/java_home -v11.0)

#set default to java 6
#export JAVA_HOME=$JAVA_6_HOME
export JAVA_HOME=$JAVA_11_HOME

#use below aliases to have different versions java
alias java6='export JAVA_HOME=$JAVA_6_HOME'
alias java7='export JAVA_HOME=$JAVA_7_HOME'
alias java8='export JAVA_HOME=$JAVA_8_HOME'
alias java9='export JAVA_HOME=$JAVA_9_HOME'
alias java10='export JAVA_HOME=$JAVA_10_HOME'
alias java11='export JAVA_HOME=$JAVA_11_HOME'



##
# Your previous /Users/ravik/.profile file was backed up as /Users/ravik/.profile.macports-saved_2015-11-12_at_14:27:13
##

# MacPorts Installer addition on 2015-11-12_at_14:27:13: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.


test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

export GIT_EDITOR=vim
export GRADLE_HOME=/opt/local/share/java/gradle

alias saastomstart=/Users/ravik/wm/Installations/studio_setup/shortcuts/unix/t1start.sh
alias saastomstop=/Users/ravik/wm/Installations/studio_setup/shortcuts/unix/t1stop.sh

alias appstomstart=/Users/ravik/wm/Installations/studio_setup/shortcuts/unix/t2start.sh
alias appstomstop=/Users/ravik/wm/Installations/studio_setup/shortcuts/unix/t2stop.sh

alias wmbuild='mvn -Pwmstudio-local clean install -DskipTests -Dproject.props.file=../../build-helpers/filters/saas-wmstudio-local.props'

