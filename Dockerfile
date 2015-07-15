FROM centos:7
MAINTAINER Aleksandr Lykhouzov <lykhouzov@gmail.com>

RUN groupadd -r memcache && useradd -r -g memcache memcache
# Install MEMCACHED
RUN yum update -y &&  yum install -y memcached

EXPOSE 11211

USER memcache
CMD ["memcached"]
