class Object
  def oror(alternative)
    if respond_to?(:empty?) && !!empty? || !self
      alternative
    else
      self
    end
  end
end
