class Admin::LinksController < Admin::BaseController
  make_resourceful do
    actions :all

    after(:update) do
      flash[:notice] = "Link updated"
    end

    response_for(:update) do
      redirect_to(:action => 'index')
    end
  end

  protected

  def current_objects
    @current_object ||= current_model.paginate(
      :order => "name",
      :page => params[:page]
    )
  end
end
