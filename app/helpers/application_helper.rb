module ApplicationHelper
  def full_name(first_name, last_name)
    "#{capitalize_first_letter(first_name)} #{capitalize_first_letter(last_name)}"
  end

  def capitalize_first_letter(str)
    str[0].capitalize+str[1..-1] unless str.blank?
  end
end
