class PhrasesController < ApplicationController
  # Comment out setting of locale to demonstrate leakage
  def english
    I18n.locale = :en
    render json: I18n.t('eat')
  end

  def german
    I18n.locale = :de
    render json: I18n.t('eat')
  end

  def irish
    I18n.locale = :ie
    render json: I18n.t('eat')
  end
end