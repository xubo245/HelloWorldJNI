 cd src/main/scala/
scalac org/digimead/HelloWorldJNI.scala
javah -jni org.digimead.HelloWorldJNI
gcc -shared -I $JAVA_HOME/include -I $JAVA_HOME/include/linux -fPIC  ./org_digimead_HelloWorldJNI.c -o liborg_digimead_HelloWorldJNI.so
java -Djava.library.path=. org.digimead.HelloWorldJNI
