require 'active_support'
require 'hashery'

class OpenForumResponse < Hashery::OpenCascade

  def method_missing(method, *args, &block)
    ugly_camel_name = ActiveSupport::Inflector.classify(method).to_sym
    (self.keys.include?(ugly_camel_name)) ? self[ugly_camel_name] : super
  end

end