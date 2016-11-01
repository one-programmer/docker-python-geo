FROM python:3.5
RUN wget http://download.osgeo.org/geos/geos-3.4.2.tar.bz2
RUN tar xjf geos-3.4.2.tar.bz2
WORKDIR geos-3.4.2
RUN ./configure
RUN make
RUN make install
ENV LD_LIBRARY_PATH /usr/local/lib/
