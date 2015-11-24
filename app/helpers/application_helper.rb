module ApplicationHelper
  def fix_url(url)
    url.start_with?("http://") ? url : "http://#{url}"
  end

  def fix_datetime(dt)
    dt.strftime("%D %R") 
  end
end
