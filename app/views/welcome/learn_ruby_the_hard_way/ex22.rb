def convert_number(object)
  begin
    return Integer(object)
  rescue
    return 'not a number'
  end
end

puts convert_number('hi')