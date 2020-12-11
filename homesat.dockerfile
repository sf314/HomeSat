FROM cfs-base-image:latest

# Write all project files to the container
COPY ./ /HomeSat

# Place all work in this directory
WORKDIR /HomeSat

# Prepare PC-linux build 
RUN cp cfe/cmake/Makefile.sample Makefile
RUN cp -r cfe/cmake/sample_defs sample_defs
RUN make SIMULATION=native prep 
RUN make 
RUN make install
CMD cd build/exe/cpu1/ && ./core-cpu1