class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  
  def home
    @CATEGORIES = [
      { name: "Coronavirus", filename: "coronavirus.jpg" },
      { name: "Hunger and Poverty", filename: "hunger-poverty.jpg" },
      { name: "Health", filename: "health.jpg" },
      { name: "Eldery", filename: "eldery.jpg" },
      { name: "Children", filename: "children.jpg" },
      { name: "Education", filename: "education.jpg" },
      { name: "Emergency Situations", filename: "emergency.jpg" }
    ]
    @urgent_campaigns = Campaign.all.reject {|campaign| campaign.raised >= campaign.total}.sort {|campaign| campaign.raised / campaign.total.to_f }.first(3)
    @latest_reviews = Review.order(created_at: :desc).sample(5)
  end

  def dashboard
    
  end
  
end
