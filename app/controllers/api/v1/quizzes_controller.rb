module Api
  module V1
    class QuizzesController < ApplicationController
      def index
        render json: {status: 'OK'}, status: :ok
        #poll cache entry with "not started" quizzes and return it back
        #if cache entry expires (Every 5 mins), set cache entry and return
      end

      def create
        quiz = Quiz.new(quiz_params)
        ## TODO: Check that quizzes start at a future date and time

        #set quiz state to not started for new quizzes
        quiz_state == 'NOT_STARTED'

        #if category is not set, get random questions
        if quiz.category is blank
          Question.
        end

        if quiz.save
          render json: {status: 'OK', data: {id: quiz.id}}, status: :ok
        else
          render json: {status: 'ERROR', data: quiz.errors}, status: :unprocessable_entity
        end
      end

      private
      def quiz_params
        params.permit(:title, :num_questions, :duration, :categories, :createdby, :start_time);
      end
    end
  end
end
