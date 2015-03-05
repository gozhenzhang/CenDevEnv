set -e

############ Basic: System ##############
sudo yum install -y epel-release                   # 添加EPEL Repo
sudo yum update  -y                                # 更新系统


############ Basic: Runtime ##############
sudo yum install -y gcc                            # 安装C编译器
sudo yum install -y gcc-c++                        # 安装C++编译器
sudo yum install -y gcc-gfortran                   # 安装Fortran编译器
#sudo yum install -y compat-gcc-44                 # 兼容gcc 4.4
#sudo yum install -y compat-gcc-44-c++             # 兼容gcc-c++ 4.4

sudo yum install -y make                           # 安装make
sudo yum install -y gdb                            # 安装gdb代码调试器        
sudo yum install -y cmake                          # 安装cmake
sudo yum install -y git                            # 安装git版本控制


############ Basic: Tools ################
sudo yum install -y p7zip                          # 安装对7z和zip的支持
sudo yum install -y lrzsz                          # 安装对sz和rz的支持
sudo yum install -y zsh                            # 安装zsh
sudo chsh -s $(which zsh)                          # 将zsh设置为默认shell
sudo yum install -y autojump                       # 安装autojump
sudo yum install -y autojump-zsh                   # 安装autojump对zsh的支持


############ Advanced: Java ##############
sudo yum install -y java                           # 安装Java运行环境


########### Advanced: Python #############
sudo yum install -y python-pip                     # 安装Python库安装工具pip
sudo yum install -y python-matplotlib              # 安装matplotlib会图库
sudo yum install -y numpy                          # 安装numpy数组操作库
sudo yum install -y scipy                          # 安装scipy科学计算库
sudo yum install -y python-requests                # 安装requests网页请求库
sudo yum install -y python-lxml                    # 安装lxml网页解析库
sudo yum install -y python-beautifulsoup4          # 安装BeautifulSoup网页解析库
sudo yum install -y python-docopt                  # 安装docopt命令行解析库
sudo yum install -y python-argparse                # 安装argparse命令行解析库
sudo yum install -y ipython                        # 安装iPython运行环境


########### Advanced: PHP ################
sudo yum install -y php                            # 安装PHP
sudo yum install -y php-mysql                      # 安装MySQL的PHP支持
sudo yum install -y php-fpm                        # 安装php-fpm
sudo yum install -y php-redis                      # 安装Redis的PHP支持


############ Advanced: Tools #############
sudo yum install -y httpd                          # 安装Apache服务器
sudo yum install -y redis                          # 安装Redis
sudo yum install -y mysql-server                   # 安装MySQL数据库
sudo yum install -y mongodb                        # 安装Mongo数据库