require 'ffi'

module Sum
  extend FFI::Library
  ffi_lib 'exe/libadd.so'
  attach_function :add, [:int, :int], :int

  def self.add_go(x,y)
    add(x,y)
  end

  def self.add_ruby(x,y)
    c = 0
    i = 0
    while i<50000
      c += x + y + 1
      i = i+1
    end
    c
  end
end
