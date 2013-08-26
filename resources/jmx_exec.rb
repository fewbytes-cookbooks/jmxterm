actions :run
default_action :run

attribute :name,		:kind_of => String, :name_attribute => true, :required	=> true
attribute :port,		:kind_of => String,	:default => '8999'
attribute :host,		:kind_of => String, :default => 'localhost'
attribute :user,		:kind_of => String,	:default =>	nil
attribute :password,	:kind_of => String,	:default => nil
attribute :command,		:kind_of => String,	:required => true

