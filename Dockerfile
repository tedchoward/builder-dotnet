FROM jenkinsxio/builder-base:0.0.370

RUN rpm -Uvh https://packages.microsoft.com/config/rhel/7/packages-microsoft-prod.rpm \
    && yum update \
    && yum -y install dotnet-sdk-2.1 lcov
