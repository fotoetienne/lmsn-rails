module ApplicationHelper

  def logo
    image_tag("logo.jpg", :alt => "Let Me Sing Now, llc", :class => "round")
  end

  # Return a title on a per-page basis.
  def title
    base_title = "Let Me Sing Now, llc"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end
end
