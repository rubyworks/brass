class Exception

  # Is the exception an assertion error?
  def assertion?
    @assertion
  end

  # Set the the exception's assertion flag.
  def set_assertion(boolean)
    @assertion = boolean  # ? true : false
  end

end

module Kernel

  # Track assertions counts.
  $ASSERTION_COUNTS ||= Hash.new{ |h,k| h[k] = 0 }

  #
  # Universal assertion method.
  #
  def assert(truth, *raise_arguments)
    $ASSERTION_COUNTS[:total] += 1
    if truth
      $ASSERTION_COUNTS[:pass] += 1
    else
      $ASSERTION_COUNTS[:fail] += 1
      # if fail set assertion=true then just,
      #   fail *raise_arguments
      # but alas ...
      if Exception === raise_arguments.first
        error = raise_arguments.shift
      else
        if Exception > raise_arguments.first
          error_class = raise_arguments.shift
        else
          error_class = StandardError
        end
        error = error_class.new(*raise_arguments)
      end
      error.set_assertion(true)
      raise error
    end
  end

  module_function :assert

  #
  # Universal refutation method (opposite of `#assert`).
  #
  def refute(truth, *raise_arguments)
    $ASSERTION_COUNTS[:total] += 1
    if truth
      $ASSERTION_COUNTS[:fail] += 1
      # if fail set assertion=true then just,
      #   fail *raise_arguments
      # but alas ...
      if Exception === raise_arguments.first
        error = raise_arguments.shift
      else
        if Exception > raise_arguments.first
          error_class = raise_arguments.shift
        else
          error_class = StandardError
        end
        error = error_class.new(*raise_arguments)
      end
      error.set_assertion(true)
      raise error
    else
      $ASSERTION_COUNTS[:pass] += 1
    end
  end

  module_function :refute

  # TODO: Consider `#expect` method.

  #def expect(error_class) #:yield:
  #  begin
  #    yield
  #    assert(false, error_class, "#{error_class} expected but none thrown")
  #  rescue error_class
  #    assert(true)
  #  rescue Exception => err
  #    assert(false, error_class, "#{error_class} expected but #{err} was thrown")
  #  end
  #end
end
