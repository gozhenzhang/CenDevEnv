set -e

############ Basic: System ##############
function basic_epel_repo()
{
    yum install -y epel-release                   # Adding EPEL Repo
}


function basic_163_repo()
{
    version=`lsb_release -a | grep "CentOS release" | awk -F" " '{print $4}' | awk -F"." '{print $1}'`             # Get CentOS system version
    mv /etc/yum.repos.d/CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo.bk                                      # Backup original repo file
    url="http://mirrors.163.com/.help/CentOS$version-Base-163.repo"
    wget $url -O /etc/yum.repos.d/CentOS-Base.repo                                                                 # Get 163 repo
}


function sys_update()
{
    yum clean all                                 # Clean all and make new cache
    yum makecache
    yum update  -y                                # Update system
}


############ Basic: Runtime ##############
function basic_runtime()
{
    yum install -y gcc                            # Install C compiler
    yum install -y gcc-c++                        # Install C++ compiler
    yum install -y gcc-gfortran                   # Install Fortran compiler
    yum install -y make                           # Install make tool
    yum install -y gdb                            # Install gdb debug tool
    yum install -y cmake                          # Install cmake tool
    yum install -y git                            # Install git version control tool
}


############ Basic: Tools ################
function basic_tools()
{
    yum install -y p7zip                          # Install support to .7z or .zip file
    yum install -y lrzsz                          # Install support to sz and rz command
    yum install -y zsh                            # Install zsh 
    chsh -s $(which zsh)                          # Set zsh as the default shell
    yum install -y autojump                       # Install autojump
    yum install -y autojump-zsh                   # Install autojump for zsh
}

############ Advanced: Java ##############
function adv_java()
{
    yum install -y java                           # Install Java runtime
}


########### Advanced: Python #############
function adv_python()
{
    yum install -y python-pip                     # Install Python pip package tool 
    yum install -y python-matplotlib              # Install Matplotlib drawing library
    yum install -y numpy                          # Install Numpy matrix calculation library
    yum install -y scipy                          # Install Scipy scientific calculation library
    yum install -y python-requests                # Install Requests webpage library
    yum install -y python-lxml                    # Install lxml webpage analyse library
    yum install -y python-beautifulsoup4          # Install BeautifulSoup webpage analyse library
    yum install -y python-docopt                  # Install Docopt commandline library
    yum install -y python-argparse                # Install Argparse commandline library
    yum install -y ipython                        # Install iPython runtime
}

########### Advanced: PHP ################
function adv_php()
{
    yum install -y php                            # Install PHP
    yum install -y php-mysql                      # Install MySQL support for PHP
    yum install -y php-fpm                        # Install PHP-fpm
    yum install -y php-redis                      # Install Redis support for PHP
}


############ Advanced: Tools #############
function adv_tools()
{
    yum install -y httpd                          # Install Apache server
    yum install -y redis                          # Install Redis
    yum install -y mysql-server                   # Install MySQL database server
    yum install -y mongodb                        # Install Mongodb database server
}


################## Main Process #####################

echo -n "Install EPEL Repo Support (y/N)? "
read is_basic_epel_repo
if [ $is_basic_epel_repo == "y" ];then
    basic_epel_repo
fi

echo -n "Install 163 Repo Support (y/N)? "
read is_basic_163_repo
if [ $is_basic_163_repo == "y" ];then
    basic_163_repo
fi

echo "Update System"
sys_update


echo -n "Install Basic Runtime Support (y/N)? "
read is_basic_runtime
if [ $is_basic_runtime == "y" ];then
    basic_runtime
fi

echo -n "Install Basic Tool Support (y/N)? "
read is_basic_tools
if [ $is_basic_tools == "y" ];then
    basic_tools
fi

echo -n "Install Java Support (y/N)? "
read is_adv_java
if [ $is_adv_java == "y" ];then
    adv_java
fi

echo -n "Install Python Support (y/N)? "
read is_adv_python
if [ $is_adv_python == "y" ];then
    adv_python
fi

echo -n "Install PHP Support (y/N)? "
read is_adv_php
if [ $is_adv_php == "y" ];then
    adv_php
fi

echo -n "Install Advanced Tools Support (y/N)? "
read is_adv_tools
if [ $is_adv_tools == "y" ];then
    adv_tools
fi
