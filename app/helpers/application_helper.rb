module ApplicationHelper
  def full_title page
    base_title = "SMARTPHONE-REVIEW"
    page.present? ? page + " | " + base_title : base_title
  end
end
