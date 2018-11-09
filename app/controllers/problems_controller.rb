class ProblemsController < ApplicationController
    def new
    end

    def create
        @problem = Problem.new(params[:problem])
        @problem.save
    end
end
