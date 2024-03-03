module ApplicationHelper
  def active_class(link_path)
    current_page?(link_path) ? 'bg-gray-800 text-white' : 'text-gray-400 hover:text-white hover:bg-gray-800'
  end
end
