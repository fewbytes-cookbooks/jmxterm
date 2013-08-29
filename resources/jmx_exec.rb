actions :run
default_action :run

attribute :mbean,		:kind_of => String, :name_attribute => true, :required	=> true
attribute :method,		:kind_of => String,	:required => true
attribute :arguments,   :kind_of => [Array, String, Numeric]
attribute :port,		:kind_of => String,	:default => '9000'
attribute :host,		:kind_of => String, :default => 'localhost'
attribute :user,		:kind_of => String,	:default =>	nil
attribute :password,	:kind_of => String,	:default => nil

