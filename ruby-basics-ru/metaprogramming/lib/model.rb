require 'date'

module Model
    def self.included(base)
      base.extend ClassMethods
      base.attr_reader :attr
    end

    module ClassMethods
      def attribute(name, options = {})
        @attributes ||= {}
        attributes[name] = options

        define_method("#{name}=") do
            @attr[name]
        end

        define_method("#{name}=") do |value|
            write_attr(name, value)
        end
      end

      def attributes
        @attributes ||= {}
      end
    end

    def initialize(attributes = {})
      attributes.each do |name, value|
        next unless self.class.attributes.key?(name)
        send("#{name}=", value)
      end
    end

    def attributes
      self.class.attributes.keys.each_with_object({}) do |name, result|
        result[name] = send(name)
      end
    end
  end
