module Grape
  module Formatter
    module Xml
      class << self
        def call(object, _env)
          return object.to_xml if object.respond_to?(:to_xml)
          return object.to_s if object.respond_to?(:to_s)
          fail Grape::Exceptions::InvalidFormatter.new(object.class, 'xml')
        end
      end
    end
  end
end
