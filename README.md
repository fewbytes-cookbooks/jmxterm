## jmxterm cookbook
Installs `jmxterm` and executes jmx command. 

## Requirements
Java

## Usage

```ruby
jmxterm_jmx_exec "<mbean>" do
	method "<string>" # 
    arguments ["arg1", "arg2"] # single non-array argument also allowed
end 
```

## Attributes
* `node['jmxterm']['url']` - URL to download jmxterm from
* `node['jmxterm']['checksum']` - checksum of jmxterm jar to avoid re-downloading
* `node['jmxterm']['dest']` - Target location for the jmxterm jar

## Recipes

## Author

Author:: Alex SHD (alex@fewbytes.com)
