#!/bin/sh
export MAVEN_OPTS="-Xmx1024m"

# Android SDK
if [ "$(uname -s)" = "Darwin" ]; then
  export ANT_HOME=/usr/local/opt/ant
  export MAVEN_HOME=/usr/local/opt/maven
  export GRADLE_HOME=/usr/local/opt/gradle
  export ANDROID_HOME=/usr/local/opt/android-sdk
  export ANDROID_NDK_HOME=/usr/local/opt/android-ndk

  export PATH=$ANT_HOME/bin:$PATH
  export PATH=$MAVEN_HOME/bin:$PATH
  export PATH=$GRADLE_HOME/bin:$PATH
  export PATH=$ANDROID_HOME/tools:$PATH
  export PATH=$ANDROID_HOME/platform-tools:$PATH
  export PATH=$ANDROID_HOME/build-tools/$(ls $ANDROID_HOME/build-tools | sort | tail -1):$PATH
else
  export ANDROID_HOME=$HOME/Android/Sdk
  export ANDROID_NDK_HOME=$HOME/Android/Sdk/Ndk

  export PATH=$PATH:$ANDROID_NDK_HOME
fi
