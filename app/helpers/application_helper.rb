module ApplicationHelper
  def full_title page
    base_title = "スマートフォンビュー"
    page.present? ? page + " | " + base_title : base_title
  end
end
