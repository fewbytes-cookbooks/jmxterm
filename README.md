## jmxterm cookbook
Installs `jmxterm` and executes jmx command. 

## Requirements

## Usage

```ruby
jmxterm_jmx_exec "<name>" do
	command "<string>" # 
end 
```

## Attributes
```
default['jmxterm']['provider']['site']	=	'http://downloads.sourceforge.net/cyclops-group/jmxterm-1.0-alpha-4-uber.jar' # Source  
default['jmxterm']['version']		=	"1.0-alpha-4-uber" # Version
default['jmxterm']['dest'] 		=	"/opt/jmxterm.jar" # Target location 
```

## Recipes

## Author

Author:: Alex SHD (alex@fewbytes.com)
