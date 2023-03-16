# frozen_string_literal: true

# BEGIN
module Model
  def initialize(attrs = {})
    @attributes = {}
    self.class.options.each do |name, options|
      value = attrs[name] || options[:default]
      set value, to: name
    end
  end

  module ClassMethods
    def options
      @options || {}
    end

    def converting(input, to:)
      return input if input.nil?

      case to
      when :integer
        input.to_i
      when :string
        input.to_s
      when :boolean
        input == true
      when :datetime
        DateTime.parse(input)
      else
        raise 'Unknown type!'
      end
    end

    def attribute(name, **options)
      @options ||= {}
      @options[name] = options

      define_method name do
        @attributes[name]
      end

      define_method "#{name}=" do |value|
        set value, to: name
      end
    end
  end

  def self.included(base)
    base.extend(ClassMethods)
  end

  def set(value, to:)
    options = self.class.options[to]
    @attributes[to] = self.class.converting value, to: options[:type]
  end

  def attributes
    @attributes
  end
end
