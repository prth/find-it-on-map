class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  	before_action :set_locale

  	def set_locale
		I18n.locale = params[:locale] || I18n.default_locale
		@localeParam = ""
		@defaultLocale = true
		if params[:locale].present?
			if params[:locale] == "en" || params[:locale] == "gu" || params[:locale] == "hi" || params[:locale] == "mr" || params[:locale] == "ta"
				@localeParam = "/"+params[:locale]
				if params[:locale] != "en"
					@SystemLanguage = SystemLanguage.where(locale: params[:locale]).first
					if !@SystemLanguage.nil?
						@defaultLocale = false
						@languageId = @SystemLanguage.id
					end
				end
			end
		end
	end
end
