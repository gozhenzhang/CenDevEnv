set -e

############ Basic: System ##############
sudo yum install epel-release                   # 添加EPEL Repo
sudo yum update                                 # 更新系统


############ Basic: Runtime ##############
sudo yum install gcc                            # 安装C编译器
sudo yum install gcc-c++                        # 安装C++编译器
sudo yum install gcc-gfortran                   # 安装Fortran编译器
#sudo yum install compat-gcc-44                  # 兼容gcc 4.4
#sudo yum install compat-gcc-44-c++              # 兼容gcc-c++ 4.4

sudo yum install make                           # 安装make
sudo yum install gdb                            # 安装gdb代码调试器        
sudo yum install cmake                          # 安装cmake
sudo yum install git                            # 安装git版本控制


############ Basic: Tools ################
sudo yum install p7zip                          # 安装对7z和zip的支持
sudo yum install lrzsz                          # 安装对sz和rz的支持
sudo yum install zsh                            # 安装zsh
sudo chsh -s $(which zsh)                       # 将zsh设置为默认shell
sudo yum install autojump                       # 安装autojump
sudo yum install autojump-zsh                   # 安装autojump对zsh的支持


############ Advanced: Java ##############
sudo yum install java                           # 安装Java运行环境


########### Advanced: Python #############
sudo yum install python-pip                     # 安装Python库安装工具pip
sudo yum install python-matplotlib              # 安装matplotlib会图库
sudo yum install numpy                          # 安装numpy数组操作库
sudo yum install scipy                          # 安装scipy科学计算库
sudo yum install python-requests                # 安装requests网页请求库
sudo yum install python-lxml                    # 安装lxml网页解析库
sudo yum install python-beautifulsoup4          # 安装BeautifulSoup网页解析库
sudo yum install python-docopt                  # 安装docopt命令行解析库
sudo yum install python-argparse                # 安装argparse命令行解析库
sudo yum install ipython                        # 安装iPython运行环境


########### Advanced: PHP ################
sudo yum install php                            # 安装PHP
sudo yum install php-mysql                      # 安装MySQL的PHP支持
sudo yum install php-fpm                        # 安装php-fpm
sudo yum install php-redis                      # 安装Redis的PHP支持


############ Advanced: Tools #############
sudo yum install httpd                          # 安装Apache服务器
sudo yum install redis                          # 安装Redis
sudo yum install mysql-server                   # 安装MySQL数据库
sudo yum install mongodb                        # 安装Mongo数据库