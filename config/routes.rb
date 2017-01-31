Rails.application.routes.draw do
  get("/",        { :controller => "guesses", :action => "all_guesses" })
  get("/all_guesses", { :controller => "guesses", :action => "all_guesses"})
  get("/show_answer", { :controller => "guesses", :action => "show_answer"})
end
