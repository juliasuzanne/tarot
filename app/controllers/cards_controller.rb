class CardsController < ApplicationController
  def index
    cards = Card.all
    render json: cards.as_json
  end

  def show
    card = Card.find_by(id: params[:id])
    render json: card.as_json
  end

  def update
    card = Card.find_by(id: params[:id])
    card.update(
      name: params[:name] || card.name,
      description: params[:description] || card.description,
      image: params[:image] || card.image,
      category: params[:category] || card.category,
    )
  end
end
