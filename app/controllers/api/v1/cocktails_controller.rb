require 'pry'
module Api
  module V1
    class CocktailsController < ApplicationController
      def index
        render json: Cocktail.all
      end

      def show
        render json: Cocktail.find(params[:id])
      end

      def create
        @cocktail = Cocktail.create(name: params[:cocktail][:name], description: params[:cocktail][:description], instructions: params[:cocktail][:instructions], source: params[:cocktail][:source])
        render json: @cocktail
      end

      def edit

      end

      def update

      end

      def destroy

      end
    end
  end
end
