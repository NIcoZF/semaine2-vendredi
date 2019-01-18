require 'watir'


# check if the search is not empty if true puts and abort
  def check_if_user_gave_input

    if ARGV.empty? == true
    puts " Saisir une recherche après le fichier .rb"
    abort.google_search
    else  ARGV

  end
  end

  def google_search
  browser = Watir::Browser.new(:firefox)
  browser.goto 'google.com'
  search_bar = browser.text_field(class: 'gsfi')
  search_bar.set(ARGV.join(" "))
  #méthode rechercher en utilisant la touche enter
  search_bar.send_keys(:enter)
  end

  def run_the_search
  check_if_user_gave_input
  google_search
  end

run_the_search

#méthode du clic
#submit_button = browser.button(type:"submit")
#submit_button.click
# fermeture du browser
