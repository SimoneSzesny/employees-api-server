class EmployeesController < ApplicationController
  def index
    @employees = Employee.all
    render "index.json.jbuilder"
  end

  def create
    @employee = Employee.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      birthdate: params[:birthdate],
      email: params[:email],
      ssn: params[:ssn]
      )
    @employee.save
    redirect_to "/employees/#{@employee.id}"
  end
  
  def show
    @employee = Employee.find_by(id: params[:id])
    render "show.json.jbuilder"
 end

 def update
  @employee = Employee.find_by(id: params[:my_id])
  @employee.first_name = params[:first_name] || @employee.first_name
  @employee.last_name = params[:last_name] || @employee.last_name
  @employee.email = params[:email] || @employee.email
  @employee.birthdate = params[:birthdate] || @employee.birthdate
  @employee.ssn = params[:ssn] || @employee.ssn
  @employee.save
  # redirect_to '/employees/#{@employee.id}'
  render "show.json.jbuilder"
 end
end
