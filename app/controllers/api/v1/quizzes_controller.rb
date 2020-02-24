module Api
  module V1
    class QuizzesController < ApplicationController
      def index
        render json: {status: 'OK'}, status: :ok
      end

      def create
        quiz = Quiz.new(quiz_params)

        if quiz.save
          render json: {status: 'OK', data: {id: quiz.quiz_id}}, status: :ok
        else
          render json: {status: 'ERROR', data: article.error}, status: :unprocessable_entity
        end
      end

      private
      def quiz_params
        params.permit(:title, :num_questions, :duration, :categories, :createdby);
      end
    end
  end
end
