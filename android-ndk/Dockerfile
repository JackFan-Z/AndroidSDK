# ====================================================================== #
# Android SDK Docker Image
# ====================================================================== #

# Base image
# ---------------------------------------------------------------------- #
FROM ubuntu:16.04

# Author
# ---------------------------------------------------------------------- #
LABEL maintainer "fanjack@gmail.com"

# support multiarch: i386 architecture
# install Java
# install essential tools
# install Qt
RUN dpkg --add-architecture i386 && \
    apt-get update -y && \
    apt-get install -y build-essential

RUN apt-get install -y curl zip

# Android NDK r16b
ENV ANDROID_NDK_VERSION r16b
ENV ANDROID_NDK_URL http://dl.google.com/android/repository/android-ndk-${ANDROID_NDK_VERSION}-linux-x86_64.zip
RUN curl -L "${ANDROID_NDK_URL}" -o android-ndk-${ANDROID_NDK_VERSION}-linux-x86_64.zip \
  && unzip android-ndk-${ANDROID_NDK_VERSION}-linux-x86_64.zip -d /opt  \
  && rm -rf android-ndk-${ANDROID_NDK_VERSION}-linux-x86_64.zip
ENV ANDROID_NDK_HOME /opt/android-ndk-${ANDROID_NDK_VERSION}
ENV PATH ${ANDROID_NDK_HOME}:$PATH
RUN chmod u+x ${ANDROID_NDK_HOME}/ -R

# Android NDK r18b
ENV ANDROID_NDK_VERSION r18b
ENV ANDROID_NDK_URL http://dl.google.com/android/repository/android-ndk-${ANDROID_NDK_VERSION}-linux-x86_64.zip
RUN curl -L "${ANDROID_NDK_URL}" -o android-ndk-${ANDROID_NDK_VERSION}-linux-x86_64.zip \
  && unzip android-ndk-${ANDROID_NDK_VERSION}-linux-x86_64.zip -d /opt  \
  && rm -rf android-ndk-${ANDROID_NDK_VERSION}-linux-x86_64.zip
RUN chmod u+x /opt/android-ndk-${ANDROID_NDK_VERSION} -R

# Android NDK r12b for CS1 2019/04/22
ENV ANDROID_NDK_VERSION r12b
ENV ANDROID_NDK_URL http://dl.google.com/android/repository/android-ndk-${ANDROID_NDK_VERSION}-linux-x86_64.zip
RUN curl -L "${ANDROID_NDK_URL}" -o android-ndk-${ANDROID_NDK_VERSION}-linux-x86_64.zip \
  && unzip android-ndk-${ANDROID_NDK_VERSION}-linux-x86_64.zip -d /opt  \
  && rm -rf android-ndk-${ANDROID_NDK_VERSION}-linux-x86_64.zip
RUN chmod u+x /opt/android-ndk-${ANDROID_NDK_VERSION} -R
RUN apt-get update -y
RUN apt-get install -y file

# Set NDK Version Script
ADD setNdkVersion.sh /opt/
