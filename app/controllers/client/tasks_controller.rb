class Client::TasksController < Client::BaseController

    def index
        @tasks = current_user.tasks
    end
    
    def new		
		@groups = current_user.groups
    end
    
	def create

		if params[:task][:fields].present? and params[:task][:title].present?

			if current_user.tasks.exists?(:title => params[:task][:title])
				flash[F_PARA[:err]] = "Task title already exists please choose a new task name."
				render json: {J_PARA[:redirect] => client_tasks_path}
				return
			end

			# validate_task_fields('') # This function will be used to validate the fields.

			label_name = []
			json = JSON.parse(params[:task][:fields])

			json['fields'].each do |obj|
				label_name.push(obj["label"])
			end

			if label_name.uniq.length != label_name.length
				flash[F_PARA[:err]] = "Label must be unique for each element. Please recreate and make sure labels are unique."
				render json: {J_PARA[:redirect] => tasks_path}
				return
			end

			# if params[:task][:group_id].nil? || params[:task][:group_id].blank?
			# 	puts "group id: #{params[:task][:group_id]}"
			# 	group_id = -999
			# elsif
			# 	group_id = params[:task][:group_id]
			# end

			@task = current_user.tasks.create(fields: JSON.parse(params[:task][:fields]), title: params[:task][:title], description: 'This is just a test des. IN MODEL')
			if @task
				# current_admin.send_form_updation_GCM(@task)
				# Send GCM trigger async
				# NewTaskWorker.perform_async(@task)
				# NewTaskGcmTriggerWorker.perform_async(@task.id,current_admin.id)

				flash[F_PARA[:info]] = "Task Created Successfully."
				render json: {J_PARA[:redirect] => client_dashboard_index_path}, status: :created
			else
				flash[F_PARA[:err]] = "There is issue creating a task, please try again."
				# render json: {J_PARA[:err] => form.errors.full_messages}, status: :unprocessable_entity
			end
		else
			render json: {J_PARA[:err] => ERRORS[:INCOMPLETE_DATA]}, status: :not_acceptable
		end
	end

end