FROM openjdk:8

RUN apt-get update && apt-get install -y wget

RUN wget https://raw.githubusercontent.com/iBotPeaches/Apktool/master/scripts/linux/apktool -O apktool

RUN chmod +x apktool

RUN wget https://bitbucket.org/iBotPeaches/apktool/downloads/apktool_2.4.0.jar -O apktool.jar

RUN chmod +x apktool.jar

RUN mv apktool apktool.jar /usr/local/bin/

VOLUME [ "/apk" ]