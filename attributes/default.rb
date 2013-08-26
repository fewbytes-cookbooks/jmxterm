
default['jmxterm']['provider']['maven']	=	nil
default['jmxterm']['provider']['site']	=	'http://downloads.sourceforge.net/cyclops-group/jmxterm-1.0-alpha-4-uber.jar'
default['jmxterm']['version']			=	"1.0-alpha-4-uber"
default['jmxterm']['dest'] 				= 	"/opt/jmxterm.jar"

#default['tomcat']['java_options'] = "#{tomcat['java_options']} -Dcom.sun.management.jmxremote -Djava.rmi.server.hostname=#{ipaddress} -Dcom.sun.management.jmxremote.port=8999 -Dcom.sun.management.jmxremote.ssl=false -Dcom.sun.management.jmxremote.authenticate=false"