class TasksController < ApplicationController
    def index
        @tasks = Task.order(craated_at: :desc)
    end

    def new
        @task = Task.new
    end

    def create
        @task = Task.new(task_params)
    end

    def show
        @task = Task.find(params[:id])
    end

    private

    def task_params
        params.require(:task).permit(:completed, :creator, :description, :name, :performer, :status)
    end

end
# == Schema Information
#
# Table name: tasks
#
#  id          :integer          not null, primary key
#  completed   :boolean
#  creator     :string
#  description :text
#  name        :string
#  performer   :string
#  status      :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#