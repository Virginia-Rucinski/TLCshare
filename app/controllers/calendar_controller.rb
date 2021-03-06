class CalendarController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]
  def index
	render :layout=>'calendar_layout'
  end

  def data
   events = Event.all
   # @events = event_pid.events # will fetch all calendars with a user_id matching 

   render :json => events.map {|event| {
              :id => event.id,
              :start_date => event.start_date.to_formatted_s(:db),
              :end_date => event.end_date.to_formatted_s(:db),
              :text => event.text,
              :rec_type => event.rec_type,
              :event_length => event.event_length,
              :event_pid => event.event_pid
          }}
  end

  def db_action
     mode = params['!nativeeditor_status']
     id = params['id']
     start_date = params['start_date']
     end_date = params['end_date']
     text = params['text']
     rec_type = params['rec_type']
     event_length = params['event_length']
     event_pid = params['event_pid']
     tid = id

     case mode
       when 'inserted'
         event = Event.create :start_date => start_date, :end_date => end_date, :text => text,
                              :rec_type => rec_type, :event_length => event_length, :event_pid => event_pid
         tid = event.id
         if rec_type == 'none'
           mode = 'deleted'
         end

       when 'deleted'
         if rec_type != ''
           Event.where(event_pid: id).destroy_all
         end

         if event_pid != 0 and event_pid != ''
           event = Event.find(id)
           event.rec_type = 'none'
           event.save
         else
           Event.find(id).destroy
         end

       when 'updated'
         if rec_type != ''
           Event.where(event_pid: id).destroy_all
         end
         event = Event.find(id)
         event.start_date = start_date
         event.end_date = end_date
         event.text = text
         event.rec_type = rec_type
         event.event_length = event_length
         event.event_pid = event_pid
         event.save
     end

    render :json => {
          :type => mode,
          :sid => id,
          :tid => tid,
      }
 end
 # private
 #     def user_is_current_user
 #      unless current_user.id == params[:user_id]
 #        flash[:notice] = "You may only view your own events."
 #        redirect_to root_path
 #      end
 #  end
end
