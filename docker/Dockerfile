FROM centos7-bootable

MAINTAINER RJ Bergeron <rbergero@gmail.com>

# install/remove packages
RUN yum -y groupinstall "X Window System" Xfce && \
    yum -y install gdm && \
    find / -type d \( -name proc -o -name sys \) -prune -o -iname \*.rpmnew -exec rm {} \;
