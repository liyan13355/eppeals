class UsersController < ApplicationController

  if respond_to?(:before_action)
    before_action :redirect_signed_in_users, only: [:create, :new]
    skip_before_action :require_login, only: [:create, :new], raise: false
    skip_before_action :authorize, only: [:create, :new], raise: false
  else
    before_filter :redirect_signed_in_users, only: [:create, :new]
    skip_before_filter :require_login, only: [:create, :new], raise: false
    skip_before_filter :authorize, only: [:create, :new], raise: false
  end

  def new
    @user = User.new
  end

  def create
    @user = user_from_params


    if @user.save 
      sign_in @user
      redirect_back_or url_after_create
    else
      render template: "users/new"
    end
  end

  def show
    @lawyer = User.find(params[:id])
    @articles = Article.where(user_id: @lawyer.id)
  end

  private

  def avoid_sign_in
    warn "[DEPRECATION] Clearance's `avoid_sign_in` before_filter is " +
      "deprecated. Use `redirect_signed_in_users` instead. " +
      "Be sure to update any instances of `skip_before_filter :avoid_sign_in`" +
      " or `skip_before_action :avoid_sign_in` as well"
    redirect_signed_in_users
  end

  def redirect_signed_in_users
    if signed_in?
      redirect_to Clearance.configuration.redirect_url
    end
  end

  def url_after_create
    Clearance.configuration.redirect_url
  end


  def user_params
    params[Clearance.configuration.user_parameter] || Hash.new
  end

  def user_from_params
    # common params
  	first_name = user_params.delete(:first_name)
  	last_name = user_params.delete(:last_name)
    email = user_params.delete(:email)
    birthday = user_params.delete(:birthday)
    industry = user_params.delete(:industry)
    password = user_params.delete(:password)
    role = user_params.delete(:role)
    avatar = user_params.delete(:avatar)

    # lawyer params
    type_of_lawyer = user_params.delete(:type_of_lawyer)
    description = user_params.delete(:description)
    education = user_params.delete(:education)

    Clearance.configuration.user_model.new.tap do |user|
        user.first_name = first_name
        user.last_name = last_name
        user.email = email
        user.birthday = birthday
        user.password = password
        user.role = role
        user.industry = industry
        user.avatar = avatar

      if role == "lawyer"
        user.type_of_lawyer = type_of_lawyer
        user.description = description
        user.education = education
      end
    end
  end

  # def lawyer_from_params
  #   first_name = user_params.delete(:first_name)
  #   last_name = user_params.delete(:last_name)
  #   email = user_params.delete(:email)
  #   birthday = user_params.delete(:birthday)
  #   password = user_params.delete(:password)
  #   type = user_params.delete(:type)
  #   description = user_params.delete(:description)
  #   education = user_params.delete(:education)

  #   Clearance.configuration.user_model.new(user_params).tap do |user|
  #     user.first_name = user_params[:first_name]
  #     user.last_name = last_name
  #     user.email = email
  #     user.birthday = birthday
  #     user.industry = industry
  #     user.password = password




  #   end
  # end

end
