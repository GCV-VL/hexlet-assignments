class TasksController < ApplicationController
    def index
        @tasks = Task.order(craated_at: :desc)
    end

    def new
        @task = Task.new
    end

    def create
        @task = Task.new(task_params)

        if @task.save
            redirect_to task_url(@task)
            flash[:success] = 'done'
        else
            flash[:fail] = 'not saved'
            render :new
        end
    end



    def show
        @task = Task.find(params[:id])
    end

    def edit
        @task = Task.find(params[:id])


    end

    def update
        @task = Task.find params[:id]

        if @task.update(task_params)
            redirect_to task_url(@task)
            flash[:success] = 'done'
        else
            flash[:fail] = 'not saved'
            render :edit
        end
    end

    def destroy
        @task = Task.find(params[:id])

        if @task.destroy
            redirect_to tasks_url
        else
            redirect_to task_url(@task)
        end
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