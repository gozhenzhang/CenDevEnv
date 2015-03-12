set -e

############ Basic: System ##############
function basic_system()
{
    sudo yum install -y epel-release                   # Adding EPEL Repo
    sudo yum update  -y                                # Update system
}


############ Basic: Runtime ##############
function basic_runtime()
{
    sudo yum install -y gcc                            # Install C compiler
    sudo yum install -y gcc-c++                        # Install C++ compiler
    sudo yum install -y gcc-gfortran                   # Install Fortran compiler
    sudo yum install -y make                           # Install make tool
    sudo yum install -y gdb                            # Install gdb debug tool
    sudo yum install -y cmake                          # Install cmake tool
    sudo yum install -y git                            # Install git version control tool
}


############ Basic: Tools ################
function basic_tools()
{
    sudo yum install -y p7zip                          # Install support to .7z or .zip file
    sudo yum install -y lrzsz                          # Install support to sz and rz command
    sudo yum install -y zsh                            # Install zsh 
    sudo chsh -s $(which zsh)                          # Set zsh as the default shell
    sudo yum install -y autojump                       # Install autojump
    sudo yum install -y autojump-zsh                   # Install autojump for zsh
}

############ Advanced: Java ##############
function adv_java()
{
    sudo yum install -y java                           # Install Java runtime
}


########### Advanced: Python #############
function adv_python()
{
    sudo yum install -y python-pip                     # Install Python pip package tool 
    sudo yum install -y python-matplotlib              # Install Matplotlib drawing library
    sudo yum install -y numpy                          # Install Numpy matrix calculation library
    sudo yum install -y scipy                          # Install Scipy scientific calculation library
    sudo yum install -y python-requests                # Install Requests webpage library
    sudo yum install -y python-lxml                    # Install lxml webpage analyse library
    sudo yum install -y python-beautifulsoup4          # Install BeautifulSoup webpage analyse library
    sudo yum install -y python-docopt                  # Install Docopt commandline library
    sudo yum install -y python-argparse                # Install Argparse commandline library
    sudo yum install -y ipython                        # Install iPython runtime
}

########### Advanced: PHP ################
function adv_php()
{
    sudo yum install -y php                            # Install PHP
    sudo yum install -y php-mysql                      # Install MySQL support for PHP
    sudo yum install -y php-fpm                        # Install PHP-fpm
    sudo yum install -y php-redis                      # Install Redis support for PHP
}


############ Advanced: Tools #############
function adv_tools()
{
    sudo yum install -y httpd                          # Install Apache server
    sudo yum install -y redis                          # Install Redis
    sudo yum install -y mysql-server                   # Install MySQL database server
    sudo yum install -y mongodb                        # Install Mongodb database server
}


################## Main Process #####################

echo -n "Install Basic System Support (y/N)? "
read is_basic_system
if [ $is_basic_system == "y" ];then
    basic_system
fi

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
