class UsercommentsController < ApplicationController
    def create
        @usercomment = current_user.usercomments.new(usercomment_params)
        if !@usercomment.save
            flash[:notice] = @usercomment.errors.full_messages.to_sentence
        end

        redirect_to message_path(params[:message_id])
    end

    private

    def usercomment_params
        params
            .require(:usercomment)
            .permit(:content)
            .merge(message_id: params[:message_id])
    end
end
