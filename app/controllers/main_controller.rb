class MainController < ApplicationController
layout 'main'
def pro_list
 @projects = Project.paginate(:page => params[:page], :per_page => 2)
end

def dev_list
@developers = Developer.paginate(:page => params[:page], :per_page => 2)
end

def pro_show
@project = Project.find(params[:id])
render(:action => "pro_show")
end
def about
    @month = (params[:month] || (Time.zone || Time).now.month).to_i
    @year = (params[:year] || (Time.zone || Time).now.year).to_i

    @shown_month = Date.civil(@year, @month)

    @event_strips = Event.event_strips_for_month(@shown_month)
end
  def event_list
  @events = Event.all
  end
  def event_show
@event = Event.find(params[:id])
render(:action => "event_show")
end

end
