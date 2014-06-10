require "fn_syntax/version"

module FnSyntax
  class FnObject
    attr_accessor :_args_
    def initialize(args)
      self._args_ = args
    end

    (1..9).each do |n|
      define_method "_#{n}" do
        self._args_[n-1]
      end

      define_method "_#{n}=" do |new_value|
        self._args_[n-1] = new_value
      end
    end
  end

  module ::Kernel
    def fn(&block)
      proc do |*args|
        FnObject.new(args).instance_exec &block
      end
    end
  end
end
