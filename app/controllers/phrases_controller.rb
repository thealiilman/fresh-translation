# This controller is used to demonstrate:
# 1. the possibility of locale leakage when we switch locale using I18n.locale=
#
# 2. and the prevention of of locale leakage when we
#    switch locale using I18n.with_locale

# To see the demonstration, having 3 terminals / 3 terminal tabs open,
# each executing a unique endpoint around the same time.
# Personally, these are what I did.
#
# 1. Tab 1 => for i in `seq 50`; do; curl http://localhost:3000/irish ; echo ""; done
# 2. Tab 2 => for i in `seq 50`; do; curl http://localhost:3000/english ; echo ""; done
# 3. Tab 3 => for i in `seq 50`; do; curl http://localhost:3000/german ; echo ""; done


class PhrasesController < ApplicationController
  # Comment out setting of locale to demonstrate leakage
  def english
    I18n.locale = :en
    render json: I18n.t('eat')
  end

  # Comment out the first two lines and uncomment
  # the last three lines of #german and #irish actions
  # to witness the prevention of locale leakage when
  # setting of locale doesn't happen in #english action

  def german
    I18n.locale = :de
    render json: I18n.t('eat')
    # I18n.with_locale(:de) do
    #   render json: I18n.t('eat')
    # end
  end

  def irish
    I18n.locale = :ie
    render json: I18n.t('eat')
    # I18n.with_locale(:ie) do
    #   render json: I18n.t('eat')
    # end
  end
end
