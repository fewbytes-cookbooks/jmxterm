default['jmxterm']['checksum']          =   'ed0f93bcc0bcdb3397a96c9942f4b8428a4e47451d1acd20a987b560138f70aa'
default['jmxterm']['url']				=	'http://downloads.sourceforge.net/cyclops-group/jmxterm-1.0-alpha-4-uber.jar'
default['jmxterm']['version']			=	"1.0-alpha-4-uber"
default['jmxterm']['dest'] 				= 	"/opt/jmxterm/jmxterm.jar"

#default['tomcat']['java_options'] = "#{tomcat['java_options']} -Dcom.sun.management.jmxremote -Djava.rmi.server.hostname=#{ipaddress} -Dcom.sun.management.jmxremote.port=8999 -Dcom.sun.management.jmxremote.ssl=false -Dcom.sun.management.jmxremote.authenticate=false"