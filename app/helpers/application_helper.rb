module ApplicationHelper

  def display_address(resource)
    resource.address.full_address.html_safe
  end

  def display_contact(resource)
    resource.contact_info.html_safe
  end
end
