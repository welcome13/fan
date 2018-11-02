FROM java
copy mywork /mywork
WORKDIR /mywork
ENTRYPOINT  ["java","first.java"]
