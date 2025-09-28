# Base Image selection: Ab Tomcat 10 ke saath OpenJDK 21 ka istemal karenge
FROM tomcat:10-jdk21-openjdk

# Apni WAR file ko Tomcat ke webapps directory mein copy karo
# 'JavaOTPsender.war' ko apni WAR file ke sahi naam se replace karna mat bhulna.
# Ye assume karta hai ki tumhari WAR file 'target' folder mein hai.
COPY target/JavaOTPsender.war /usr/local/tomcat/webapps/

# Container start hone par Tomcat server chalane ka command
CMD ["catalina.sh", "run"]
