module Api
  module V1
    class CategoriesController < ApplicationController
      def index
        categories = Category.order('created_at DESC');
        render json: {status: 'OK', data: categories }, status: :ok
      end

      def create
        category = Category.new(category_params)

        if category.save
          render json: {status: 'OK', data: {id:category.id}}, status: :ok
        else
          render json: {status: 'ERROR', data: category.errors}, status: :unprocessable_entity
        end
      end

      private

      def category_params
        params.permit(:name)
      end

    end
  end
end
