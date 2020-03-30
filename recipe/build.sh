export LAPACK_LINK="-llapack ${LDFLGAS}"
export MPIFX=mpifort

export USER_CXXFLAGS=${CXXFLAGS}
export USER_CFLAGS=${CFLAGS}
export USER_FFLAGS=${FFLAGS}
export USER_LDFLAGS=${LDFLAGS}

export MINUIT2_LIB=${PREFIX}/lib
export MINUIT2_INC=${PREFIX}/include/Minuit2

# need to make sure the setupo can find the source
export COSMOSIS_SRC_DIR=`pwd`/cosmosis

# these should not be packaged - they were at some point - being safe!
find cosmosis/. -name "*.so" -type f -delete
find cosmosis/. -name "*.o" -type f -delete

${PYTHON} -m pip install . -vv
