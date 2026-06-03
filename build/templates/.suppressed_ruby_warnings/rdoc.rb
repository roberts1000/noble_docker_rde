# This is a temporary workaround to suppress console warnings caused by a combination of ruby/rdoc/rubygems.
# For more info, see https://github.com/roberts1000/noble_docker_rde/issues/126.
module Warning
  class << self
    alias_method :original_warn, :warn

    def warn(msg)
      # Skip RDoc constant redefinition warnings.
      return if msg.include?("rdoc-") && msg.include?("already initialized constant")
      return if msg.include?("rdoc-") && msg.include?("warning: previous definition of")

      original_warn(msg)
    end
  end
end
