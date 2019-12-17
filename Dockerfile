ARG version="18.04"
FROM ubuntu:$version
RUN echo "Version : "$version
ARG licensekey="100.200.200"
# First Dcockerfile...
LABEL MAINTAINER mohamed.kashif@apps.com
RUN mkdir /code
COPY Sample.sh /code/Sample.sh
COPY testfile /code/testfile
RUN chmod +x /code/Sample.sh
RUN echo "Image is build at `date`"
RUN echo "LinceseKey : "$licensekey
ENTRYPOINT ["sh", "/code/Sample.sh"]
CMD ["/code/testfile"]
