actions :run
default_action :run

attribute :mbean,		  kind_of: String, name_attribute: true, required: true
attribute :operation,     kind_of: String, required: true
attribute :arguments,     kind_of: [Array, String, Numeric, TrueClass, FalseClass]
attribute :port,		  kind_of: Numeric, default: 9000
attribute :host,		  kind_of: String, default: 'localhost'
attribute :user,		  kind_of: String, default: nil
attribute :password,	  kind_of: String, default: nil
