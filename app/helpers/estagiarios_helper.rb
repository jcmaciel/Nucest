module EstagiariosHelper
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
end
