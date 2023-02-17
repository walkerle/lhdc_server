class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get '/appointments' do # Read appointments
    appointments = Appointment.all
    appointments.to_json(include: [:client, :barber, :hairstyle])
  end
  
  get '/appointments/:id' do # Read appointment
    appointments = Appointment.find(params[:id])
    appointments.to_json(include: [:client, :barber, :hairstyle])
  end

  get '/clients' do # Read clients
    clients = Client.all
    clients.to_json
  end

  get '/barbers' do # Read barbers
    barbers = Barber.all
    barbers.to_json
  end

  get '/hairstyles' do # Read hairstyles
    hairstyles = Hairstyle.all
    hairstyles.to_json
  end

  post '/appointments' do # Create appointment
    # binding.pry
    # convert client, barber, and hairstyle to ids -complete

    appointment = Appointment.create(
      client_id: Client.find_by(name: params[:client]).id,
      # get from client table the client id from the new name
      barber_id: Barber.find_by(name: params[:barber]).id,
      hairstyle_id: Hairstyle.find_by(name: params[:hairstyle]).id,
      datetime: params[:datetime]
    )
    appointment.to_json(include: [:client, :barber, :hairstyle]) # post response
  end

  post '/clients' do # Create client
    # binding.pry # use POSTMAN

    client = Client.create(name: params[:client])
    client.to_json # post response
  end

  patch '/appointments/:id' do # Update appointment
    # binding.pry # use POSTMAN
    appointment = Appointment.find(params[:id])
    appointment.update(
      client_id: Client.find_by(name: params[:client]).id,
      barber_id: Barber.find_by(name: params[:barber]).id,
      hairstyle_id: Hairstyle.find_by(name: params[:hairstyle]).id,
      datetime: params[:datetime]
    )
    appointment.to_json(include: [:client, :barber, :hairstyle]) # patch response
  end

  delete '/appointments/:id' do # Delete appointment
    appointment = Appointment.find(params[:id])
    appointment.destroy
    appointment.to_json
  end

end
