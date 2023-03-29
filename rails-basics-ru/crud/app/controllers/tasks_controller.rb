class TasksController < ApplicationController
    def index
        @tasks = Task.order(craated_at: :desc)
    end
end
