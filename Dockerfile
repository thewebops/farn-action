FROM alpine:lastest

# ENV ANDROID_HOME=/opt/android
# ENV GRADLE_USER_HOME=/opt/gradle
# ENV WEBOPS_KEYSTORE_DIRECTORY=/app/android/app
# ENV ANDROID_VERSION=28
# ENV BUILD_TOOLS=28.0.3
# ENV ANDROID_SDK_URL=https://dl.google.com/android/repository/sdk-tools-linux-4333796.zip
# ENV PATH $PATH:$ANDROID_HOME/tools
# ENV PATH $PATH:$ANDROID_HOME/platform-tools
# ENV PATH $PATH:$ANDROID_HOME/build-tools/${BUILD_TOOLS}

# RUN apt-get update && \
#     apt-get install -y gnupg build-essential curl software-properties-common apt-transport-https

# RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
#     echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

# RUN curl -sL https://deb.nodesource.com/setup_12.x | bash 

# RUN apt update && \
#     apt-get -y install nodejs unzip yarn ruby-full

# RUN rm -fr /var/lib/apt/lists/* /tmp/* /var/tmp/*

# RUN gem install fastlane -NV

# RUN mkdir -p $ANDROID_HOME

# RUN cd $ANDROID_HOME && \
#     curl -L $ANDROID_SDK_URL -o android-sdk-tools.zip && \
#     unzip -q android-sdk-tools.zip && \ 
#     rm -f android-sdk-tools.zip

# RUN yes | ${ANDROID_HOME}/tools/bin/sdkmanager --licenses && \
#     yes | ${ANDROID_HOME}/tools/bin/sdkmanager --verbose \
#     'platform-tools' \
#     "platforms;android-${ANDROID_VERSION}" \
#     "build-tools;${BUILD_TOOLS}"

COPY . .

RUN ls