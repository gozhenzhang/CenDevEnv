set -e

############ Basic: System ##############
sudo yum install -y epel-release                   # Adding EPEL Repo
sudo yum update  -y                                # Update system


############ Basic: Runtime ##############
sudo yum install -y gcc                            # Install C compiler
sudo yum install -y gcc-c++                        # Install C++ compiler
sudo yum install -y gcc-gfortran                   # Install Fortran compiler

sudo yum install -y make                           # Install make tool
sudo yum install -y gdb                            # Install gdb debug tool
sudo yum install -y cmake                          # Install cmake tool
sudo yum install -y git                            # Install git version control tool


############ Basic: Tools ################
sudo yum install -y p7zip                          # Install support to .7z or .zip file
sudo yum install -y lrzsz                          # Install support to sz and rz command
sudo yum install -y zsh                            # Install zsh 
sudo chsh -s $(which zsh)                          # Set zsh as the default shell
sudo yum install -y autojump                       # Install autojump
sudo yum install -y autojump-zsh                   # Install autojump for zsh


############ Advanced: Java ##############
sudo yum install -y java                           # Install Java runtime


########### Advanced: Python #############
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


########### Advanced: PHP ################
sudo yum install -y php                            # Install PHP
sudo yum install -y php-mysql                      # Install MySQL support for PHP
sudo yum install -y php-fpm                        # Install PHP-fpm
sudo yum install -y php-redis                      # Install Redis support for PHP


############ Advanced: Tools #############
sudo yum install -y httpd                          # Install Apache server
sudo yum install -y redis                          # Install Redis
sudo yum install -y mysql-server                   # Install MySQL database server
sudo yum install -y mongodb                        # Install Mongodb database server