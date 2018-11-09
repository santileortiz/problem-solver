class ApplicationController < ActionController::Base
  def index
    @problems = Problem.all
    @solutions = Solution.all
    render 'index'
  end

  def entry
    if params[:entry_content].length > 0
      if params.key? ("new_solution")
        @solution = Solution.new ({:name => params[:entry_content]})
        @solution.save
        redirect_to root_path

      elsif params.key? ("new_problem")
        @problem = Problem.new ({:name => params[:entry_content]})
        @problem.save
        redirect_to root_path

      else
        # Search for what's in the entry
      end
    end

  end
end
