Rails.application.routes.draw do
  devise_for :members
  root to: "homes#top"
end
