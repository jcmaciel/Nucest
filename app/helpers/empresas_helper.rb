module EmpresasHelper
    def options_with_one_selected(list, id_attribute, value_attribute, compare = nil)
    result = ""
    list.each do |item|
      result += '<option value="' + item[id_attribute].to_s + '"'
      if compare
        result += 'selected="selected"' if item == compare
      else
        result += 'selected="selected"' if item.default?
      end
      result += ">" + item[value_attribute] + "</option>"
    end
    result
  end

  def checked?( *args )
  if args.length == 3
    object, method, value = args
    if params[object] && params[object][method] && params[object][method] == value
      'checked'
    end
  elsif args.length == 2
    name, value = args
    if params[name] && params[name] == value
      true
    end
  end
end

end

