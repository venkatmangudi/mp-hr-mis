class AchievementsController < InheritedResources::Base
	def new
  		@achievement = Achievement.new(:employee_id => params[:id])
	end

	def create
		@achievement = Achievement.new(params[:achievement])
		    respond_to do |format|
		      if @achievement.save
		        format.html { redirect_to @achievement, notice: 'Achievement was successfully created.' }
		        format.json { render json: @achievement, status: :created, location: @achievement }
		      else
		        format.html { render action: "new" }
		        format.json { render json: @achievement.errors, status: :unprocessable_entity }
		      end
    		end
	end
end
