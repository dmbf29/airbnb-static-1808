Rails.application.routes.draw do
  # VERB '/path', to: 'controller#action', as: :prefix
  # home page (index) listing flats.
  root to: 'flats#index'
  # show page for one flat
  get '/flats/:id', to: 'flats#show', as: :flat
  # anything after the 2nd / will be in the params as :id
  # params[:id]
end


# Read all -> index
# Read one -> show
